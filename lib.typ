#let implies = sym.arrow.r.double
#let iff = sym.arrow.r.l.double
#let pow = math.cal[P]

#let common(title: "", margin: 1in, body) = {
    set document(
        author: "Max Niederman",
        title: title,
    )
    set page(
        paper: "us-letter",
        margin: margin,
        numbering: (..nums) => "Niederman " + numbering("1/1", ..nums),
        number-align: center,
    )
    set par(linebreaks: "optimized", justify: true)


    set math.vec(delim: "[")
    set math.mat(delim: "[")

    show math.equation: set text(features: ("cv01",))

    // title
    block(text(weight: 700, 1.75em, title))

    // author
    block(strong("Max Niederman"), below: 2em)

    columns(2, body)
}

#let homework(title: "", margin: 1in, body) = {
    show heading: set block(below: 1em)

    common(title: title, margin: margin, body)
}

#let lemma = block.with(
    width: 100%,
    inset: 8pt,
    radius: 6pt,
    fill: fuchsia.lighten(80%)
)
