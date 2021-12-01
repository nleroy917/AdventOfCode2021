using DSP

# extract measurements
measurements = Int64[]
open("input.txt") do f
    for line in eachline(f)
        push!(measurements, parse(Int64,line))
    end
end

# function to count increments
function count_increments(arr ::Array{Int64}) ::Int64
    inc = 0
    for i in 1:1:length(arr)-1
        if arr[i+1] > arr[i]
            inc += 1
        end
    end

    return inc
end

## #
## Part A
## #
cnt = count_increments(measurements)
println("Total number of increases: $cnt")

## #
## Part B
## #
# convolve to get moving sum
WINDOW = [1, 1, 1]
msums = conv(measurements, WINDOW)

# cut off first and last 2 from convolution
# and count the increases
msums = msums[3:length(msums)-2]
cnt = count_increments(msums)
println("Total number of increases: $cnt")
