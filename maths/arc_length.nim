import std/math

func arcLength(radius: float, angle: float): float =
  return 2 * PI * radius * (angle / 360)

when isMainModule:
  echo arcLength(5, 45)
  echo arcLength(15, 120)
  echo arcLength(10, 90)
