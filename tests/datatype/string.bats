#!/usr/bin/env bats

source bashlet datatype/string

@test "generate random string" {
  result="$(bash$$ string generate_random 32)"
  expected="[[:print:]]{32}"
  [[ $result =~ $expected ]]
}
