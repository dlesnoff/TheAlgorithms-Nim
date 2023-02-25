func aliquotSum(inputNumber: int): int =
  ## Returns the sum of all the divisors of the input inputNumber
  ## excluding the inputNumber itself.
  ## Example: aliquotSum(12) = 1 + 2 + 3 + 4 + 6 = 16
  runnableExamples:
    doAssert aliquotSum(12) == 16
    doAssert aliquotSum(1) == 0
    doAssert aliquotSum(100) == 217
  # doAssert typeof(inputNumber) == int
  if inputNumber <= 0:
    raise newException(ValueError, "Input number must be strictly positive")
  result = 0
  for divisor in 1 .. (inputNumber div 2) :
    if inputNumber mod divisor == 0:
      result += divisor

func testAliquotSum() =
  ## Tests the aliquotSum function
  assert aliquotSum(12) == 16
  assert aliquotSum(1) == 0
  assert aliquotSum(100) == 117

if isMainModule:
  echo aliquotSum(12)
  echo aliquotSum(1)
  echo aliquotSum(100)
  testAliquotSum()
