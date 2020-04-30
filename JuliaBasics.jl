""" Multiline quotes
possible in Julis"""

# Imports keyword: "using"
using Printf
using Statistics

# Strings, ints and floats
s1 = "Just some words"
println(length(s1))

println(s1[1:7]) # indexing starts at 1
println(s1[end])
println(s1[end-1])

s2 = string(s1," ","More words")
println(s2)
println(s1*s2)

i3 = 2
i4 = 3
println("$i3 + $i4 = $(i3 + i4)")

println(findfirst(isequal('i'), "Win")) # Enclose search string in single quotes
println(findfirst(isequal("i"), "Win")) # Double quotes gives "nothing" back
println(findfirst("i", "Win"))
println(occursin("in", "Win")) # Find substrings

# Conditionals
age = 12
if age >= 5 && age <= 6
    println("You are in kindergarden.")
elseif age >= 7 && age <= 13
    println("You are in middle-school.")
elseif age >= 14 && age <= 18
    println("You are in high-school.")
else
    println("Stay Home.")
end

# space + "?" is called a ternary operator, standing in for "if" in one-line if statements and else with space + ":"
@printf("true || false = %s\n", true || false ? "true" : "false") # true and flase and small case
@printf("!true = %s\n", !true ? "true" : "false")

#Looping
i = 1

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

for i = 1:5
    println(i)
end

for i in [2,4,6]
    println(i)
end

for i = 1:5, j = 2:2:10 # second 2 is the step value
    println((i,j))
end

# Arrays (similar to lists in python)
a = [1, 3.14, "Hello"]
a1 = zeros(Int64, 2, 2) # creates a 2x2 array of zeros
a2 = Array{Int64}(undef, 5) # an array with undefined values with 5 spaces
a3 = Float64[]
a4 = [2,4,6,6]
println(a4[1])
println(5 in a4)
println(findall(isequal(6),a4))
f(a) = (a >= 3) ? true : false # generic function
println("Funtion result: ",f(5))
println("Funtion result with map: ",map(f,a4))
println(findall(f,a4))
println(count(f,a4))
println("Size: ",size(a4))
println("Length: ",length(a4))
println("Sum: ",sum(a4))

# Manipulating an array

push!(a4,36) # add value to array
println("Adding values: ",a4)
splice!(a4,2:1,[8,9]) # put values at index 2 without removing the value at index 2
println("Inspert at index without removing values: ",a4)
a4 = [2,4,6,6]
splice!(a4,2,[8,9]) # put values at index 2 and removing the value at index 2
println("Insert at index with removing values: ",a4)
splice!(a4,2:3) # remove values at index 2 and 3
println(a4)
println("Maximum: ",maximum(a4))
println("Minimum: ",minimum(a4))
println(a4 *2)

# Storing functions in variables
a5 = [sin, cos, tan]
for n in a5
    println(n(0))
end

# Multideminsional Arrays
a6 = [1 2 3 ; 4 5 6]
println(a6)
for n = 1:2, m = 1:3
    @printf("%d ", a6[n,m])
end
println()
println(a6[:,2]) # get every row in the second column
println(a6[2,:]) # get every column in the second row
a7 = collect(1:5) # create new array using ranges
println(a7)
a8 = collect(2:2:10) # create new array using step in range
println(a8)
a9 = collect(4:-1:1) # create new array using reverse step in range
println(a9)
for n in a9 println(n) end # different way to make one-line for loop

# Array comprehension with comprehension
a10 = [n^2 for n in 1:5]
println(a10)

a11 = [n * m for n in 1:5, m in 1:5] # Multideminsional array
println(a11)

a12 = rand(0:9, 5, 5) # 5x5 random array of values between 0 and 9
println(a12)

for n = 1:5
    for m = 1:5
        println(a12[n,m])
    end
    println()
end

# Tuples
t1 = (1,2,3,4)
println(t1)
println(t1[1])
for i in t1
    println(i)
end

# Multideminsional Tuples
t2 = ((1,2),(3,4))
println(t2[1][1])

# Named Tuples
t3 = (sue = ("Sue", 100), paul = ("Paul", 23))
println(t3.sue)

# Dictionaries
d1 = Dict("pi"=>3.14, "e"=>2.718)
println(d1["pi"])
d1["golden"] = 1.618
delete!(d1,"pi")
println(haskey(d1, "pi"))
println(in("pi"=>3.14))
println(keys(d1))
println(values(d1))

for kv in d1
    println(kv)
end

for (key,value) in d1
    println(key,": ",value)
end

# Sets
st1 = Set(["Jim","Pam","Jim"])
println(st1)
push!(st1,"Michael")
println(in("Dwight",st1))
st2 = Set(["Stanley", "Kevin"])
println(union(st1,st2))
println(intersect(st1,st2))
println(setdiff(st1,st2))

# Functions
getSum(x,y) = x+y
x,y = 1,2
@printf("%d + %d = %d\n", x,y,getSum(x,y))

function canIVote(age=16)
    if 90 >= age >=18
        println("Can Vote.")
    else
        println("Can't Vote.")
    end
end

canIVote(99)

v1 = 5
function changeV1()
    global v1 = 10 # global keyword to access variable outside function
end

changeV1()
println(v1)

function getSum2(args...)
    sum = 0
    for a in args
        sum += a
    end
    println(sum)
end

getSum2(1,2,3,4,5)

function next2(val)
    return(val+1,val+2)
end

println(next2(4))

function makeMultiplier(num) # return a function
    return function(x) return x*num end
end

mult3 = makeMultiplier(3)
println(mult3(6))

function getSum3(num1::Number, num2::Number)
    return num1+num2
end

function getSum3(num1::String, num2::String)
    return parse(Int64, num1) + parse(Int64, num2)
end
println("5 + 4 = ",getSum3(5,4))
println("5 + 4 = ",getSum3("5","4"))

# Anonymous functions used inline
v2 = map(x -> x*x, [1,2,3])
println(v2)

v3 = map((x,y) -> x+y, [1,2],[3,4])
println(v3)

v4 = reduce(+, 1:100)# reduce uses a function multiple times to get to one result
println(v4)

sentence = "This is a string"
sArray = split(sentence) # converts string to array
print(sArray)
longest = reduce((x,y) -> length(x) > length(y) ? x : y, sArray)
println(longest)

a13 = [1,2,3]
println(a13.*3) # dot operator

# Compound statements
mul = begin
    a = 10
    b = 20
    c = 5
    a*b*c
end

mul = a = 10; b= 20; c = 5; a*b*c

# Coroutines which runs multiple tasks parallely

function fubseries()
    x = 0
    produce(x)
    y = 1
    produce(y)
    while true
        x,y = y,x+y
        produce(y)
    end
end

mytask = Task(fubseries) # Task is also called coroutines
consume(mytask)

# Enumerator types to create types (like python classes)
@enum Color begin
    red = 1
    blue = 2
    green = 3
end

favColor = green::Color
println(favColor)

# Symbols which are immutable strings that represent variables as data, commonly used as keys in dicts
:Noon
println(:Noon)

d2 = Dict(:pi =>3.14, :e=>2.718)
println(d2[:pi])

# Structs which are immutable types that can contain main different fields (like python class methods)

struct Customer
    name::String
    balance::Float16
    id::Int
end

bob = Customer("Bob Smith",10.50,123)
println(bob.name)
#bob.name = "Bob James"

mutable struct Customers # make the struct mutable by adding "mutable" before struct
    name::String
    balance::Float16
    id::Int
end

bob = Customers("Bob Smith",10.50,123)
println(bob.name)
bob.name = "Bob James"
println(bob.name)

# Abstract types which can't be instantiated like structs but can have subtypes

abstract type Animal end

struct Dog <: Animal
    name::String
    bark::String
end

struct Cat <: Animal
    name::String
    meow::String
end

bowser = Dog("Bowser", "Ruff")
muffin = Cat("Muffin","Meow")

function makeSound(animal::Dog)
    println("$(animal.name) says $(animal.bark)")
end

function makeSound(animal::Cat)
    println("$(animal.name) says $(animal.meow)")
end

makeSound(bowser)
makeSound(muffin)

# Exception Handling
print("Enter a number: ")
num1 = chomp(readline())
print("Enter a number: ")
num2 = chomp(readline())

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

open("random.txt", "w") do file
    write(file, "Here is some random text\nIt is great\n")
end

open("random.txt") do file
    data = read(file, String)
    println(data)
end

open("random.txt") do file
    for line in eachline(file)
        println(line)
    end
end

# Macros which generate code before a program is run
macro doMore(n, exp)
    quote # represents the begining and ending of the code to be run
        for i = 1:$(esc(n))
            $(esc(exp))
        end
    end
end

@doMore(2, println("Hello"))

macro doWhile(exp)
    @assert exp.head == :while
    esc(quote
    $(exp.args[2])
    $exp
end)
end

z = 0
@doWhile while z < 10
    global z +=1
    println(z)
end