#[
#In a multi-threaded download, this algorithmm could be used to provide
#each worker thread with a block of non-overlapping bytes to download.
]#

func allocationNum(numBytes: int, numPartitions: int): seq[Slice[int]] =
  #[
  #Divide a number of bytes into x non-overlapping partitions.
  ]#
  runnableExamples:
    let numBytes = 100
    let numPartitions = 5
    let allocations = allocationNum(numBytes, numPartitions)
    doAssert allocations == @[
      0 .. 19,
      20 .. 39,
      40 .. 59,
      60 .. 79,
      80 .. 100
    ]
  if numPartitions <= 0:
    raise newException(ValueError, "numPartitions must be > 0")
  if numPartitions > numBytes:
    raise newException(ValueError, "numPartitions must be <= numBytes")
  var
    bytesPerPartition = numBytes div numPartitions
    allocation_list: seq[Slice[int]] = @[]
  for i in 0 ..< numPartitions:
    if i == numPartitions-1:
      allocation_list.add(i*bytesPerPartition .. numBytes)
    else:
      allocation_list.add(i*bytesPerPartition .. (i+1)*bytesPerPartition-1)
  return allocation_list

when isMainModule:
  let numBytes = 100
  let numPartitions = 5
  let allocations = allocationNum(numBytes, numPartitions)
  assert allocations == @[
    0 .. 19,
    20 .. 39,
    40 .. 59,
    60 .. 79,
    80 .. 100
  ]
