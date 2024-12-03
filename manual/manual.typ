#set page(paper: "a4", numbering: "1", margin: 2cm)
#set text(font: "Open Sans", size: 14pt)
#show link: it => [
  #set text(blue)
  #underline(it.body)
]
#show raw: set text(font: "Fira Code", size: 13pt)
#set par(justify: true)

#show raw.where(block: false): box.with(
  fill: luma(240),
  inset: (x: 4pt, y: 0pt),
  outset: (y: 4pt),
  radius: 2pt,
)
#show raw.where(block: true): block.with(
  width: 100%,
  fill: luma(240),
  inset: 10pt,
  radius: 4pt,
)

= Lang
