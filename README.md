# Learning Week 2017: Kata

## Setup

```sh
git clone git@github.com:renuo/learningweek-2017-kata.git
cd learningweek-2017-kata
bundle install
```

## Run tests

```sh
rspec
```

## Challenge

Implement the method `SubstringPuzzle::solvable?`, which tests whether a string can be built by concatenating
strings from a list of substrings. The substrings may be used multiple times and not all substrings have to be used.

### Arguments
* `string`: The string to build
* `substring`: An array of non-empty strings


### Result
* `true` if `string` can be built by concatenating strings from `substring`, `false` otherwise.


### Examples

```rb
SubstringPuzzle::solvable?('Hello, world!', ['l', 'He', 'o, wor', 'd!']) #true
SubstringPuzzle::solvable?('this is a string', ['these ', 'substrings ', 'do ', 'not ', 'match']) #false
```

## Credits

Challenge taken from https://codegolf.stackexchange.com/questions/117872/test-if-a-string-can-be-made-with-substrings
