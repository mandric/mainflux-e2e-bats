BASE_URL="${BASE_URL-http://localhost}"
CURL="curl -sSf -H content-type:application/json -H authorization:$TOKEN"

setup() {
  # assert token exists
  test -n "$TOKEN"
}

@test "create thing of type app without a name property" {
  $CURL \
    -d '{"type":"app"}' \
    "$BASE_URL/things"
}

@test "create thing of type app with empty name property" {
  $CURL \
    -d '{"type":"app", "name":""}'\
    "$BASE_URL/things"
}

@test "create thing of type app with a name" {
  $CURL \
    -d '{"type":"app", "name":"My Fav Device"}' \
    "$BASE_URL/things"
}
