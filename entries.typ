#import "@local/notebookinator:1.0.0": *

#import "format.typ": *
#import "colors.typ": *

#let cover(context: (:)) = {

}

#let frontmatter-entry(context: (:), body) = {
  show: page.with(
    header: [
      #set text(size: 25pt)
      #box(width: 100%, inset: 10pt, radius: 20pt, fill: surface-2)[
        #align(center, context.title)        
      ]
    ]
  )
  body
}

#let body-entry(context: (:), body) = {
  show: page.with(
    header: [
      #set text(size: 25pt)
      #grid(
        columns: (25pt, 1fr),
        gutter: 20pt,
        // Page number
        circle(radius: 18pt, fill: entry-type-metadata.at(context.type),
          counter(page).display()),
        // Title
        box(width: 100%, inset: 10pt, radius: 20pt, fill: entry-type-metadata.at(context.type))[
          #grid(
            columns: (3fr, 1fr),
            align(left, context.title),
            // align(right, context.date)
          )
        ]
      )
    ]
  )
  show heading: it => {
    set-heading(it, context.type)
  }
  body
}

#let appendix-entry(context: (:), body) = {
  show: page.with(
    header: [
      #set text(size: 25pt)
      #box(width: 100%, inset: 10pt, radius: 20pt, fill: surface-2)[
        #align(center, context.title)        
      ]
    ]
  )
  body
}