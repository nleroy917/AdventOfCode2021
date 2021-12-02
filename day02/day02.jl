directions = []
open("./input.txt") do f
    for line in eachline(f)
        instr = split(line, " ")
        push!(directions, instr)
    end
end


##
# PART A
##
hpos = 0
depth = 0

for dr in directions
	
	if dr[1] == "forward"
		global hpos += parse(Int64, dr[2])
	end
	if dr[1] == "up"
		global depth -= parse(Int64, dr[2])
	end
	if dr[1] == "down"
		global depth += parse(Int64, dr[2])
	end
end

mult = hpos*depth
println("Result: $mult")

##
# PART B
##

hpos = 0
depth = 0
aim = 0

for d in directions
	dir = d[1]
    X = parse(Int64, d[2])
	if dir == "forward"
		global hpos += X
        global depth += aim * X
	end
	if dir == "up"
		global aim -= X
	end
	if dir == "down"
		global aim += X
	end
end

mult = hpos*depth
println("Result: $mult")