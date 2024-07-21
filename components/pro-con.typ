#import "../colors.typ": *

#let pro-con(pros: [], cons: []) = {
  align(center, grid(
    columns: (1fr, 1fr), 
    rows: 2, 
    column-gutter: 10pt,

    // Title
    
    box(width: 1fr, inset: 10pt, radius: (top-left: 20pt, top-right: 20pt), fill: pro-green, align(center, [
      #set text(weight: "bold") 
      Pros
    ])),

    box(width: 1fr, inset: 10pt, radius: (top-left: 20pt, top-right: 20pt), fill: con-red, align(center, [
      #set text(weight: "bold")
      Cons
    ])),

    // Content
    
    box(width: 1fr, inset: 10pt, radius: (bottom-left: 20pt, bottom-right: 20pt), fill: surface-1, align(left, pros)),

    box(width: 1fr, inset: 10pt, radius: (bottom-left: 20pt, bottom-right: 20pt), fill: surface-1, align(left, cons))
  ))
}