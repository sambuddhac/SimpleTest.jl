@doc raw"""
    start_of_opt(setting, sep, output_path)
    
This will be generated as markdown documentation by Documenter
"""
function start_of_opt(settings::Dict, sep::AbstractString, output_path::AbstractString)
    ACoeff = [1.1, 1.5, 2.7]
    BCoeff = [3.4, 5.9, 2.45]
    CCoeff = [4.87, 5.29, 6.37]
    rhs = [10.81, 100.63]
    results = testLP(settings, ACoeff, BCoeff, CCoeff, rhs)
    println(results)
    CSV.write(string(output_path, sep, "Results.csv"), results)
end