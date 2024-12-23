#set page(paper: "a4", margin: 2cm)
#set text(font: "Open Sans", size: 12pt)
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

#set page(numbering: "1")
#counter(page).update(1)

= Introduction

This document is the English version of the specifications for the #name #link-footnote("https://en.wikipedia.org/wiki/Constructed_language")[constructed language].

== Document Goals and Non-Goals

The goal of this document is to provide a clear, detailed and self-contained explanation of the #name language.

The in-depth justification of the choices that lead to design the language as it is are beyond the scope of this document.
This document is purely descriptive and informative on how to understand and use the language for those who wish to learn it.

This document does not aim to be the most intuitive way to learn the #name language.
It is the technical specifications document that define everything about the language

= Philosophy and Purpose

// Briefly introduce the language's name, core features, and what sets it apart from natural languages and other constructed languages.

== Reason of Existence

Language lies at the heart of humanity, shaping our thoughts, connections, and daily lives through communication, introspection and knowledge management.
Yet, natural languages, born of organic evolution, carry flaws and inconsistencies that often hinder the clear expression of ideas.
Their irregularities in grammar, syntax, and pronunciation makes them hard to grasp and often very difficult to learn.\
Those inherent issues often lead to ambiguities and misunderstandings.
While tools like mathematics or music provide structured and universal methods of expression for specific domains, no such universal system exists for everyday human communication.

Beyond immediate communication, such a language would play a crucial role in preserving and transferring humanity's collective knowledge.
Education, scientific research, entertainment, and historical documentation could all benefit from the clarity and accessibility such a language might bring.
These advancements could democratize knowledge and make it available to a broader audience while avoiding translations and content duplication.

The goal the language #name is not to erase the rich diversity of existing languages, which are deeply intertwined with human culture and history.
It is instead an optimistic initiative to improve human communication and collaboration, ensuring that ideas are shared with clarity and minimal distortion in a global society.

== Principles

The following list represents the principles that govern the language's construction and use, ordered from most important to least important.

+ *Usability* - The language must provide humans with a way to communicate with others (spoken, written, encoded, signed, tactile forms), and support language based thought process.
+ *Simplicity* - The language must follow clear, straightforward rules and structures, making it easy to learn and use.
+ *Efficiency* - The language must fulfill its purpose with clarity (avoiding vague or overly complex expressions) in a concise and intelligible way.
+ *Consistency* - The language must adhere to uniform and predictable rules, avoiding irregularities and contradictions to minimize its cognitive overhead.
+ *Completness* - The language must be capable of expressing any idea or concept, ensuring no gaps in its expressive capacity.
+ *Modularity* - The language must be constructed with some degree of modularity to allow for modifications of some parts without affecting others, making it easier to shape and evolve.

== Examples

Bellow are a few examples of how the language's core philosophy rules impacts the language as a whole.

= Module 1: Orthography

// no capital letters

= Module 2: Phonology

= Module 3: Syntax

// no punctuation, punctuation are words
// sentence termination character ?

// numbers

// verbs can be used as nouns and interchangeably ?

= Module 4: Grammar

= Module 5: Pragmatics

// Examines how context influences language use and meaning in conversation.
// Example content: Politeness strategies, tone, and implied meanings.
// Discusses variations or regional differences within your constructed language.
// Example content: Formal vs. informal language, slang, or alternate pronunciation rules.

= Module 6: Lexicon

== Core words

= Module 7: Accessibility

// signed and tactile

= Module 8: Encoding

= Example texts

= To go further
