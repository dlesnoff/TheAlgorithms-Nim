## Absolute value

import std/algorithm

func absVal(num: float): float =
  ## Returns the absolute value of a number.
  runnableExamples:
    doAssert absVal(-5.1) == 5.1
    doAssert absVal(-5) == abs_val(5)
    doAssert absVal(0) == 0
  return if num < 0.0: -num else: num

func absVal(num: int): int = (if num < 0: -num else: num)

func absMin(x: seq[int]): int =
  ## Returns the absolute value of the smallest element in a sequence.
  runnableExamples:
    doAssert absMin(@[-1, 2, -3]) == 1
    doAssert absMin(@[0, 5, 1, 11]) == 0
    doAssert absMin(@[3, -10, -2]) == -2
  if x.len == 0:
    raise newException(ValueError, "Cannot find absolute minimum of an empty sequence")
  result = x[0]
  for i in 1 ..< x.len:
    if absVal(x[i]) < absVal(result):
      result = x[i]

func absMax(x: seq[int]): int =
  #[Returns the absolute value of the largest element in a sequence.
  ]#
  runnableExamples:
    doAssert absMax(@[-1, 2, -3]) == 3
    doAssert absMax(@[0, 5, 1, 11]) == 11
    doAssert absMax(@[3, -10, -2]) == 10
  if x.len == 0:
    raise newException(ValueError, "Cannot find absolute maximum of an empty sequence")
  result = x[0]
  for i in 1 ..< x.len:
    if absVal(x[i]) > absVal(result):
      result = x[i]

proc absMaxSort(x: var seq[int]): int =
  #[Returns the largest in absolute value signed element in a sequence.
  ]#
  runnableExamples:
    doAssert absMaxSort(@[-1, 2, -3]) == -3
    doAssert absMaxSort(@[0, 5, 1, 11]) == 11
    doAssert absMaxSort(@[3, -10, -2]) == -10
  if x.len == 0:
    raise newException(ValueError, "Cannot find absolute maximum of an empty sequence")
  result = sort(x, cmp = proc (a, b: int): int = absVal(a) - absVal(b))[0]

proc testAbsVal() =
  doAssert absVal(-5.1) == 5.1
  doAssert absVal(-5) == abs_val(5)
  doAssert absVal(0) == 0

if isMainModule:
  var x = @[1, -2, 3, -4, 5, -6]
  absMaxSort(x)
  echo x
  testAbsVal()
