#channels/tasks for stuff  
data = ["1", "A", "1"]
arr = push!(findall(x->occursin("1",x), data))

function swap(c::Channel)
    for i=1:length(arr)
        put!(c, arr[i])
    end
end

pipe = Channel(swap);
take!(pipe)
take!(pipe) #async /
