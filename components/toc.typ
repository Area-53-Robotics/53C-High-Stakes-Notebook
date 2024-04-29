#import "@local/notebookinator:1.0.0": *

#import "../entry-types.typ": *

#let toc() = utils.print-toc(
  (_, body, appendix) => style(
    styles => {
      let previous-date
       
      let toc = stack(
        dir: ttb,
        spacing: 0.3em,
        ..for entry in body {
          let date-content = if entry.date == previous-date {} else {
            box(inset: 5pt, fill: white, entry.date.display("[day]/[month]/[year]"))
          }
           
          previous-date = entry.date
          ([
            // Single line content
            #box(baseline: 0.35em, width: 5em)[
              #set align(center)
              #date-content
            ]
            #h(1em)
            #box(
              fill: entry-type-metadata.at(entry.type),
              radius: 10pt,
              inset: 0.6em,
              baseline: 25%,
            )[#entry.title]
            #h(1em)
            #box(width: 1fr, line(length: 100%, start: (0pt, -.35em)))
            #h(1.5em)
            #box(outset: 7pt, radius: 10pt, fill: surface-2, [
              #set text(weight: "bold")
              #entry.page-number
              ])
          ],)
        },
      )
       
      let height = measure(toc, styles).height
       
      box[
        #place(
          top + left,
          dx: 2.5em,
          dy: 1em,
          line(angle: 90deg, length: height - 12pt),
        )
        #toc
      ]
    },
  ),
)