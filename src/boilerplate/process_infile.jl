#for various common file formats

function linesToArray(file)
    infile = file
    data = []
    for line in eachline(infile)
        push!(data, line)
    end
    return data
end

function wordsToArray(file)
    infile = file
    data = []
    for line in eachline(infile)
        push!(data, split(line, " "))
    end
    return data
end
