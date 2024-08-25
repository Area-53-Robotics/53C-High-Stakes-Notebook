#import "@local/notebookinator:1.0.1": utils

#let glossary() = utils.print-glossary(glossary => {
  stack(
    spacing: 0.5em,
    ..for entry in glossary {
      (
        [
          = #entry.word

          #entry.definition
        ],
      )
    },
  )
})