import { MemorySyncClient } from "memorysync-sdk";

const client = new MemorySyncClient({
  apiKey: process.env.MEMORYSYNC_KEY!,
  baseUrl: process.env.MEMORYSYNC_BASE_URL ?? "https://api.memorysync.io",
  projectId: process.env.MEMORYSYNC_PROJECT_ID!,
  endUserId: "starter-user",
});

const memory = await client.add({ text: "The user prefers concise responses.", source: "starter" });
const result = await client.query({ query: "How should I respond to this user?", k: 5 });
console.log({ memory, result });
