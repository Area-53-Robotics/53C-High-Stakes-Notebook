#let rules(doc) = {
  set footnote.entry(
    separator: line(stroke: 0.1pt),
    indent: 0em
  )
  
  show <glossary>: footnote[See glossary.]

  doc
}