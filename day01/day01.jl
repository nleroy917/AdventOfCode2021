measurements = Int64[]
open("input.txt") do f
    for line in eachline(f)
        push!(measurements, parse(Int64,line))
    end
end

## #
## Part A
## #
inc = 0

for i in 1:1:length(measurements)-1
    if measurements[i+1] > measurements[i]
        global inc += 1
    end
end
println("Total number of increases: $inc")

## #
## Part B
## #
inc = 0

for i in 1:1:length(measurements)-3
    win1 = measurements[i] + measurements[i+1] + measurements[i+2]
    win2 = measurements[i+1] + measurements[i+2] + measurements[i+3]
    if win2 > win1
        global inc += 1
    end
end
println("Total number of increases: $inc")
