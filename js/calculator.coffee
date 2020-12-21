mainConfig =
  '1.0':
    version: '1.0'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 24
    threadsPerMultiprocessor: 768
    threadBlocksPerMultiprocessor: 8
    sharedMemoryPerMultiprocessor: 16384

    registerFileSize: 8192
    registerAllocationUnitSize: 256

    allocationGranularity: 'block'
    maxRegistersPerThread: 124
    sharedMemoryAllocationUnitSize: 512
    warpAllocationGranularity: 2
    maxThreadBlockSize: 512

  '1.1':
    version: '1.1'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 24
    threadsPerMultiprocessor: 768
    threadBlocksPerMultiprocessor: 8
    sharedMemoryPerMultiprocessor: 16384

    registerFileSize: 8192
    registerAllocationUnitSize: 256

    allocationGranularity: 'block'
    maxRegistersPerThread: 124
    sharedMemoryAllocationUnitSize: 512
    warpAllocationGranularity: 2
    maxThreadBlockSize: 512

  '1.2':
    version: '1.2'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 32
    threadsPerMultiprocessor: 1024
    threadBlocksPerMultiprocessor: 8
    sharedMemoryPerMultiprocessor: 16384

    registerFileSize: 16384
    registerAllocationUnitSize: 512

    allocationGranularity: 'block'
    maxRegistersPerThread: 124
    sharedMemoryAllocationUnitSize: 512
    warpAllocationGranularity: 2
    maxThreadBlockSize: 512

  '1.3':
    version: '1.3'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 32
    threadsPerMultiprocessor: 1024
    threadBlocksPerMultiprocessor: 8
    sharedMemoryPerMultiprocessor: 16384

    registerFileSize: 16384
    registerAllocationUnitSize: 512

    allocationGranularity: 'block'
    maxRegistersPerThread: 124
    sharedMemoryAllocationUnitSize: 512
    warpAllocationGranularity: 2
    maxThreadBlockSize: 512

  '2.0':
    version: '2.0'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 48
    threadsPerMultiprocessor: 1536
    threadBlocksPerMultiprocessor: 8
    sharedMemoryPerMultiprocessor: 49152

    registerFileSize: 32768
    registerAllocationUnitSize: 64

    allocationGranularity: 'warp'
    maxRegistersPerThread: 63
    sharedMemoryAllocationUnitSize: 128
    warpAllocationGranularity: 2
    maxThreadBlockSize: 1024

  '2.1':
    version: '2.1'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 48
    threadsPerMultiprocessor: 1536
    threadBlocksPerMultiprocessor: 8
    sharedMemoryPerMultiprocessor: 49152

    registerFileSize: 32768
    registerAllocationUnitSize: 64

    allocationGranularity: 'warp'
    maxRegistersPerThread: 63
    sharedMemoryAllocationUnitSize: 128
    warpAllocationGranularity: 2
    maxThreadBlockSize: 1024

  '3.0':
    version: '3.0'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 16
    sharedMemoryPerMultiprocessor: 49152

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 63
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '3.5':
    version: '3.5'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 16
    sharedMemoryPerMultiprocessor: 49152

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '3.7':
    version: '3.7'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 16
    sharedMemoryPerMultiprocessor: 114688

    registerFileSize: 131072
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '5.0':
    version: '5.0'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 32
    sharedMemoryPerMultiprocessor: 65536

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '5.2':
    version: '5.2'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 32
    sharedMemoryPerMultiprocessor: 98304

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '5.3':
    version: '5.3'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 32
    sharedMemoryPerMultiprocessor: 65536

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '6.0':
    version: '6.0'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 32
    sharedMemoryPerMultiprocessor: 65536

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 2
    maxThreadBlockSize: 1024

  '6.1':
    version: '6.1'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 32
    sharedMemoryPerMultiprocessor: 98304

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '6.2':
    version: '6.2'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 32
    sharedMemoryPerMultiprocessor: 65536

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '7.0':
    version: '7.0'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 32
    sharedMemoryPerMultiprocessor: 98304

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024


ceil = (a, b) -> Math.ceil(a / b) * b

floor = (a, b) -> Math.floor(a / b) * b


window.calculateOccupancy = (input) ->
  config = mainConfig[input.version]

  blockWarps = () ->
    Math.ceil(input.threadsPerBlock / config.threadsPerWarp)

  blockRegisters = () ->
    if config.allocationGranularity == 'block'
      ceil(ceil(blockWarps(), config.warpAllocationGranularity) * input.registersPerThread * config.threadsPerWarp, config.registerAllocationUnitSize)
    else
      # The correct value is given, xls value is commented (no of warps per block).
      ceil(input.registersPerThread * config.threadsPerWarp, config.registerAllocationUnitSize) * blockWarps()

  multiprocessorRegisters = () ->
    if config.allocationGranularity == 'block'
      config.registerFileSize
    else
      # The correct value is given, xls value is commented (no of warps per Multiprocessor)
      floor(config.registerFileSize / ceil(input.registersPerThread * config.threadsPerWarp, config.registerAllocationUnitSize), config.warpAllocationGranularity) * ceil(input.registersPerThread * config.threadsPerWarp, config.registerAllocationUnitSize)

  blockSharedMemory = () ->
    ceil(input.sharedMemoryPerBlock, config.sharedMemoryAllocationUnitSize)

  threadBlocksPerMultiprocessorLimitedByWarpsOrBlocksPerMultiprocessor = () ->
    Math.min(config.threadBlocksPerMultiprocessor, Math.floor(config.warpsPerMultiprocessor / blockWarps()))

  threadBlocksPerMultiprocessorLimitedByRegistersPerMultiprocessor = () ->
    if input.registersPerThread > config.maxRegistersPerThread
      0
    else if input.registersPerThread > 0
      Math.floor(multiprocessorRegisters() / blockRegisters())
    else
      config.threadBlocksPerMultiprocessor

  threadBlocksPerMultiprocessorLimitedBySharedMemoryPerMultiprocessor = () ->
    if input.sharedMemoryPerBlock > 0
      Math.floor(config.sharedMemoryPerMultiprocessor / blockSharedMemory())
    else
      config.threadBlocksPerMultiprocessor

  activeThreadsPerMultiprocessor = () ->
    input.threadsPerBlock * activeThreadBlocksPerMultiprocessor()

  activeWarpsPerMultiprocessor = () ->
    activeThreadBlocksPerMultiprocessor() * blockWarps()

  activeThreadBlocksPerMultiprocessor = () ->
    Math.min(
      threadBlocksPerMultiprocessorLimitedByWarpsOrBlocksPerMultiprocessor(),
      threadBlocksPerMultiprocessorLimitedByRegistersPerMultiprocessor(),
      threadBlocksPerMultiprocessorLimitedBySharedMemoryPerMultiprocessor()
    )

  occupancyOfMultiprocessor = () ->
    activeWarpsPerMultiprocessor() / config.warpsPerMultiprocessor

  output =
    activeThreadsPerMultiprocessor: activeThreadsPerMultiprocessor()
    activeWarpsPerMultiprocessor: activeWarpsPerMultiprocessor()
    activeThreadBlocksPerMultiprocessor: activeThreadBlocksPerMultiprocessor()
    occupancyOfMultiprocessor: occupancyOfMultiprocessor()

    blockWarps: blockWarps()
    blockSharedMemory: blockSharedMemory()
    blockRegisters: blockRegisters()

    threadBlocksPerMultiprocessorLimitedByWarpsOrBlocksPerMultiprocessor: threadBlocksPerMultiprocessorLimitedByWarpsOrBlocksPerMultiprocessor()
    threadBlocksPerMultiprocessorLimitedByRegistersPerMultiprocessor: threadBlocksPerMultiprocessorLimitedByRegistersPerMultiprocessor()
    threadBlocksPerMultiprocessorLimitedBySharedMemoryPerMultiprocessor: threadBlocksPerMultiprocessorLimitedBySharedMemoryPerMultiprocessor()

  return Object.assign(output, config)

window.computeGraphsValues = (input) ->
  config = mainConfig[input.version]

  graphWarpOccupancyOfThreadsPerBlock = () ->
    current =
      key: input.threadsPerBlock
      value: window.calculateOccupancy(input).activeWarpsPerMultiprocessor

    inp = Object.assign({}, input)  # Shallow copy.
    r = []
    for threadsPerBlock in [32..config.maxThreadBlockSize] by 32
      inp.threadsPerBlock = threadsPerBlock

      r.push({
        key: threadsPerBlock
        value: window.calculateOccupancy(inp).activeWarpsPerMultiprocessor
      })

    return {
      xLabel: "Threads per block"
      data: r
      current: current
    }

  graphWarpOccupancyOfRegistersPerThread = () ->
    current =
      key: input.registersPerThread
      value: window.calculateOccupancy(input).activeWarpsPerMultiprocessor

    inp = Object.assign({}, input)  # Shallow copy.
    r = []
    for registersPerThread in [1..config.maxRegistersPerThread]
      inp.registersPerThread = registersPerThread

      r.push({
        key: registersPerThread
        value: window.calculateOccupancy(inp).activeWarpsPerMultiprocessor
      })

    return {
      xLabel: "Registers per thread"
      data: r
      current: current
    }

  graphWarpOccupancyOfSharedMemoryPerBlock = () ->
    current =
      key: input.sharedMemoryPerBlock
      value: window.calculateOccupancy(input).activeWarpsPerMultiprocessor

    inp = Object.assign({}, input)  # Shallow copy.
    r = []
    for sharedMemoryPerBlock in [0..config.sharedMemoryPerMultiprocessor] by 512
      inp.sharedMemoryPerBlock = sharedMemoryPerBlock

      r.push({
        key: sharedMemoryPerBlock
        value: window.calculateOccupancy(inp).activeWarpsPerMultiprocessor
      })

    return {
      xLabel: "Shared memory per block"
      data: r
      current: current
    }

  return {
    graphWarpOccupancyOfThreadsPerBlock: graphWarpOccupancyOfThreadsPerBlock()
    graphWarpOccupancyOfRegistersPerThread: graphWarpOccupancyOfRegistersPerThread()
    graphWarpOccupancyOfSharedMemoryPerBlock: graphWarpOccupancyOfSharedMemoryPerBlock()
  }
