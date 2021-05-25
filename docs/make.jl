using SimpleTest
using Documenter

DocMeta.setdocmeta!(SimpleTest, :DocTestSetup, :(using SimpleTest); recursive=true)

makedocs(;
    modules=[SimpleTest],
    authors="Sambuddha Chakrabarti",
    repo="https://github.com/sambuddhac/SimpleTest.jl/blob/{commit}{path}#{line}",
    sitename="SimpleTest.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://sambuddhac.github.io/SimpleTest.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/sambuddhac/SimpleTest.jl",
)
