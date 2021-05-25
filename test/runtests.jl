using SimpleTest
using Test

@testset "SimpleTest.jl" begin
    @test simple_operation(2.0, 3.0) == 5
    @test simple_operation(2.1, 3.1)==5.2
    @test simple_operation(21.0, 31.0)== 52.0
end
