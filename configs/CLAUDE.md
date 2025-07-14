# CLAUDE.md

## General code style

- Simplicity, readability, and modularity are the most important code qualities

- Always follow latest best practices

- Excellent variable naming is very important

  - For casing, use best most common practices for the coding language
    - (i.e.: JS / TS = camelCase, python = snake_case, etc.)
  - Variables names should convey the underlying meaning of a variable, not just how its being used in the current context
    - (i.e.: if we extract a color from a piece of artwork, then use it as a background color in the app, it would be better to call this variable "artworkColor" rather than "backgroundColor")
  - Use short, descriptive words for variable names. Avoid single letters and acronyms
  - Camel case acronyms should not use all caps
    - (i.e.: userId = good, userID = bad)
  - For booleans, always use 'is' or 'has' prefixes (or similar) (i.e.: isBlue, hasChildren)
    - Setters for booleans should be the name of boolean prefixed by 'set' (i.e.: setIsBlue, setHasChildren)

- Prefer functional programming styles and immutability (unless doing so would make the code worse)

- It's better to create mutiple, modular files with distinct purposes, rather than giant monolith files

- Always use feature-based file and folder organization

  - i.e.:

    - map/
      - mapRendering.js
      - mapLayers.js
      - useMap.js
      - Map/
      - Map.jsx
      - Map.module.css

  - Avoid deep nesting of feature folders

  - Feature folders should be lower-cased

- Don't modify the README.md

- Format comments with a capital letter. No periods are needed unless multiple sentences are written

- Do not overly-comment, err on the side of fewer comments

- Use whitespace to separate logically connected sections of code

  - If a block of code is unclear, add a comment above it

- Avoid using external dependencies when possible (unless they provide great value and are well established)

- Regardless of language choice, the principles from the "Zen of Python" are great guidelines:
  - Beautiful is better than ugly
  - Explicit is better than implicit
  - Simple is better than complex
  - Complex is better than complicated
  - Flat is better than nested
  - Sparse is better than dense
  - Readability counts
  - Special cases aren't special enough to break the rules
  - Although practicality beats purity
  - Errors should never pass silently
  - Unless explicitly silenced
  - In the face of ambiguity, refuse the temptation to guess
  - There should be one, and preferably only one, obvious way to do it
  - Now is better than never
  - Although never is often better than right now
  - If the implementation is hard to explain, it's a bad idea
  - If the implementation is easy to explain, it may be a good idea

## JS / TS code style

- Prefer arrow functions

- Never use "var"

- Prefer the use of the latest JS / TS features (unless there are disadvantages)

- Use "//" for comments. Avoid "/\* \*/"

- Prefer "??" to "||" for defaulting operations

- When adding permanent console statements, use console.info, console.warn, or console.error
  - Reserve console.log for temporary debugging statements only

## CSS code style

- In CSS, prefer using "px" for measurements

- Avoid using "width: 100%" or "height: 100%"

- Always prefer flexbox (unless a different approach has a clear advantage)

- Always prefer CSS modules

## React code style

- Always use functional components

- React components files should always be structured as the following (folder with two files in it). Example:

  - ComponentName/
    - ComponentName.jsx
    - ComponentName.module.css

- Always prefer classes to inline styles

- Never use !important

## Redux code style

- In redux slices, don't export actions (instead refer to them like: mainSlice.actions.performaAction())
