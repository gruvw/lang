#set page(paper: "a4", margin: 2cm)
#set text(font: "Open Sans", size: 14pt)
#set heading(numbering: "1.1 ")

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

#let first-cap(text) = upper(text.first()) + text.slice(1)

#let link-footnote(url, content) = (
    link(url, content) +
    footnote((first-cap(content.text) + ": " + link(url, url)))
)

#let name = [LANG]

#align(horizon + center)[
  #text(size: 32pt)[The #name\ language specifications]
  #v(100pt)
  English\
  Version 0.0.1

  Author: Lucas Jung
]

#pagebreak()

#outline(indent: auto)

#pagebreak()

#set page(numbering: "1")
#counter(page).update(1)

= Introduction

This document is the English version of the specifications for the #name #link-footnote("https://en.wikipedia.org/wiki/Constructed_language")[constructed language].

== Goals and Non-Goals

The goal of this document is to provide a clear, detailed and self-contained explanation of the #name language.

The justification of the choices that lead to design the language as it is are beyond the scope of this document.
This document is purely descriptive and informative on how to use the language for those who wish to learn it.

This document does not aim to be the most intuitive way to learn the #name language.
It is the technical specifications document that define everything about the language

= Philosophy

// Briefly introduce the language's name, core features, and what sets it apart from natural languages and other constructed languages.
// purpose of the language

// Target Audience
// Explain who this language is for: general readers, linguists, enthusiasts, or a specific group.

// modularity

= Module 1: Orthography

// no capital letters

= Module 2: Phonology

= Module 3: Syntax

// no punctuation, punctuation are words
// sentence termination character ?

// numbers

= Module 4: Grammar

= Module 5: Pragmatics

// Examines how context influences language use and meaning in conversation.
// Example content: Politeness strategies, tone, and implied meanings.
// Discusses variations or regional differences within your constructed language.
// Example content: Formal vs. informal language, slang, or alternate pronunciation rules.

= Module 6: Lexicon

== Core words

= Example texts

= To go further
