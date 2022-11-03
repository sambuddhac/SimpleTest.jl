import Pkg
using Pkg
Pkg.activate("SimpleTestJulEnv")
Pkg.add(Pkg.PackageSpec(name="GLPK"))
#Pkg.add(Pkg.PackageSpec(name="MathOptInterfaceMosek"))
Pkg.add(Pkg.PackageSpec(name="MathOptInterface"))
Pkg.add(Pkg.PackageSpec(name="Cbc"))
Pkg.add(Pkg.PackageSpec(name="Ipopt"))
Pkg.add(Pkg.PackageSpec(name="Revise"))
Pkg.add(Pkg.PackageSpec(name="CSV"))
Pkg.add(Pkg.PackageSpec(name="DataStructures"))
Pkg.add(Pkg.PackageSpec(name="Documenter"))
Pkg.add(Pkg.PackageSpec(name="Dates"))
Pkg.add(Pkg.PackageSpec(name="Literate"))
Pkg.add(Pkg.PackageSpec(name="HiGHS"))
############################################################################################
#Uncomment either of the following two lines for the particular version of CPLEX.jl desired
############################################################################################
#Pkg.add(Pkg.PackageSpec(name="CPLEX", version="0.6.1"))
#Pkg.add(Pkg.PackageSpec(name="CPLEX"))
############################################################################################
#Uncomment either of the following two lines for the particular version of Gurobi.jl desired
############################################################################################
#Pkg.add(Pkg.PackageSpec(name="Gurobi", version="0.10.3"))
#Pkg.add(Pkg.PackageSpec(name="Gurobi", version="0.11.3"))
#Pkg.add(Pkg.PackageSpec(name="Clustering"))
#Pkg.add(Pkg.PackageSpec(name="Combinatorics"))
#Pkg.add(Pkg.PackageSpec(name="Distances"))
#Pkg.add(Pkg.PackageSpec(name="Statistics"))
Pkg.add(Pkg.PackageSpec(name="BenchmarkTools"))
#Pkg.add(Pkg.PackageSpec(name="Random"))
Pkg.add(Pkg.PackageSpec(name="RecursiveArrayTools"))
Pkg.add(Pkg.PackageSpec(name="Clp"))
Pkg.add(Pkg.PackageSpec(name="DataFrames"))
#Pkg.add(Pkg.PackageSpec(name="IJulia"))
Pkg.add(Pkg.PackageSpec(name="JuMP"))
#Pkg.add(Pkg.PackageSpec(name="Plots"))
#Pkg.add(Pkg.PackageSpec(name="PrettyTables"))
#Pkg.add(Pkg.PackageSpec(name="SDDP"))
#Pkg.add(Pkg.PackageSpec(name="VegaLite"))
Pkg.add(Pkg.PackageSpec(name="DataArrays"))
#Pkg.add(Pkg.PackageSpec(name="MathOptFormat"))
Pkg.add(Pkg.PackageSpec(name="MathProgBase"))
#Pkg.add(Pkg.PackageSpec(name="StatsBase"))
Pkg.add(Pkg.PackageSpec(name="YAML"))
Pkg.add(Pkg.PackageSpec(name="LinearAlgebra"))
Pkg.status()

