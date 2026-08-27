from mcp.server.fastmcp import FastMCP

server = FastMCP("incident-analysis")


@server.tool(name="say_hello")
def say_hello() -> str:
    """Return a minimal response to confirm the server is connected."""
    return "Hello, world!"


if __name__ == "__main__":
    server.run(transport="stdio")
