# Formularium

**Formularium** is a Typst package designed to help you create glossaries of formula symbols—ideal for scientific and technical documents. It provides a clean, structured way to present symbols, their meanings, and units.

## ✨ Features

- Glossary creation for formula symbols  
- Clean and consistent layout  
- Easy integration into scientific papers and reports  

## 🚀 Usage

### 1. Import the Package

In your Typst document, import the package:

```typ
#import "formularium.typ": *
```

### 2. Define Your Symbols
Create a dictionary of symbols. This can be placed directly in your *.typ file or in an external file:

```typ
#let formula-symbols-list = (
  (
    key: "h_sun",
    short: $h_"sun"$,
    description: "Hours of sunshine per day",
  ),
)
```

### 3. Register the Dictionary
Register your symbol list with the package:

```typ
#register-formularium(formula-symbols-list)
```

### 4. Use Symbols in Equations
Now you can reference your symbols in equations:

```typ
$ #fsg("h_sun") = 50% · h_"day" $
```

## 📄 License
This package is licensed under the MIT License.
Enjoy using it and have fun! 😀

