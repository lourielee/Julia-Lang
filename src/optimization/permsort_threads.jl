#TODO tryout Julia multithreading: make (maybe paramsort) or something faster

using Random

;(`JULIA_NUM_THREADS = 2`) #not supported todo if/else ARGS, or
                                #***open shell to set threads**** <-figure this out

println(Threads.nthreads())
