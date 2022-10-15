__precompile__()

module GenomicFeatures

export
    Strand,
    STRAND_NA,
    STRAND_POS,
    STRAND_NEG,
    STRAND_BOTH,

    Interval,
    seqname,
    leftposition,
    rightposition,
    strand,
    metadata,
    isoverlapping,

    IntervalCollection,
    eachoverlap,
    coverage,

    isfilled,
    hasseqname,
    hasleftposition,
    hasrightposition,

	span

import BioGenerics: BioGenerics, seqname, leftposition, rightposition, isoverlapping, isfilled, hasseqname, hasleftposition, hasrightposition, metadata
import DataStructures
import IntervalTrees
import Base.@propagate_inbounds

include("strand.jl")
include("interval.jl")
include("intervalcollection.jl")
include("queue.jl")
include("overlap.jl")
include("coverage.jl")

"""
    span(interval::Interval)::Int

Get the span of `interval`.
"""
function span(interval::Interval)
	return length(leftposition(interval):rightposition(interval))
end

end # module
