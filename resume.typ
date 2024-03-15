#set page(
  margin: (x: 0.9cm, y: 1.2cm),
)

#set par(
  justify: true
)

#let chiline() = {
  v(-3pt); 
  line(length: 100%); 
  v(-5pt)
}

#set text(
  font: "GFS Neohellenic",
  size: 13pt
)

#show heading: it => [
  #set text(
    font: "Reforma 1918"
  )
  #block(it.body)
]

// #show heading.where(
//   level: 2
// ): it => {
//   smallcaps(it)
// }

#show link: it => underline(
  offset: 2pt,
  it
)

#let today() = {
  let month = (
    "January", "February", "March", "April", "May", "June", "July",
    "August", "September", "October", "November", "December",
  ).at(
    datetime.today().month() - 1);
    let day = datetime.today().day();
    let year = datetime.today().year();
    [#month #day, #year]
}

#align(center)[

= Edgar Allan Poe

#box( 
  baseline: 1pt,
  image(
    "pin.svg", 
    height: 11pt
  )
)
Earth, Milky Way
#h(0.4cm)
#box( 
  baseline: 1pt,
  image(
    "sourcehut.svg", 
    height: 11pt
  )
)
#link("https://git.sr.ht/")[git.sr.ht/\u{223C}example]
#h(0.4cm)
#box( 
  baseline: 1pt,
  image(
    "globe.svg", 
    height: 11pt
  )
)
#link("https://example.com")[example.com]
#h(0.4cm)
#box(
  baseline: 1pt,
  image(
    "send.svg", 
    height: 11pt
  )
) 
resume\@example.com
]

#block(
  fill: luma(230),
  radius: 4pt,
  outset: 5pt,
  stroke: 1pt + luma(160)
)[== About Me
#chiline()

#lorem(42)
]

== Technical Skills
#chiline()

/ Proficient in: #lorem(8) \
/ Experienced in: #lorem(8) \
/ Interested in: #lorem(6) \

== Educational Experience
#chiline()

*University:* M.A. #lorem(3) #h(1fr) Sept. 1004 – June 1006 \
- #lorem(8) 

*University:* B.S. #lorem(3) #h(1fr) Sept. 1000 – June 1004 \
- #lorem(8) 

== Blog & Other Projects
#chiline()

*project* #h(1fr)
  #box( 
    baseline: 1pt,
    image(
      "sourcehut.svg", 
      height: 11pt
    )
  )   #link("https://git.sr.ht")[git.sr.ht/\u{223C}example/project]
  $fence.dotted$
  #box( 
    baseline: 1pt,
    image(
      "globe.svg", 
      height: 11pt
    )
  )
  #link("https://example.com")[example.com/project] \
#lorem(8) \
- #lorem(14)
- #lorem(15)
- #lorem(10)

*project* #h(1fr)
  #box( 
    baseline: 1pt,
    image(
      "sourcehut.svg", 
      height: 11pt
    )
  )   #link("https://git.sr.ht")[git.sr.ht/\u{223C}example/project]
  $fence.dotted$
  #box( 
    baseline: 1pt,
    image(
      "globe.svg", 
      height: 11pt
    )
  )
  #link("https://example.com")[example.com/project] \
#lorem(8) \
- #lorem(14)
- #lorem(15)
- #lorem(10)

*project* #h(1fr)
  #box( 
    baseline: 1pt,
    image(
      "sourcehut.svg", 
      height: 11pt
    )
  )   #link("https://git.sr.ht")[git.sr.ht/\u{223C}example/project]
  $fence.dotted$
  #box( 
    baseline: 1pt,
    image(
      "globe.svg", 
      height: 11pt
    )
  )
  #link("https://example.com")[example.com/project] \
#lorem(8) \
- #lorem(14)
- #lorem(15)
- #lorem(10)


== Miscellaneous
#chiline()

/ Certifications in: #lorem(8) \
/ Interests in: #lorem(12)

#align(
  right, 
  text(fill: luma(130), 
  size: 12pt
)[Last updated on #today().])