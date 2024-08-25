#import "./components/components.typ"
#import "./colors.typ": *
#import "./entries.typ": cover, frontmatter-entry, body-entry, appendix-entry
#import "./format.typ": set-heading
#import "./rules.typ": rules

#let ctheme = (
  rules: rules,
  frontmatter-entry: frontmatter-entry,
  body-entry: body-entry,
  appendix-entry: appendix-entry
)