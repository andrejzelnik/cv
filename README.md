# Curriculum Vitae

My CV, written in [Typst](https://typst.app/) and compiled to PDF via GitHub Actions.

**[Download the latest PDF](Andrej_Zelnik_CV.pdf)**

## Local development

Install Typst, then:

```sh
# Compile once
typst compile --font-path fonts cv.typ Andrej_Zelnik_CV.pdf

# Watch for changes (live reload)
typst watch --font-path fonts cv.typ Andrej_Zelnik_CV.pdf
```

## How it works

Every push to `main` triggers a GitHub Actions workflow that:

1. Compiles `cv.typ` into `Andrej_Zelnik_CV.pdf`
2. Uploads the PDF as a build artifact
3. Commits the updated PDF back to the repository
