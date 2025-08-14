import { desc, and, gte, lte, SQL } from "drizzle-orm";
import { App, db, middlewares } from "@duneanalytics/sim-idx";
import {
  tornadoDeposit,
  tornadoWithdrawal,
  uniswapV2Swap,
  uniswapV3Swap,
} from "./db/schema/Listener";

const app = App.create<{ DB_CONNECTION_STRING: string }>();

app.use("*", middlewares.authentication);

function buildWhereClause(
  table: any,
  fromBlock?: string,
  toBlock?: string
): SQL | undefined {
  if (fromBlock && toBlock) {
    return and(
      gte(table.blockNumber, Number(fromBlock)),
      lte(table.blockNumber, Number(toBlock))
    );
  } else if (fromBlock) {
    return gte(table.blockNumber, Number(fromBlock));
  } else if (toBlock) {
    return lte(table.blockNumber, Number(toBlock));
  }
  return undefined;
}

async function getEvents(c: any, table: any) {
  const client = db.client(c);

  const limit = Math.min(parseInt(c.req.query("limit") ?? "50", 10), 500);
  const offset = parseInt(c.req.query("offset") ?? "0", 10);
  const fromBlock = c.req.query("fromBlock");
  const toBlock = c.req.query("toBlock");

  const whereClause = buildWhereClause(table, fromBlock, toBlock);
  if (whereClause) {
    return await client
      .select()
      .from(table)
      .where(whereClause)
      .orderBy(desc(table.blockNumber))
      .limit(limit)
      .offset(offset);
  } else {
    return await client
      .select()
      .from(table)
      .orderBy(desc(table.blockNumber))
      .limit(limit)
      .offset(offset);
  }
}

// Tornado Deposit API
app.get("/tornado/deposits", async (c) => {
  const res = await getEvents(c, tornadoDeposit);
  return Response.json(res);
});

// Tornado Withdraw API
app.get("/tornado/withdraws", async (c) => {
  const res = await getEvents(c, tornadoWithdrawal);
  return Response.json(res);
});

// Uniswap V2 Swaps API
app.get("/uniswap/v2/swaps", async (c) => {
  const res = await getEvents(c, uniswapV2Swap);
  return Response.json(res);
});

// Uniswap V3 Swaps API
app.get("/uniswap/v3/swaps", async (c) => {
  const res = await getEvents(c, uniswapV3Swap);
  return Response.json(res);
});

export default app;
