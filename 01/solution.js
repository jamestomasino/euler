#!/usr/bin/env node

var acc = 0
for (let i = 0; i < 1000; ++i) {
  switch (0) {
    case i%3:
    case i%5:
      acc += i
      break
  }
}
console.log(acc)
