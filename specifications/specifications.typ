#set document(date: none)
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

#let moduleCounter = counter("module")
#let moduleHeading(content) = context {
  moduleCounter.step()
    let number = moduleCounter.at(here()).at(0)
    heading(
      level: 1,
      [Module #number - #content],
    )
}

#let phonetic(content) = {
  set text(font: "Roboto")
  [\[#content\]]
}

#let note = [*Note* -]
#let use(content) = text(fill: blue)["#content"]

#let name = [LANG]

#align(horizon + center)[
  #text(size: 32pt)[The #name\ language specifications]
  #v(100pt)
  English\
  Version 0.0.2

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
- No special character like dashes and aostrophe.
- There are no #link-footnote("https://en.wikipedia.org/wiki/Homophone")[homophones], ensuring that every spoken word corresponds uniquely to a written word.
- The vocabulary is constructed to avoid synonym redundancy.
- There is a single language register (no formal vs. informal).

#moduleHeading[Orthography and Phonology]

This module is the root of the language.
It defines how words are formed from its most basic elements: letter and syllables.\
The orthography of the #name language is designed to be as simple as possible, adhering to the principle of one-to-one correspondence between written and spoken forms.

== Letters

The language is composed of 6 vowels and 14 consonants, making a total of 20 letters in the alphabet.

The vowels are noted $V_1$ to $V_6$ and the consonants $C_1$ to $C_14$.
Each letter is given with its #link-footnote("https://en.wikipedia.org/wiki/Latin_alphabet")[Latin Alphabet] equivalent and its #link-footnote("https://en.wikipedia.org/wiki/International_Phonetic_Alphabet")[IPA] pronounciation.

#align(center)[
  #table(
    columns: (auto,) * 7,
    inset: 0.3cm,
    align: center + horizon,
    table.header(
      [Vowels],
      ..range(6).map(i => [$V_#(i+1)$]),
    ),
    [Latin], [a], [e], [i], [o], [u], [y],
    [IPA], phonetic([a]), phonetic([e]), phonetic([i]), phonetic([o]), phonetic([u]), phonetic([ai̯]),
  )

  #table(
    columns: (auto,) * 15,
    inset: 0.2cm,
    align: center + horizon,
    table.header(
      [Consonants],
      ..range(14).map(i => [$C_#(i+1)$]),
    ),
    [Latin], [f], [s], [x], [j], [w], [p], [t], [k], [b], [d], [g], [m], [n], [l],
    [IPA], phonetic([f]), phonetic([s]), phonetic([ʃ]), phonetic([j]), phonetic([w]), phonetic([pʰ]), phonetic([tʰ]), phonetic([kʰ]), phonetic([b]), phonetic([d]), phonetic([g]), phonetic([m]), phonetic([n]), phonetic([l]),
  )
]

- There are no capital letter in the #name language.
- There are no letters that have context-dependent sound values.
- #use[y] is a single vowel: the sound of "eye" in English, gliding from #phonetic([a]) to #phonetic([i]).
- #use[p], #use[t] and #use[k] are aspirated (followed by a small puff of air). #use[b], #use[d] and #use[g] are fully voiced.
- #use[l] is always a clear #phonetic([l]) (as in French or Spanish), never a tap. #use[n] is fully nasal.

== Syllables

In the #name language, every syllable is formed of two letters: a consonant followed by a vowel (of the form $C_i V_j$).

Therefore, there are a total of $14 times 6 = 84$ possible syllables in #name.

== Stress

The first syllable of every word is lightly stressed (slightly louder and longer).

- Stress never changes the meaning of a word.
- Unstressed syllables keep the full sound of their vowel.

== Words

A word in the #name language is made by concatenating from 1 up to 4 syllables.

The length of a word is given by its first syllable:

#align(center)[
  #table(
    columns: 4,
    inset: 0.3cm,
    align: center + horizon,
    table.header([First consonant], [First vowel], [Word length], [Possible words]),
    [f s x j w], [any], [1 syllable], [30],
    [p t k b d g], [any], [2 syllables], [3,024],
    [m n l], [a e i o y], [3 syllables], [105,840],
    [m n l], [u], [4 syllables], [1,778,112],
  )
]

The 30 words made of a single syllable are called core words (see @core-words).

#note Words of 4 syllables are reserved for the future evolution of the language and are not used yet.

=== Word Boundaries

Since the first syllable of each word gives its length, the boundaries between words are fully determined by the sounds alone.
No pause is needed between words when speaking.

For example, the sequence of sounds #use[fatokimelosa] can only be read as #use[fa toki melosa]:
#use[f] starts a 1 syllable word, #use[t] a 2 syllables word and #use[m] (followed by #use[e]) a 3 syllables word.

In writing, words are always separated by a single space.
The space only marks these boundaries and carries no additional information.

=== Spelling

By design the need to spell words out loud in the #name language is quite rare:

- Each letter is assigned to a single sound/prononciation: no silent letter.
- Each sound is assigned to a single letter: no new sound by combining letters.
- There are only 20 letters/sound: not many possibilities.
- Sounds have been chosen to be easy to pronounce and relatively distinct.
- You always expect the interleaving of consonants and vowels: no difficult sound like those formed by multiple consonants, reduce the set of expected letters you could hear to 14 consonants or 6 vowels.

However, if you end up still needing to spell a word out loud (e.g. over the radio), do so simply by repeating the word: to spell #use[tali] we would say #use[tali tali].

#moduleHeading[Syntax]

// Punctuation: Marks like commas, periods, or question marks to structure sentences.
// Capitalization: Rules for when to use uppercase letters (e.g., at the start of sentences or for proper nouns).

// no punctuation, punctuation are words
// sentence termination character ?

// numbers

// verbs can be used as nouns and interchangeably ?

#moduleHeading[Grammar]

#moduleHeading[Pragmatics]

// Examines how context influences language use and meaning in conversation.
// Example content: Politeness strategies, tone, and implied meanings.
// Discusses variations or regional differences within your constructed language.
// Example content: Formal vs. informal language, slang, or alternate pronunciation rules.

#moduleHeading[Lexicon]

== Core words <core-words>

== Word Assignment

- The most frequent concepts are given the shortest words.
- Some words are kept unassigned for now: words containing #use[y], the core words #use[ji] and #use[wu], and all 4 syllables words.
- Frequent words never differ by a single close sound only (#use[p]/#use[t]/#use[k], #use[b]/#use[d]/#use[g], #use[m]/#use[n]/#use[l], #use[s]/#use[x], #use[a]/#use[y]).
- 3 syllables words never differ only by #use[m]/#use[n]/#use[l] in their first syllable.
- A word is never reassigned to a new meaning. An obsolete word is marked as deprecated and keeps its meaning.

== Compounds

- Words placed side by side keep their literal meaning.
- A fixed compound term joins its parts with a dedicated core word.
- A very frequent compound term can receive its own (shorter) word, the compound term is then deprecated.

#moduleHeading[Accessibility]

// signed and tactile

#moduleHeading[Encoding]

// fixed length and variable length
// ascii compatibility
// no space needed: word boundaries are implicit

= Example texts

= To go further
