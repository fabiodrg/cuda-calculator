mainConfig =
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
    maxRegistersPerBlock: 32768
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
    maxRegistersPerBlock: 32768
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
    maxRegistersPerBlock: 65536
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '3.2':
    version: '3.2'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 16
    sharedMemoryPerMultiprocessor: 49152

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    maxRegistersPerBlock: 65536
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
    maxRegistersPerBlock: 65536
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
    maxRegistersPerBlock: 65536
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
    maxRegistersPerBlock: 65536
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
    maxRegistersPerBlock: 32768
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
    maxRegistersPerBlock: 32768
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
    maxRegistersPerBlock: 65536
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
    maxRegistersPerBlock: 65536
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
    maxRegistersPerBlock: 65536
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
    maxRegistersPerBlock: 65536
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '7.5':
    version: '7.5'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 32
    threadsPerMultiprocessor: 1024
    threadBlocksPerMultiprocessor: 16
    sharedMemoryPerMultiprocessor: 65536

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    maxRegistersPerBlock: 65536
    sharedMemoryAllocationUnitSize: 256
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '8.0':
    version: '8.0'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 64
    threadsPerMultiprocessor: 2048
    threadBlocksPerMultiprocessor: 32
    sharedMemoryPerMultiprocessor: 167936

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    maxRegistersPerBlock: 65536
    sharedMemoryAllocationUnitSize: 128
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

  '8.6':
    version: '8.6'
    threadsPerWarp: 32
    warpsPerMultiprocessor: 48
    threadsPerMultiprocessor: 1536
    threadBlocksPerMultiprocessor: 16
    sharedMemoryPerMultiprocessor: 102400

    registerFileSize: 65536
    registerAllocationUnitSize: 256

    allocationGranularity: 'warp'
    maxRegistersPerThread: 255
    maxRegistersPerBlock: 65536
    sharedMemoryAllocationUnitSize: 128
    warpAllocationGranularity: 4
    maxThreadBlockSize: 1024

# Starting with Compute Capability 8.x, CUDA runtime uses 1KB of Shared Memory
cudaRuntimeUsedSharedMemory =
  '11.0': 1024
  '11.1': 1024

ceil = (a, b) -> Math.ceil(a / b) * b

floor = (a, b) -> Math.floor(a / b) * b


window.calculateOccupancy = (input) ->
  config = mainConfig[input.version]

  # number of warps per block
  blockWarps = () ->
    Math.ceil(input.threadsPerBlock / config.threadsPerWarp)

  # number of registers per warp
  registersPerWarp = () ->
    ceil(input.registersPerThread * config.threadsPerWarp, config.registerAllocationUnitSize)

  # number of registers per block
  blockRegisters = () ->
      registersPerWarp() * blockWarps()

  # maximum warps per SM when limited by registers
  warpsPerMultiprocessorLimitedByRegisters = () ->
    floor(config.maxRegistersPerBlock / registersPerWarp(), config.warpAllocationGranularity)

  # starting with Compute Capability 8.x, the CUDA runtime consumes 1KB of shared memory
  # the amount might change depending on the CUDA runtime version in the future
  blockCudaRuntimeSharedMemory = () ->
    if Number.parseFloat(input.version) >= 8
      cudaRuntimeUsedSharedMemory[input.cudaVersion]
    else
      0

  # shared memory per thread block
  blockSharedMemory = () ->
    ceil(
      Number.parseInt(input.sharedMemoryPerBlock) + blockCudaRuntimeSharedMemory(),
      config.sharedMemoryAllocationUnitSize
    )

  threadBlocksPerMultiprocessorLimitedByWarpsOrBlocksPerMultiprocessor = () ->
    Math.min(
      config.threadBlocksPerMultiprocessor, Math.floor(config.warpsPerMultiprocessor / blockWarps())
    )

  threadBlocksPerMultiprocessorLimitedByRegistersPerMultiprocessor = () ->
    if input.registersPerThread > config.maxRegistersPerThread
      0
    else if input.registersPerThread > 0
      Math.floor(warpsPerMultiprocessorLimitedByRegisters() / blockWarps()) *
        Math.floor(config.registerFileSize / config.maxRegistersPerBlock)
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
    blockCudaRuntimeSharedMemory: blockCudaRuntimeSharedMemory()
    blockRegisters: blockRegisters()

    threadBlocksPerMultiprocessorLimitedByWarpsOrBlocksPerMultiprocessor:
      threadBlocksPerMultiprocessorLimitedByWarpsOrBlocksPerMultiprocessor()
    threadBlocksPerMultiprocessorLimitedByRegistersPerMultiprocessor:
      threadBlocksPerMultiprocessorLimitedByRegistersPerMultiprocessor()
    threadBlocksPerMultiprocessorLimitedBySharedMemoryPerMultiprocessor:
      threadBlocksPerMultiprocessorLimitedBySharedMemoryPerMultiprocessor()

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
    for registersPerThread in [0..config.maxRegistersPerThread]
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
