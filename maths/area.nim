import std/math

func surfaceAreaCube(sideLength: float): float =
  ## Calculate the surface area of a cube
  if sideLength < 0:
    raise newException(ValueError, "surfaceAreaCube only accepts non-negative values")
  return 6 * sideLength * sideLength

func surfaceAreaCuboid(length: float, breadth: float, height: float): float =
  ## Calculate the surface area of a cuboid
  if length < 0 or breadth < 0 or height < 0:
    raise newException(ValueError, "surfaceAreaCuboid only accepts non-negative values")
  return 2 * ((length * breadth) + (breadth * height) + (length * height))

func surfaceAreaHemisphere(radius: float): float =
  return 3 * PI * radius * radius

func surfaceAreaCone(radius: float, height: float): float =
  runnableExamples:
    doAssert surfaceAreaCone(10, 24) == 1130.9733552923256
  return PI * radius * (radius + sqrt(height^2 + radius^2))

when isMainModule:
  echo surfaceAreaCone(10, 24)
