# API Wrapper

A barebones application used to practice creating API Wrappers
via Faraday, an HTTP Client Library for Ruby.

# REST API

The REST API to the example app is described below.

## Get list of games

### Request

connect.get("games").body

### Response

```
Request URL: http://127.0.0.1:3000/games
Request Method: GET
Status Code: 304 OK
Remote Address: 127.0.0.1:3000
Referrer Policy: strict-origin-when-cross-origin
```

## Get list of games released in 2001

### Request

connect.get("games", { dates: "2001-01-01,2001-12-31" }).body

### Response

Request URL: http://127.0.0.1:3000/2001
Request Method: GET
Status Code: 304 OK
Remote Address: 127.0.0.1:3000
Referrer Policy: strict-origin-when-cross-origin

## Get list of games to be released from October 25, 2022 to October 25, 2023

### Request

connect.get("games", { dates: "2022-10-25,2023-10-25" }).body

### Response

Request URL: http://127.0.0.1:3000/upcoming
Request Method: GET
Status Code: 304 OK
Remote Address: 127.0.0.1:3000
Referrer Policy: strict-origin-when-cross-origin

## Get list of PC games, ordered by highest ratings

### Request

connect.get("games", { platforms: "4", ordering: "-rating" }).body

### Response

Request URL: http://127.0.0.1:3000/pc
Request Method: GET
Status Code: 304 OK
Remote Address: 127.0.0.1:3000
Referrer Policy: strict-origin-when-cross-origin

## Get list of PC games, ordered by highest ratings

### Request

connect.get("games", { developers: "109", ordering: "-rating" }).body

### Response

Request URL: http://127.0.0.1:3000/ea
Request Method: GET
Status Code: 304 OK
Remote Address: 127.0.0.1:3000
Referrer Policy: strict-origin-when-cross-origin
