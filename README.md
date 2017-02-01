# hubot-thankfulness [![Build Status](https://img.shields.io/travis/catops/hubot-thankfulness.svg?maxAge=2592000&style=flat-square)](https://travis-ci.org/catops/hubot-thankfulness) [![npm](https://img.shields.io/npm/v/hubot-thankfulness.svg?maxAge=2592000&style=flat-square)](https://www.npmjs.com/package/hubot-thankfulness)

:cat: A Hubot script that listens for thanks yous

See [`src/thankfulness.coffee`](src/thankfulness.coffee) for full documentation.

## Installation

In hubot project repo, run:

`npm install hubot-thankfulness --save`

Then add **hubot-thankfulness** to your `external-scripts.json`:

```json
["hubot-thankfulness"]
```

## Sample Interaction

```
user1>> Thanks @user2 for all of your help!
````

Direct message from @hubot to @user1:

```
hubot>> To thank @user2, visit this URL: www.thanks.com?email=user1@domain.com&draft_thanks=for+all+of+your+help!
```

(Assuming HUBOT_THANKS_URL has been set to www.thanks.com.)

## Contributing

Please read our general [contributing guidelines](CONTRIBUTING.md).

## Open source licensing info
1. [TERMS](TERMS.md)
2. [LICENSE](LICENSE)
3. [CFPB Source Code Policy](https://github.com/cfpb/source-code-policy/)
