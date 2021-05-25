using SimpleTest
println("Enter two numbers")
num1 = parse(Float64, readline())
num2 = parse(Float64, readline())
result = simple_operation(num1, num2)
println("The sum is ", result)