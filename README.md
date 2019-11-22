# Project Euler


To run tests for **Elixir** implementation: 
`cd elixir` 
`elixir -r problem_#.exs test/problem_#_test.exs`

#### example
If you need to test `problem_3`
1. Make sure you are in `elixir` folder (`cd elixir`)
2. Run `elixir -r problem_3.exs test/problem_3_test.exs`
3. You'll get back something like this:
```
❯ elixir -r problem_3.exs test/problem_3_test.exs
1. with case statement: 6857
0.028 ms
2. with multiple clauses: 6857
0.055 ms
..

Finished in 0.03 seconds (0.03s on load, 0.00s on tests)
2 tests, 0 failures
```


To run tests for **JavaScript** implementation: 
`cd javascript` 
`yarn test` (make sure Jest is installed by `jest init`)

#### example
If you need to test `problem_3.test.js`
1. Make sure you are in `javascript` folder (`cd javascript`)
2. Run `yarn test`
3. You'll get back something like this:
```
❯ yarn test
yarn run v1.12.3
$ jest
 PASS  ./problem_3.test.js
  prime factor testing
    ✓ success case to prime factor for 13195 (2ms)
    ✓ success case to prime factor 600851475143 (2ms)
    ✓ success case to prime factor 1000
    ✓ fail case if no argument provided
    ✓ fail case if an argument is zero (1ms)

  console.time problem_3.test.js:18
    1st solution: 5ms

Test Suites: 1 passed, 1 total
Tests:       5 passed, 5 total
Snapshots:   0 total
Time:        0.629s, estimated 1s
Ran all test suites.
Done in 1.08s.
```

