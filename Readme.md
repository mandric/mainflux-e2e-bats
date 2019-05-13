# Setup

1. Install [bats-core](https://github.com/bats-core/bats-core#installation) test runner, this provides the `bats` executable.

2. Install [Mainflux via Docker](https://github.com/mainflux/mainflux#install) or use `BASE_URL` to point to an existing installation.

3. Clone this repository and `cd` into it.

# Run tests

Create random user profile and export `TOKEN` env variable:

```
export TOKEN="$(./register)"
```

Then run all tests in the current directory:

```
bats .
```


### Environment Variables

Variable  | Description | Default
------------- | ------------- | ------------ |
BASE_URL | Base URL of the HTTP API | http://localhost
TOKEN  | Authorization token for HTTP API | empty string

Example specifying base URL on command line:

```
BASE_URL=http://localhost:8000 bats .
```

# Register Usage

The register script can be used to create specific account and get an authorization token.  By default the email and password will be randomly generated.

```
$ ./register
eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NTc5MDMwMjksImlhdCI6MTU1Nzg2NzAyOSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJtZUBleGFtcGxlLmNvbSJ9.McLnP2hf676POaLvu5UI1O6b_ZFOiGxDIgJaMwIXmm8
```

Then export token to use in tests:

```
export TOKEN=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJleHAiOjE1NTc5MDMwMjksImlhdCI6MTU1Nzg2NzAyOSwiaXNzIjoibWFpbmZsdXgiLCJzdWIiOiJtZUBleGFtcGxlLmNvbSJ9.McLnP2hf676POaLvu5UI1O6b_ZFOiGxDIgJaMwIXmm8
```

### Environment Variables

Variable  | Description | Default
------------- | ------------- | ------------ |
EMAIL | Email address | [10 random characters]@example.com
PASS | Password | 10 random characters


Example specifying email and password on command line:

```
EMAIL=me@example.com PASS=secret ./register
```