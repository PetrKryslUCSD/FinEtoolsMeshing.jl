using Documenter, FinEtools, FinEtoolsMeshing

makedocs(
	modules = [FinEtoolsMeshing],
	doctest = false, clean = true,
	format = Documenter.HTML(prettyurls = false),
	authors = "Petr Krysl",
	sitename = "FinEtoolsMeshing.jl",
	pages = Any[
		"Home" => "index.md",
		"How to guide" => "guide/guide.md",
		"Types and Functions" => Any[
			"man/types.md",
			"man/functions.md"]
			]
	)

deploydocs(
    repo = "github.com/PetrKryslUCSD/FinEtoolsMeshing.jl.git",
)
