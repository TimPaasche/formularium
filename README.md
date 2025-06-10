# Formularium

**Formularium** is a Typst package for creating glossaries of formula symbols, often used in scientific and technical documents. It helps you present symbols, their meanings, and units in a clean and structured way.

## Features

- Create glossaries of formula symbols
- Clean and consistent layout
- Easy to use in scientific papers and reports

## Usage

Import the package in your Typst document:

```typ
#import 
```
You need to create dictionary like this (this can be in your `*.typ`-file or in an external `*.typ`-file):

```typ
#let formula-symbols-list = (
  (
    key: "h_sun",
    short: $h_"sun"$,
    description: "Hours of sunshine per day"
  ),
)
```

then register the dictionary:

```typ
#register-formularium(formula-symbols-list)
```

than it is possible to use these symbols in an equastion:

```typ
$ #fsg("h_sun") = 50% dot h_"day" $
```