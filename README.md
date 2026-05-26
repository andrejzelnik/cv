# Curriculum Vitae

My CV, written in [Typst](https://typst.app/) and compiled to PDF via GitHub Actions.

**[Download the latest PDF](cv.pdf)**

## Local development

Install Typst, then:

```sh
# Compile once
typst compile --font-path fonts cv.typ

# Watch for changes (live reload)
typst watch --font-path fonts cv.typ
```

## How it works

Every push to `main` triggers a GitHub Actions workflow that:

1. Compiles `cv.typ` into `cv.pdf`
2. Uploads the PDF as a build artifact
3. Commits the updated `cv.pdf` back to the repository
