# runes-power

Win the power rune

https://runes.at/

## Install

```
npm i
```

Depends on Foundry too: https://book.getfoundry.sh/reference/

## Start

```
npm start
```

## How it works

Rune of Power is awarded to the one who can find a number that hashes to a higher value than the previous owner. The hash also includes the sender's address and the previous number. Those have been manually put into src/Contract.t.sol.

Instead of using a big for loop I thought it might be faster or interesting to test the limits of the foundry fuzzing tests. The test file will return false when a larger number result is found from the hashing.
