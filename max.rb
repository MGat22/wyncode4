def max_refactor (*num)
	num = num.sort
	return num.last
end

def test_max_refactor
	p max_refactor(5, 6, 10, 1, 9, 56, 98, 74, 68)
end

test_max_refactor