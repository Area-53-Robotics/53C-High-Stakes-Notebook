#import "@local/notebookinator:1.0.1": *

#import "entry-types.typ": entry-type-metadata

#let set-heading(it, type) = {
  show: block
  let color = entry-type-metadata.at(type)
  if it.level == 1 {
    set text(15pt)
    grid(
      columns: (1fr, auto, 1fr),
      gutter: 10pt,
      align(horizon, line(length: 100%)),
      box(width: auto, inset: 10pt, radius: 20pt, fill: color, align(center, it.body)),
      align(horizon, line(length: 100%)),
    )
    v(10pt)
  }
  if it.level == 2 {
    set text(14pt)
    it.body
  }
  if it.level == 3 {
    set text(13pt)
    it.body
  } else {
    set text(12pt)
  }
  v(5pt)
}
