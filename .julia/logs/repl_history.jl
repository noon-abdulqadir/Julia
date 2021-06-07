# time: 2020-04-29 02:30:11 CEST
# mode: julia
	x = 2
# time: 2020-04-29 02:30:21 CEST
# mode: julia
	type(x)
# time: 2020-04-29 02:30:26 CEST
# mode: julia
	typeof(x)
# time: 2020-04-29 02:30:32 CEST
# mode: julia
	x="ok"
# time: 2020-04-29 02:30:35 CEST
# mode: julia
	typeof(x)
# time: 2020-04-29 02:31:09 CEST
# mode: julia
	pi
# time: 2020-04-29 02:31:36 CEST
# mode: julia
	sqrt(49)
# time: 2020-04-29 02:32:59 CEST
# mode: julia
	x = 5.4
# time: 2020-04-29 02:33:08 CEST
# mode: julia
	typeof(x)
# time: 2020-04-29 02:35:55 CEST
# mode: julia
	which julia
# time: 2020-04-29 02:36:04 CEST
# mode: julia
	julia --version
# time: 2020-04-29 02:41:10 CEST
# mode: julia
	using Pkg
# time: 2020-04-29 02:41:20 CEST
# mode: julia
	Pkg.add("IJulia")
# time: 2020-04-30 01:57:18 CEST
# mode: julia
	10
# time: 2020-04-30 01:57:21 CEST
# mode: julia
	0
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	""" Multiline quotes
	possible in Julis"""
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	# Imports keyword: "using"
	using Printf
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	using Statistics
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	# Strings, ints and floats
	s1 = "Just some words"
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println(length(s))
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println(s1[1:7]) # indexing starts at 1
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println(s1[end])
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println(s1[end-1])
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	s2 = string(s1," ","More words")
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println(s2)
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println(s1*s2)
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	i3 = 2
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	i4 = 3
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println("$i3 + $i4 = $(i3 + i4)")
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println(findfirst(isequal('i'), "Win")) # Enclose search string in single quotes
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println(findfirst(isequal("i"), "Win")) # Double quotes gives "nothing" back
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println(findfirst("i", "Win"))
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	println(occursin("in", "Win")) # Find substrings
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	# Conditionals
	age = 12
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	if age >= 5 && age <= 6
	    println("You are in kindergarden.")
	elseif age >= 7 && age <= 13
	    println("You are in middle-school.")
	elseif age >= 14 && age <= 18
	    println("You are in high-school.")
	else
	    println("Stay Home.")
	end
# time: 2020-04-30 02:01:24 CEST
# mode: julia
	# space + "?" is called a ternary operator, standing in for "if" in one-line if statements and else with space + ":"
	@printf("true || false = %s\n", true || false ? "true" : "false") # true and flase and small case
# time: 2020-04-30 02:01:25 CEST
# mode: julia
	@printf("!true = %s\n", !true ? "true" : "false")
# time: 2020-04-30 02:01:25 CEST
# mode: julia
	#Looping
	i = 1
# time: 2020-04-30 02:01:25 CEST
# mode: julia
	while i<20
	    if i%2 == 0
	        println(i)
	        global i+=1
	        continue
	    end
	    global i+=1
	    if i >= 10
	        break
	    end
	end
# time: 2020-04-30 02:01:25 CEST
# mode: julia
	for i = 1:5
	    println(i)
	end
# time: 2020-04-30 02:01:25 CEST
# mode: julia
	for i in [2,4,6]
	    println(i)
	end
# time: 2020-04-30 02:01:25 CEST
# mode: julia
	for i = 1:5, j = 2:2:10 # second 2 is the step value
	    println((i,j))
	end
# time: 2020-04-30 02:01:25 CEST
# mode: julia
	# Arrays (similar to lists in python)
	a = [1, 3.14, "Hello"]
# time: 2020-04-30 02:01:25 CEST
# mode: julia
	a1 = zeros(Int64, 2, 2) # creates a 2x2 array of zeros
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	a2 = Array{Int64}(undef, 5) # an array with undefined values with 5 spaces
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	a3 = Float64[]
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	a4 = [2,4,6,6]
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println(a4[1])
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println(5 in a4)
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println(findall(isequal(6),a4))
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	f(a) = (a >= 3) ? true : false # generic function
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println("Funtion result: ",f(5))
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println("Funtion result with map: ",map(f,a4))
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println(findall(f,a4))
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println(count(f,a4))
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println("Size: ",size(a4))
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println("Length: ",length(a4))
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println("Sum: ",sum(a4))
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	# Manipulating an array
	
	push!(a4,36) # add value to array
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	println("Adding values: ",a4)
# time: 2020-04-30 02:01:26 CEST
# mode: julia
	splice!(a4,2:1,[8,9]) # put values at index 2 without removing the value at index 2
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	println("Inspert at index without removing values: ",a4)
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	a4 = [2,4,6,6]
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	splice!(a4,2,[8,9]) # put values at index 2 and removing the value at index 2
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	println("Insert at index with removing values: ",a4)
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	splice!(a4,2:3) # remove values at index 2 and 3
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	println(a4)
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	println("Maximum: ",maximum(a4))
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	println("Minimum: ",minimum(a4))
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	println(a4 *2)
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	# Storing functions in variables
	a5 = [sin, cos, tan]
# time: 2020-04-30 02:01:27 CEST
# mode: julia
	for n in a5
	    println(n(0))
	end
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	# Multideminsional Arrays
	a6 = [1 2 3 ; 4 5 6]
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(a6)
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	for n = 1:2, m = 1:3
	    @printf("%d ", a6[n,m])
	end
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println()
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(a6[:,2]) # get every row in the second column
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(a6[2,:]) # get every column in the second row
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	a7 = collect(1:5) # create new array using ranges
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(a7)
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	a8 = collect(2:2:10) # create new array using step in range
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(a8)
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	a9 = collect(4:-1:1) # create new array using reverse step in range
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(a9)
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	for n in a9 println(n) end # different way to make one-line for loop
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	# Array comprehension with comprehension
	a10 = [n^2 for n in 1:5]
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(a10)
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	a11 = [n * m for n in 1:5, m in 1:5] # Multideminsional array
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(a11)
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	a12 = rand(0:9, 5, 5) # 5x5 random array of values between 0 and 9
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(a12)
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	for n = 1:5
	    for m = 1:5
	        println(a12[n,m])
	    end
	    println()
	end
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	# Tuples
	t1 = (1,2,3,4)
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(t1)
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	println(t1[1])
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	for i in t1
	    println(i)
	end
# time: 2020-04-30 02:01:28 CEST
# mode: julia
	# Multideminsional Tuples
	t2 = ((1,2),(3,4))
# time: 2020-04-30 02:01:29 CEST
# mode: julia
	println(t2[1][1])
# time: 2020-04-30 02:01:29 CEST
# mode: julia
	# Named Tuples
	t3 = (sue = ("Sue", 100), paul = ("Paul", 23))
# time: 2020-04-30 02:01:29 CEST
# mode: julia
	println(t3.sue)
# time: 2020-04-30 02:01:29 CEST
# mode: julia
	# Dictionaries
	d1 = Dict("pi"=>3.14, "e"=>2.718)
# time: 2020-04-30 02:01:29 CEST
# mode: julia
	println(d1["pi"])
# time: 2020-04-30 02:01:29 CEST
# mode: julia
	d1["golden"] = 1.618
# time: 2020-04-30 02:01:30 CEST
# mode: julia
	delete!(d1,"pi")
# time: 2020-04-30 02:01:30 CEST
# mode: julia
	println(haskey(d1, "pi"))
# time: 2020-04-30 02:01:30 CEST
# mode: julia
	println(in("pi"=>3.14))
# time: 2020-04-30 02:01:30 CEST
# mode: julia
	println(keys(d1))
# time: 2020-04-30 02:01:30 CEST
# mode: julia
	println(values(d1))
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	for kv in d1
	    println(kv)
	end
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	for (key,value) in d1
	    println(key,": ",value)
	end
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	# Sets
	st1 = Set(["Jim","Pam","Jim"])
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	println(st1)
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	push!(st1,"Michael")
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	println(in("Dwight",st1))
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	st2 = Set(["Stanley", "Kevin"])
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	println(union(st1,st2))
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	println(intersect(st1,st2))
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	println(setdiff(st1,st2))
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	# Functions
	getSum(x,y) = x+y
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	x,y = 1,2
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	@printf("%d + %d = %d\n", x,y,getSum(x,y))
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	function canIVote(age=16)
	    if 90 >= age >=18
	        println("Can Vote.")
	    else
	        println("Can't Vote.")
	    end
	end
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	canIVote(99)
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	v1 = 5
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	function changeV1()
	    global v1 = 10 # global keyword to access variable outside function
	end
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	changeV1()
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	println(v1)
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	function getSum2(args...)
	    sum = 0
	    for a in args
	        sum += a
	    end
	    println(sum)
	end
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	getSum2(1,2,3,4,5)
# time: 2020-04-30 02:01:31 CEST
# mode: julia
	function next2(val)
	    return(val+1,val+2)
	end
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	println(next2(4))
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	function makeMultiplier(num) # return a function
	    return function(x) return x*num end
	end
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	mult3 = makeMultiplier(3)
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	println(mult3(6))
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	function getSum3(num1::Number, num2::Number)
	    return num1+num2
	end
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	function getSum3(num1::String, num2::String)
	    return parse(Int64, num1) + parse(Int64, num2)
	end
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	println("5 + 4 = ",getSum3(5,4))
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	println("5 + 4 = ",getSum3("5","4"))
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	# Anonymous functions used inline
	v2 = map(x -> x*x, [1,2,3])
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	println(v2)
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	v3 = map((x,y) -> x+y, [1,2],[3,4])
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	println(v3)
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	v4 = reduce(+, 1:100)# reduce uses a function multiple times to get to one result
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	println(v4)
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	sentence = "This is a string"
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	sArray = split(sentence) # converts string to array
# time: 2020-04-30 02:01:32 CEST
# mode: julia
	print(sArray)
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	longest = reduce((x,y) -> length(x) > length(y) ? x : y, sArray)
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	println(longest)
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	a13 = [1,2,3]
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	println(a13.*3) # dot operator
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	# Enumerator types to create types (like python classes)
	@enum Color begin
	    red = 1
	    blue = 2
	    green = 3
	end
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	favColor = green::Color
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	println(favColor)
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	# Symbols which are immutable strings that represent variables as data, commonly used as keys in dicts
	:Noon
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	println(:Noon)
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	d2 = Dict(:pi =>3.14, :e=>2.718)
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	println(d2[:pi])
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	# Structs which are immutable types that can contain main different fields (like python class methods)
	
	struct Customer
	    name::String
	    balance::Float16
	    id::Int
	end
# time: 2020-04-30 02:01:33 CEST
# mode: julia
	bob = Customer("Bob Smith",10.50,123)
# time: 2020-04-30 02:01:34 CEST
# mode: julia
	println(bob.name)
# time: 2020-04-30 02:01:34 CEST
# mode: julia
	#bob.name = "Bob James"
	
	mutable struct Customers # make the struct mutable by adding "mutable" before struct
	    name::String
	    balance::Float16
	    id::Int
	end
# time: 2020-04-30 02:01:34 CEST
# mode: julia
	bob = Customers("Bob Smith",10.50,123)
# time: 2020-04-30 02:01:34 CEST
# mode: julia
	println(bob.name)
# time: 2020-04-30 02:01:34 CEST
# mode: julia
	bob.name = "Bob James"
# time: 2020-04-30 02:01:34 CEST
# mode: julia
	println(bob.name)
# time: 2020-04-30 02:01:34 CEST
# mode: julia
	# Abstract types which can't be instantiated like structs but can have subtypes
	
	abstract type Animal end
# time: 2020-04-30 02:01:34 CEST
# mode: julia
	struct Dog <: Animal
	    name::String
	    bark::String
	end
# time: 2020-04-30 02:01:34 CEST
# mode: julia
	struct Cat <: Animal
	    name::String
	    meow::String
	end
# time: 2020-04-30 02:01:34 CEST
# mode: julia
	bowser = Dog("Bowser", "Ruff")
# time: 2020-04-30 02:01:35 CEST
# mode: julia
	muffin = Cat("Muffin","Meow")
# time: 2020-04-30 02:01:35 CEST
# mode: julia
	function makeSound(animal::Dog)
	    println("$(animal.name) says $(animal.bark)")
	end
# time: 2020-04-30 02:01:35 CEST
# mode: julia
	function makeSound(animal::Cat)
	    println("$(animal.name) says $(animal.meow)")
	end
# time: 2020-04-30 02:01:35 CEST
# mode: julia
	makeSound(bowser)
# time: 2020-04-30 02:01:35 CEST
# mode: julia
	makeSound(muffin)
# time: 2020-04-30 02:01:35 CEST
# mode: julia
	# Exception Handling
	print("Enter a number: ")
# time: 2020-04-30 02:01:35 CEST
# mode: julia
	num1 = chomp(readline())
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	""" Multiline quotes
	possible in Julis"""
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	# Imports keyword: "using"
	using Printf
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	using Statistics
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	# Strings, ints and floats
	s1 = "Just some words"
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println(length(s1))
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println(s1[1:7]) # indexing starts at 1
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println(s1[end])
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println(s1[end-1])
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	s2 = string(s1," ","More words")
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println(s2)
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println(s1*s2)
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	i3 = 2
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	i4 = 3
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println("$i3 + $i4 = $(i3 + i4)")
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println(findfirst(isequal('i'), "Win")) # Enclose search string in single quotes
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println(findfirst(isequal("i"), "Win")) # Double quotes gives "nothing" back
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println(findfirst("i", "Win"))
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	println(occursin("in", "Win")) # Find substrings
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	# Conditionals
	age = 12
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	if age >= 5 && age <= 6
	    println("You are in kindergarden.")
	elseif age >= 7 && age <= 13
	    println("You are in middle-school.")
	elseif age >= 14 && age <= 18
	    println("You are in high-school.")
	else
	    println("Stay Home.")
	end
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	# space + "?" is called a ternary operator, standing in for "if" in one-line if statements and else with space + ":"
	@printf("true || false = %s\n", true || false ? "true" : "false") # true and flase and small case
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	@printf("!true = %s\n", !true ? "true" : "false")
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	#Looping
	i = 1
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	while i<20
	    if i%2 == 0
	        println(i)
	        global i+=1
	        continue
	    end
	    global i+=1
	    if i >= 10
	        break
	    end
	end
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	for i = 1:5
	    println(i)
	end
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	for i in [2,4,6]
	    println(i)
	end
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	for i = 1:5, j = 2:2:10 # second 2 is the step value
	    println((i,j))
	end
# time: 2020-04-30 02:02:40 CEST
# mode: julia
	# Arrays (similar to lists in python)
	a = [1, 3.14, "Hello"]
# time: 2020-04-30 02:02:41 CEST
# mode: julia
	a1 = zeros(Int64, 2, 2) # creates a 2x2 array of zeros
# time: 2020-04-30 02:02:41 CEST
# mode: julia
	a2 = Array{Int64}(undef, 5) # an array with undefined values with 5 spaces
# time: 2020-04-30 02:02:41 CEST
# mode: julia
	a3 = Float64[]
# time: 2020-04-30 02:02:41 CEST
# mode: julia
	a4 = [2,4,6,6]
# time: 2020-04-30 02:02:41 CEST
# mode: julia
	println(a4[1])
# time: 2020-04-30 02:02:41 CEST
# mode: julia
	println(5 in a4)
# time: 2020-04-30 02:02:41 CEST
# mode: julia
	println(findall(isequal(6),a4))
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	f(a) = (a >= 3) ? true : false # generic function
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println("Funtion result: ",f(5))
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println("Funtion result with map: ",map(f,a4))
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println(findall(f,a4))
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println(count(f,a4))
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println("Size: ",size(a4))
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println("Length: ",length(a4))
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println("Sum: ",sum(a4))
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	# Manipulating an array
	
	push!(a4,36) # add value to array
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println("Adding values: ",a4)
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	splice!(a4,2:1,[8,9]) # put values at index 2 without removing the value at index 2
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println("Inspert at index without removing values: ",a4)
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	a4 = [2,4,6,6]
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	splice!(a4,2,[8,9]) # put values at index 2 and removing the value at index 2
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println("Insert at index with removing values: ",a4)
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	splice!(a4,2:3) # remove values at index 2 and 3
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println(a4)
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println("Maximum: ",maximum(a4))
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println("Minimum: ",minimum(a4))
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	println(a4 *2)
# time: 2020-04-30 02:02:42 CEST
# mode: julia
	# Storing functions in variables
	a5 = [sin, cos, tan]
# time: 2020-04-30 02:02:43 CEST
# mode: julia
	for n in a5
	    println(n(0))
	end
# time: 2020-04-30 02:02:43 CEST
# mode: julia
	# Multideminsional Arrays
	a6 = [1 2 3 ; 4 5 6]
# time: 2020-04-30 02:02:43 CEST
# mode: julia
	println(a6)
# time: 2020-04-30 02:02:43 CEST
# mode: julia
	for n = 1:2, m = 1:3
	    @printf("%d ", a6[n,m])
	end
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println()
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(a6[:,2]) # get every row in the second column
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(a6[2,:]) # get every column in the second row
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	a7 = collect(1:5) # create new array using ranges
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(a7)
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	a8 = collect(2:2:10) # create new array using step in range
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(a8)
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	a9 = collect(4:-1:1) # create new array using reverse step in range
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(a9)
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	for n in a9 println(n) end # different way to make one-line for loop
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	# Array comprehension with comprehension
	a10 = [n^2 for n in 1:5]
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(a10)
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	a11 = [n * m for n in 1:5, m in 1:5] # Multideminsional array
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(a11)
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	a12 = rand(0:9, 5, 5) # 5x5 random array of values between 0 and 9
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(a12)
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	for n = 1:5
	    for m = 1:5
	        println(a12[n,m])
	    end
	    println()
	end
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	# Tuples
	t1 = (1,2,3,4)
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(t1)
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(t1[1])
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	for i in t1
	    println(i)
	end
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	# Multideminsional Tuples
	t2 = ((1,2),(3,4))
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(t2[1][1])
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	# Named Tuples
	t3 = (sue = ("Sue", 100), paul = ("Paul", 23))
# time: 2020-04-30 02:02:44 CEST
# mode: julia
	println(t3.sue)
# time: 2020-04-30 02:02:45 CEST
# mode: julia
	# Dictionaries
	d1 = Dict("pi"=>3.14, "e"=>2.718)
# time: 2020-04-30 02:02:45 CEST
# mode: julia
	println(d1["pi"])
# time: 2020-04-30 02:02:45 CEST
# mode: julia
	d1["golden"] = 1.618
# time: 2020-04-30 02:02:45 CEST
# mode: julia
	delete!(d1,"pi")
# time: 2020-04-30 02:02:45 CEST
# mode: julia
	println(haskey(d1, "pi"))
# time: 2020-04-30 02:02:45 CEST
# mode: julia
	println(in("pi"=>3.14))
# time: 2020-04-30 02:02:46 CEST
# mode: julia
	println(keys(d1))
# time: 2020-04-30 02:02:46 CEST
# mode: julia
	println(values(d1))
# time: 2020-04-30 02:02:46 CEST
# mode: julia
	for kv in d1
	    println(kv)
	end
# time: 2020-04-30 02:02:46 CEST
# mode: julia
	for (key,value) in d1
	    println(key,": ",value)
	end
# time: 2020-04-30 02:02:46 CEST
# mode: julia
	# Sets
	st1 = Set(["Jim","Pam","Jim"])
# time: 2020-04-30 02:02:46 CEST
# mode: julia
	println(st1)
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	push!(st1,"Michael")
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println(in("Dwight",st1))
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	st2 = Set(["Stanley", "Kevin"])
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println(union(st1,st2))
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println(intersect(st1,st2))
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println(setdiff(st1,st2))
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	# Functions
	getSum(x,y) = x+y
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	x,y = 1,2
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	@printf("%d + %d = %d\n", x,y,getSum(x,y))
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	function canIVote(age=16)
	    if 90 >= age >=18
	        println("Can Vote.")
	    else
	        println("Can't Vote.")
	    end
	end
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	canIVote(99)
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	v1 = 5
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	function changeV1()
	    global v1 = 10 # global keyword to access variable outside function
	end
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	changeV1()
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println(v1)
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	function getSum2(args...)
	    sum = 0
	    for a in args
	        sum += a
	    end
	    println(sum)
	end
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	getSum2(1,2,3,4,5)
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	function next2(val)
	    return(val+1,val+2)
	end
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println(next2(4))
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	function makeMultiplier(num) # return a function
	    return function(x) return x*num end
	end
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	mult3 = makeMultiplier(3)
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println(mult3(6))
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	function getSum3(num1::Number, num2::Number)
	    return num1+num2
	end
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	function getSum3(num1::String, num2::String)
	    return parse(Int64, num1) + parse(Int64, num2)
	end
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println("5 + 4 = ",getSum3(5,4))
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println("5 + 4 = ",getSum3("5","4"))
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	# Anonymous functions used inline
	v2 = map(x -> x*x, [1,2,3])
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println(v2)
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	v3 = map((x,y) -> x+y, [1,2],[3,4])
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println(v3)
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	v4 = reduce(+, 1:100)# reduce uses a function multiple times to get to one result
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	println(v4)
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	sentence = "This is a string"
# time: 2020-04-30 02:02:47 CEST
# mode: julia
	sArray = split(sentence) # converts string to array
# time: 2020-04-30 02:02:48 CEST
# mode: julia
	print(sArray)
# time: 2020-04-30 02:02:48 CEST
# mode: julia
	longest = reduce((x,y) -> length(x) > length(y) ? x : y, sArray)
# time: 2020-04-30 02:02:48 CEST
# mode: julia
	println(longest)
# time: 2020-04-30 02:02:48 CEST
# mode: julia
	a13 = [1,2,3]
# time: 2020-04-30 02:02:48 CEST
# mode: julia
	println(a13.*3) # dot operator
# time: 2020-04-30 02:02:48 CEST
# mode: julia
	# Enumerator types to create types (like python classes)
	@enum Color begin
	    red = 1
	    blue = 2
	    green = 3
	end
# time: 2020-04-30 02:02:48 CEST
# mode: julia
	favColor = green::Color
# time: 2020-04-30 02:02:48 CEST
# mode: julia
	println(favColor)
# time: 2020-04-30 02:02:48 CEST
# mode: julia
	# Symbols which are immutable strings that represent variables as data, commonly used as keys in dicts
	:Noon
# time: 2020-04-30 02:02:49 CEST
# mode: julia
	println(:Noon)
# time: 2020-04-30 02:02:49 CEST
# mode: julia
	d2 = Dict(:pi =>3.14, :e=>2.718)
# time: 2020-04-30 02:02:49 CEST
# mode: julia
	println(d2[:pi])
# time: 2020-04-30 02:02:49 CEST
# mode: julia
	# Structs which are immutable types that can contain main different fields (like python class methods)
	
	struct Customer
	    name::String
	    balance::Float16
	    id::Int
	end
# time: 2020-04-30 02:02:49 CEST
# mode: julia
	bob = Customer("Bob Smith",10.50,123)
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	println(bob.name)
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	#bob.name = "Bob James"
	
	mutable struct Customers # make the struct mutable by adding "mutable" before struct
	    name::String
	    balance::Float16
	    id::Int
	end
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	bob = Customers("Bob Smith",10.50,123)
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	println(bob.name)
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	bob.name = "Bob James"
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	println(bob.name)
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	# Abstract types which can't be instantiated like structs but can have subtypes
	
	abstract type Animal end
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	struct Dog <: Animal
	    name::String
	    bark::String
	end
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	struct Cat <: Animal
	    name::String
	    meow::String
	end
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	bowser = Dog("Bowser", "Ruff")
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	muffin = Cat("Muffin","Meow")
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	function makeSound(animal::Dog)
	    println("$(animal.name) says $(animal.bark)")
	end
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	function makeSound(animal::Cat)
	    println("$(animal.name) says $(animal.meow)")
	end
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	makeSound(bowser)
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	makeSound(muffin)
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	# Exception Handling
	print("Enter a number: ")
# time: 2020-04-30 02:02:50 CEST
# mode: julia
	num1 = chomp(readline())
# time: 2020-04-30 02:02:56 CEST
# mode: julia
	print("Enter a number: ")
# time: 2020-04-30 02:02:56 CEST
# mode: julia
	num2 = chomp(readline())
# time: 2020-04-30 02:03:00 CEST
# mode: julia
	try
	    val = parse(Int64,num1) / parse(Int64,num2)
	    if val == Inf
	        error("Can't divide by 0")
	    else
	        println(val)
	    end
	catch e
	    println(e)
	end
# time: 2020-04-30 02:03:13 CEST
# mode: julia
	# Exception Handling
	print("Enter a number: ")
# time: 2020-04-30 02:03:13 CEST
# mode: julia
	num1 = chomp(readline())
# time: 2020-04-30 02:03:16 CEST
# mode: julia
	print("Enter a number: ")
# time: 2020-04-30 02:03:16 CEST
# mode: julia
	num2 = chomp(readline())
# time: 2020-04-30 02:03:18 CEST
# mode: julia
	try
	    val = parse(Int64,num1) / parse(Int64,num2)
	    if val == Inf
	        error("Can't divide by 0")
	    else
	        println(val)
	    end
	catch e
	    println(e)
	end
# time: 2020-04-30 02:04:10 CEST
# mode: julia
	10
# time: 2020-04-30 02:44:41 CEST
# mode: julia
	versioninfo([verbose::Bool])
# time: 2020-04-30 02:44:53 CEST
# mode: julia
	versioninfo()
# time: 2020-09-30 07:29:44 CEST
# mode: julia
	versioninfo([verbose::Bool])
# time: 2020-09-30 07:29:53 CEST
# mode: julia
	update
# time: 2020-09-30 07:29:57 CEST
# mode: julia
	upgrade
# time: 2020-09-30 07:33:11 CEST
# mode: julia
	Pkg.update()
