[[1, 2], [3, 4]].inject[()] do |result, element|
	
array = result.flatten
which will take [[1, 2[[
and flatten it out to [1, 2]
then the process starts over again
result = [1, 2]
element = [3, 4]
[1, 2].push([3, 4])
result = [1, 2, [3, 4]]
[[1, 2], [3, 4]].flatten
result = [1, 2, 3, 4]
your done!
# First time through loop, result = empty array []
# the empty array is passed to inject([])
# element = first element in array, in this case [1,2]
[[1, 2], [3, 4]].inject([]) do |result,element|
result.push(element)
array = result.flatten
p array
end

# EXPLAINATION

# First time through the array it goes like this
# result = []
# element = [1,2]

# [].push([1,2])
# array = [[1,2]].flatten
# array = [1,2]

# Second time
# [1,2].push[[3,4]]
# array = [1,2, [3,4]].flatten
# array = [1,2,3,4] FINAL ARRAY!!!