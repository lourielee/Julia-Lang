function linesToArray(file)
    infile = file
    data = []
    for line in eachline(infile)
        push!(data, line)
    end
    return data
end

#removes \n and spaces
function wordsToArray(file)
    infile = file
    data = readchomp(infile)
    data = replace(data, "\n" => " ")
    return split(data, " ")
end

#removes new lines
function tokensToArray(file)
    infile = file
    data = readchomp(infile)
    data = replace(data, "\n" => " ")
    return split(data, "")
end

#remove all white space
function tokens_strip_toArray(file)
    infile = file
    data = readchomp(infile)
    data = replace(data, "\n" => " ")
    data = replace(data, " " => "")
    return split(data, "")
end
