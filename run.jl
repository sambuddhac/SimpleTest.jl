environment_path = "package_activate.jl"
include(environment_path) #Run this line to activate the Julia virtual environment; skip it, if the appropriate package versions are installed

### Set relevant directory paths
src_path = "src/"
inpath = pwd()

println("Loading packages")
push!(LOAD_PATH, src_path)
using SimpleTest
using YAML
println("Enter two numbers")
num1 = parse(Float64, readline())
num2 = parse(Float64, readline())
result = simple_operation(num1, num2)
println("The sum is ", result)
sep = "/"
working_path = pwd()
settings_path = joinpath(working_path, "settings.yml")
testpath = joinpath(pwd(), "src")
push!(LOAD_PATH, testpath)
settings = YAML.load(open(settings_path))
output_path = joinpath(working_path, "output")
start_of_opt(settings, sep, output_path)