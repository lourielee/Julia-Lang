#tryout Julia multithreading: make paramsort faster

using Random

JULIA_NUM_THREADS = 2 #not supported todo if/else ARGS, or open shell to set threads
println(Threads.nthreads())
#arr = rand(100000000) #readability: 100 million
