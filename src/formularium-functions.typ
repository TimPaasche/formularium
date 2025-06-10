#let formula-symbols-list = state("fsl", ())

#let fsg(key) = {
  link(<formula-symbols-glossary>, context formula-symbols-list.get().find(item => item.at("key") == key).at("short"))
}

#let register-formularium(fsl) = {
  formula-symbols-list.update(fsl)
}

#let make-formularium(body, headline: "Glossary of Formula Symbols") = [
  #heading()[#headline]<formula-symbols-glossary>

  #context [ 
  #let data = formula-symbols-list.get()
  #grid(
    columns: (25%,75%),
    row-gutter: 3mm,
    ..for entry in data{
      ([*#entry.short #h(1mm):*], [#entry.description])
    }
  )
  ]
  #pagebreak()
  #body
]