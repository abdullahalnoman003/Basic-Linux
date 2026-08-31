# Welcome!

Thanks for your interest in contributing to **Basic Linux — Learn Linux From Scratch To Advanced**.

This is a free, open-source, community-driven learning repository. Whether you are a total beginner
reading the guides, or an experienced sysadmin who wants to fix a typo, add a lab, or improve an
explanation — your help is welcome.

## How to contribute

1. **Fork** the repository.
2. **Create a branch**: `git checkout -b my-improvement`
3. **Make your changes** and commit them with a clear, descriptive message:
   ```
   git commit -m "Add lab: environment variables in bash"
   ```
4. **Push** to your fork: `git push origin my-improvement`
5. Open a **Pull Request** describing what you changed and why.

## What kind of changes help most

- Fixing errors in command examples (and testing they actually run!)
- Adding new practice labs with clear **instructions + expected output**
- Improving explanations to be friendlier to absolute beginners
- Adding "Common mistakes" or "You may also want to check" tips
- Translating guides to other languages
- Adding a new module under `10-Advanced/` or a new `projects/` idea

## Guidelines

- Keep the tone **beginner-friendly** — a reader may not have any prior experience.
- Every **command** should be wrapped in fenced code blocks, and we show the **expected output**
  whenever it is practical.
- Add a `## Practice` or `## Try it yourself` section to content where you can.
- Do **not** include internal names, student IDs, or personal data in examples.
- Only include **stable / reproducible** commands that work on a standard Ubuntu/Debian system.
- If you add a shell script, make sure it starts with a proper shebang (`#!/bin/bash`) and is
  executable.

## Reporting issues

If you find a bug, a broken command, or a confusing explanation, please open an
[issue](https://github.com/anomalyco/opencode/issues) and include:

- Which module and section the issue is in
- The command you ran
- The exact error/output you saw

## License

By contributing, you agree that your contributions will be licensed under the
[MIT License](LICENSE).
