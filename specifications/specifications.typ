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

#show heading.where(level: 1): it => {
  pagebreak(weak: true)
  it
}

#let first-cap(text) = upper(text.first()) + text.slice(1)

#let link-footnote(url, content) = (
  link(url, content) + footnote((
    first-cap(content.text) + ": " + link(url, url)
  ))
)

#let note = [*Note* -]

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

This section explains the philosophy and purpose of the #name language.
It aims to describe the core values of the language and what sets it apart from natural languages.

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
+ *Consistency* - The language must adhere to uniform and predictable rules, avoiding irregularities and contradictions to minimize its cognitive overhead.
+ *Efficiency* - The language must fulfill its purpose with clarity (avoiding vague or overly complex expressions) in a concise and intelligible way.
+ *Completeness* - The language must be capable of expressing any idea or concept, ensuring no gaps in its expressive capacity.

Additionally, the language is constructed with some degree of modularity to allow the modification of some parts without affecting the language as a whole, making it easier to shape and evolve.
Therefore, its construction is split into multiple modules (see further in the document) that aim to be somewhat independent.

== Examples

Below are a few examples of how the language's core philosophical principles impact the language as a whole.

- Each letter is associated with a single sound, and each sound with a single letter. There are no silent letters.
- Each word has a single form (no #link-footnote("https://en.wikipedia.org/wiki/Inflection")[inflection]). There are no plural form of words, no verb conjugaison, words have neutral gender, etc.
- Each word aims to have a single meaning, avoiding drastically different definition of a word based on context.
- There is no #link-footnote("https://en.wikipedia.org/wiki/Diacritic")[diacritic]: letters have a single form (no accent, no capitalization).
- No special character like dashes, punctuation marks, etc.
- There are no #link-footnote("https://en.wikipedia.org/wiki/Homophone")[homophones], ensuring that every spoken word corresponds uniquely to a written word.
- The vocabulary is constructed to avoid synonym redundancy.
- There is a single language register (no formal vs. informal).

= Module 1: Orthography

This module is the root of the language.
It defines how words are formed from its most basic elements: letter and syllables.\
The orthography of the #name language is designed to be as simple as possible, adhering to the principle of one-to-one correspondence between written and spoken forms.

== Letters

The language is composed of 8 consonants and 8 vowels, making a total of 16 letters in the alphabet.

The consonants are symbols from $C_1$ to $C_8$ and vowels from $V_1$ to $V_8$.
Each letter has its unique (manuscrit) written form along with a #link-footnote("https://en.wikipedia.org/wiki/Latin_alphabet")[Latin Alphabet] equivalent.


#align(center)[
  #let letterWidth = 0.4cm
  #table(
    columns: (auto,) * 9,
    inset: 0.3cm,
    align: center + horizon,
    table.header(
      [#name consonants],
      [$C_1$],
      [$C_2$],
      [$C_3$],
      [$C_4$],
      [$C_5$],
      [$C_6$],
      [$C_7$],
      [$C_8$],
    ),
    [Written], image(
      "img/alphabet/c1.svg",
      width: letterWidth,
    ), image(
      "img/alphabet/c2.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/c3.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/c4.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/c5.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/c6.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/c7.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/c8.svg",
      width: letterWidth,
    ),
    [Latin], [], [], [], [], [], [], [], [],
  )

  #table(
    columns: (auto,) * 9,
    inset: 0.3cm,
    align: center + horizon,
    table.header(
      [#name Vowels],
      [$V_1$],
      [$V_2$],
      [$V_3$],
      [$V_4$],
      [$V_5$],
      [$V_6$],
      [$V_7$],
      [$V_8$],
    ),
    [Written], image(
      "img/alphabet/v1.svg",
      width: letterWidth,
    ), image(
      "img/alphabet/v2.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/v3.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/v4.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/v5.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/v6.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/v7.svg",
      width: letterWidth,
    ),image(
      "img/alphabet/v8.svg",
      width: letterWidth,
    ),
    [Latin], [], [], [], [], [], [], [], [],
  )
]

#note There are no capital letter in the #name language.

== Syllables

// Spelling Rules: The correct arrangement of letters to form words.
// Punctuation: Marks like commas, periods, or question marks to structure sentences.
// Capitalization: Rules for when to use uppercase letters (e.g., at the start of sentences or for proper nouns).
// Diacritics: Marks added to letters to indicate pronunciation (e.g., accents in French, like "é").

== Words

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

// fixed length and variable length
// ascii compatibility

= Example texts

= To go further
