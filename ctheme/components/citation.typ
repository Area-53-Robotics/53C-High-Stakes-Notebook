#import "../colors.typ": *

#let citation(id: "", rule: "", body) = {
  block(
    fill: surface-2,
    radius: 20pt,
    inset: 10pt,
    
    grid(rows: 2, gutter: 10pt,
      [
        #align(center, [
          #set text(weight: "bold", size: 13pt)
          #box(fill: surface-4, radius: 20pt, outset: 5pt, id)
          #h(10pt)
          #set text(fill: red)
          #rule
        ])
      ],
      [#align(left, [#body])]
    )
  )
}