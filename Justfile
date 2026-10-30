set shell := ["pwsh", "-NoLogo", "-NoProfile", "-Command"]

default:
  just --list

# Run the Busted Lua suite in the upstream test container (requires Docker).
test:
  docker compose run --rm --no-deps busted-tests

# Start the development runtime on Windows.
run:
  & './runtime/Path{space}of{space}Building-PoE2.exe'
