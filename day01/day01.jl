measurements = Int64[]
open("input.txt") do f
    for line in eachline(f)
        push!(measurements, parse(Int64,line))
    end
end

inc = 0

# start at 2nd element
for i in 1:1:length(measurements)-1
    if measurements[i+1] > measurements[i]
        global inc += 1
    end
end

println("Total number of increases: $inc")
