using LazyGraphs
using Documenter

DocMeta.setdocmeta!(LazyGraphs, :DocTestSetup, :(using LazyGraphs); recursive=true)

makedocs(;
    modules=[LazyGraphs],
    authors="Cédric Simal, University of Namur",
    repo="https://github.com/csimal/LazyGraphs.jl/blob/{commit}{path}#{line}",
    sitename="LazyGraphs.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://csimal.github.io/LazyGraphs.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/csimal/LazyGraphs.jl",
    devbranch="main",
)
