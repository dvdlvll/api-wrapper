# API Wrapper

A barebones application used to practice creating API Wrappers
via Faraday, an HTTP Client Library for Ruby.

# REST API

The REST API to the example app is described below.

## Get list of games

### Request

`Rawg::Client.games`

### Response

```
Request URL: http://127.0.0.1:3000/games
Request Method: GET
Status Code: 304 OK
Remote Address: 127.0.0.1:3000
Referrer Policy: strict-origin-when-cross-origin

{count: 815662, next: "https://api.rawg.io/api/games?key=6cde2e0415a2465cbb627cab59b749f5&page=2",…}
```

## Get list of games released in 2001

### Request

`Rawg::Client.twok1`

### Response

```
Request URL: http://127.0.0.1:3000/2001
Request Method: GET
Status Code: 304 OK
Remote Address: 127.0.0.1:3000
Referrer Policy: strict-origin-when-cross-origin

{count: 1096,…}
```

## Get list of games to be released from October 25, 2022 to October 25, 2023

### Request

`Rawg::Client.upcoming`

### Response

```
Request URL: http://127.0.0.1:3000/upcoming
Request Method: GET
Status Code: 304 OK
Remote Address: 127.0.0.1:3000
Referrer Policy: strict-origin-when-cross-origin

{count: 120,…}
```

## Get list of PC games, ordered by highest ratings

### Request

`Rawg::Client.pc`

### Response

```
Request URL: http://127.0.0.1:3000/pc
Request Method: GET
Status Code: 304 OK
Remote Address: 127.0.0.1:3000
Referrer Policy: strict-origin-when-cross-origin

{count: 493745,…}
```

## Get list of games developed by Electronic Arts, ordered by highest ratings

### Request

`Rawg::Client.ea`

### Response

```
Request URL: http://127.0.0.1:3000/ea
Request Method: GET
Status Code: 304 OK
Remote Address: 127.0.0.1:3000
Referrer Policy: strict-origin-when-cross-origin

{count: 320,…}
```
