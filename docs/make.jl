import DataStructures: OrderedDict
using SimpleTest
using Documenter

DocMeta.setdocmeta!(SimpleTest, :DocTestSetup, :(using SimpleTest); recursive=true)
#DocumenterTools.genkeys(user="sambuddhac", repo="git@github.com:sambuddhac/SimpleTest.jl.git")
makedocs(;
    modules=[SimpleTest],
    authors="Sambuddha Chakrabarti",
    #repo="https://github.com/sambuddhac/SimpleTest.jl/blob/{commit}{path}#{line}",
    sitename="SimpleTest.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://sambuddhac.github.io/SimpleTest.jl/stable",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
        "Simple Operation" => "simple-operation.md",
    ],
)

deploydocs(;
    repo="github.com/sambuddhac/SimpleTest.jl.git",
    target = "build",
    branch = "gh-pages",
    devbranch = "main",
    devurl = "dev",
    push_preview=true,
    versions = ["stable" => "v^", "v#.#"],
    forcepush = false,
)