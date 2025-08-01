# CLAUDE.md

## General Guidelines

- Prioritize **simplicity**, **readability**, and **modularity**
- Less code is better than more code — avoid overengineering
- Use comments sparingly and only when the code isn't self-explanatory
- Follow current best practices for the language and framework

### Naming

- Use meaningful, descriptive names that reflect the true purpose of the variable — not just its usage context
    - ✅ `artworkColor`
    - ❌ `backgroundColor`

- Use idiomatic casing:
    - JavaScript/TypeScript → `camelCase`
    - Python → `snake_case`

- Avoid:
    - Single-letter variables
    - Acronyms or unnecessary abbreviations

- Acronyms in camelCase should be lowercase:
    - ✅ `userId`
    - ❌ `userID`

- Booleans:
    - Use prefixes like `is`, `has`, `should`, etc.
        - ✅ `isVisible`, `hasChildren`

    - Setters should follow the pattern: `setIsVisible`, `setHasChildren`

### Functional Style

- Prefer functional programming and immutability unless it harms clarity or performance

---

## JavaScript / TypeScript

- Use `const` or `let` — never `var`
- Prefer arrow functions for all function expressions

---

## CSS

- Use `px` for measurements unless there's a strong reason not to
- Prefer `flexbox` over other layout systems unless an alternative is clearly superior
- Avoid:
    - `!important`
    - `width: 100%` / `height: 100%` — use flex or constraints instead

---

## React

- Use **functional components** exclusively

- Component file structure:

    ```
    ComponentName/
        ComponentName.jsx
        ComponentName.module.css
    ```

- Prefer **CSS Modules with class selectors** over inline styles
