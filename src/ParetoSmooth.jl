module ParetoSmooth
using Requires
using DocStringExtensions

function __init__()
    
    @require MCMCChains = "c7f686f2-ff18-58e9-bc7b-31028e88f75d" begin 
        include("MCMCChainsHelpers.jl")
        @require Turing = "fce5fe82-541a-59a6-adf8-730c64b5f9a0" begin
            include("TuringHelpers.jl")
        end 
    end

end

include("AbstractCV.jl")
include("ESS.jl")
include("GPD.jl")
include("InternalHelpers.jl")
include("ImportanceSampling.jl")
include("LeaveOneOut.jl")
include("ModelComparison.jl")
include("NaiveLPD.jl")
include("PublicHelpers.jl")

end
