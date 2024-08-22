# Best Practices
General workflow notes, tips, and tricks  

## Formatting
* github-flavored markdown [guide](https://docs.github.com/en/get-started/writing-on-github) and [cheat sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).
* official python style guide - [PEP8](https://peps.python.org/pep-0008/)

## Version Numbering
There are generally 2 schools of thought for versioning:
* Semantic Versioning (SemVer) - good for public libraries with an API where you want to know if a new version will be backward compatible with your existing code. See detailed descriptions [here](https://semver.org/) and [here](https://www.geeksforgeeks.org/introduction-semantic-versioning/)
* Calendar Versioning (CalVer) - good for application releases where the code is not used by a third party and the date of the release is more important than the changes to compatibility. Typically formatted as YYYY.MM.DD.PATCH

There are pros and cons to each. Whatever you choose, it is important to pick something that makes sense and stay consistent.