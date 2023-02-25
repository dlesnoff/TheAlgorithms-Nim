## Illustrate how to add the integer without arithmetic operation

import std/strformat

func add(first: int, second: int): int =
  ## Implementation of addition of integer

  runnableExamples:
    doAssert add(3, 5) == 8
    doAssert add(13, 5) == 18
    doAssert add(-7, 2) == -5
    doAssert add(-321, 0) == -321
  var first = first
  var second = second
  while second != 0:
    var c = first and second
    first = first xor second
    second = c shl 1
  return first

if isMainModule:
  var
    a = 5
    b = 6
  echo fmt"The sum of {a} and {b} is {add(a,b)}"
