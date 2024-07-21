#import "@local/notebookinator:1.0.0": *

#import "format.typ": *
#import "colors.typ": *

#let cover(ctx: (:)) = {

}

#let frontmatter-entry(ctx: (:), body) = {
  show: page.with(
    header: [
      #set text(size: 25pt)
      #box(width: 100%, inset: 10pt, radius: 20pt, fill: surface-2)[
        #align(center, ctx.title)        
      ]
    ]
  )
  show heading: it => {
    set-heading(it, "none")
  }
  body
}

#let body-entry(ctx: (:), body) = {
  show: page.with(
    header: [
      #set text(size: 25pt)
      #grid(
        columns: (25pt, 1fr),
        gutter: 20pt,
        // Page number
        circle(radius: 18pt, fill: entry-type-metadata.at(ctx.type),
          counter(page).display()),
        // Title
        box(width: 100%, inset: 10pt, radius: 20pt, fill: entry-type-metadata.at(ctx.type))[
          #grid(
            columns: (3fr, 1fr),
            align(left, ctx.title),
            align(right, ctx.date.display())
          )
        ]
      )
    ],
    footer: [
      
    ]
  )
  show heading: it => {
    set-heading(it, ctx.type)
  }
  body
}

#let appendix-entry(ctx: (:), body) = {
  show: page.with(
    header: [
      #set text(size: 25pt)
      #box(width: 100%, inset: 10pt, radius: 20pt, fill: surface-2)[
        #align(center, ctx.title)        
      ]
    ]
  )
  show heading: it => {
    set-heading(it, "reflect")
  }
  body
}