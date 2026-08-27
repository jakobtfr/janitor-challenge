import { McpServer } from '@modelcontextprotocol/sdk/server/mcp.js';
import { StdioServerTransport } from '@modelcontextprotocol/sdk/server/stdio.js';

const server = new McpServer({
  name: 'janitor-challenge',
  version: '0.1.0',
});

server.registerTool(
  'say_hello',
  { description: 'Return a minimal response to confirm the server is connected.' },
  async () => ({ content: [{ type: 'text', text: 'Hello, world!' }] }),
);

await server.connect(new StdioServerTransport());
