#import "@local/notebookinator:1.0.1": *

#import "../ctheme/entry-types.typ": *
#import "../ctheme/ctheme.typ": ctheme, components

#show: notebook.with(theme: ctheme)

#glossary.add-term("Term")[ definition ]

#create-appendix-entry(title: "Glossary")[
  #components.glossary()
]