@doc raw"""
    genVarConstr(M, coeffB, RHS)
    
This will be generated as markdown documentation by Documenter
"""

function genVarConstr(M::Model, coeffB::Array{Float64,1}, RHS::Array{Float64,1})
        @variable(M, -10 <= x <= 100)
        @variable(M, -10 <= y <= 100)
        @variable(M, -10 <= z <= 100)
        @constraint(M, coeffB[1] * x + coeffB[2] * y + coeffB[3] * z == RHS[1])
        return M
end

@doc raw"""
    testLP(setting, sep, coeffA, coeffB, coefC, RHS)
    
This will be generated as markdown documentation by Documenter
"""

function testLP(settings::Dict, coeffA::Array{Float64,1}, coeffB::Array{Float64,1}, coeffC::Array{Float64,1}, RHS::Array{Float64,1})
        if settings["Solver"] == "Gurobi"
                #Gurobi.GurobiSolver #Clp.ClpSolver
	        #model=Model(solver=GurobiSolver()) #For JuMP 18
                # I am just adding a line to see I can push a commit
                model=Model(Gurobi.Optimizer) #Model(Clp.Optimizer)
                model = genVarConstr(model, coeffB, RHS)
                @constraint(model, coeffC[1] * model[:x]^2 + coeffC[2] * model[:y]^2 + coeffC[3] * model[:z]^2 <= RHS[2])
                @objective(model, Min, coeffA[1]*model[:x]^2+coeffA[2]*model[:y]+coeffA[3]*model[:z]^2)
                #tstatus = solve(model) #For JuMP 18
        elseif settings["Solver"] == "Ipopt"
	        #model=Model(solver=GurobiSolver()) #For JuMP 18
                model = Model(Ipopt.Optimizer)
                model = genVarConstr(model, coeffB, RHS)
                @NLconstraint(model, coeffC[1] * model[:x]^2 + coeffC[2] * model[:y]^2 + coeffC[3] * model[:z]^2 <= RHS[2])
                @NLobjective(model, Min, coeffA[1]*model[:x]^2+coeffA[2]*model[:y]+coeffA[3]*model[:z]^2)
        end
        optimize!(model)
        tstatus = termination_status(model)
        optimal_obj = objective_value(model)
        opt_decVar1 = value(model[:x]) #getvalue(x) #JuMP 18
        opt_decVar2 = value(model[:y])
        opt_decVar3 = value(model[:z])

        results = Dict(
        "status" => tstatus,
        "optimal_obj" => optimal_obj,
        "opt_decVar1" => opt_decVar1,
        "opt_decVar2" => opt_decVar2,
        "opt_decVar3" => opt_decVar3,
        )

        return results
end
