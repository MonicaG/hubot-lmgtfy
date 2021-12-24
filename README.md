# hubot-lmgtfy

[![Build Status](https://github.com/MonicaG/hubot-lmgtfy/actions/workflows/test.yml/badge.svg)](https://github.com/MonicaG/hubot-lmgtfy/actions/workflows/test.yml)

A hubot script that replies with a link to [lmgtfy](http://lmgtfy.com/) (let me google that for you)  

See [`src/lmgtfy.js`](src/lmgtfy.js) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-lmgtfy --save`

Then add **hubot-lmgtfy** to your `external-scripts.json`:

```json
[
  "hubot-lmgtfy"
]
```

## Sample Interaction

```
user1>> hubot lmgtfy what is 2+2?
hubot>> http://lmgtfy.com/?q=what%20is%202%2B2%3F
```

## Contributing

Pull requests are welcome! Please see [the CONTRIBUTING file](CONTRIBUTING.md) for details.
