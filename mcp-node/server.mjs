import { McpServer } from '@modelcontextprotocol/sdk/server/mcp.js';
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js';
import { z } from 'zod';

const server = new McpServer({
  name: 'janitor-challenge',
  version: '0.1.0',
});

server.registerTool(
  'say_hello',
  {
    description: 'Return a personalized response to confirm the server is connected.',
    inputSchema: { name: z.string().describe('Name to greet') },
  },
  async ({ name }) => ({ content: [{ type: 'text', text: `Hello, ${name}!` }] }),
);

await server.connect(new StdioServerTransport());
