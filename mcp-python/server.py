from mcp.server.fastmcp import FastMCP

server = FastMCP("incident-analysis")


@server.tool(name="say_hello")
def say_hello(name: str) -> str:
    """Return a personalized response to confirm the server is connected."""
    return f"Hello, {name}!"


if __name__ == "__main__":
    server.run(transport="stdio")
