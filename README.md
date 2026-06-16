# Best Practices
General notes, tips, and tricks for writing better code and building better projects.

**Quick Links:**\
[Project Folder Structure](#project-folder-structure)\
[Python](#python)\
[Visual Studio Code](#visual-studio-code)\
[Markdown](#github-flavored-markdown)\
[Version Numbering](#version-numbering)\
[Powershell]()

# The New Hotness
a.k.a. things I think might be cool and want to learn more.\
*Rust, rust everywhere - Buzz Lightyear, probably*

### [UV](https://github.com/astral-sh/uv) Package Manager
New tool that takes over packageS, environment, publishing and more.
I liked this [deep dive](https://www.saaspegasus.com/guides/uv-deep-dive/) and the official [blog post](https://astral.sh/blog/uv) on the Astral website.

### [Ruff](https://astral.sh/ruff) Code Formatter/Linter
Also run by Astral, also written in Rust. This seems to be quite popular, but I haven't tried it yet. I currently use the [Black](https://marketplace.visualstudio.com/items?itemName=ms-python.black-formatter) formatter and default linter (Pylance I think?) in vscode. Ruff is also available as a vscode [extension](https://marketplace.visualstudio.com/items?itemName=charliermarsh.ruff).

### [Polars](https://pola.rs/) DataFrame Library
Similar to the commonly used [pandas](https://pandas.pydata.org/) library, but polars is written in Rust (rather than C). As a result, it appears to be much faster for big-data operations and the syntax seems to be simpler, although might take some getting used to. I liked this [getting started](https://docs.pola.rs/user-guide/getting-started/) guide and this [migration guide](https://docs.pola.rs/user-guide/migration/pandas/) on switching from pandas since that is what im familiar with.

# Visual Studio Code 
This is my primary development tool WIP
### Extensions
### Theme
### Layout
### Settings

# Python
official python style guide - [PEP8](https://peps.python.org/pep-0008/)

## Virtual Environments
It's a good idea to maintain a virtual environment for each project.
This helps keep track of exactly what libraries are needed for a project to work properly.
That information can then be shared with other users via the requirements.txt and freeze.txt files.



# Project Folder Structure
stuff about folder layout WIP
```
├ project_folder
├───docs
├───media
├───scripts
├───src
│   └───assets
└───test
```
**Note:** use the ```tree``` command  in a terminal to get the folder structure of the current directory.

# GitHub-Flavored Markdown
Markdown is an extremely useful and flexible text format. 
It can be used to render clean and concise documentation using features described in the github-flavored markdown 
[guide](https://docs.github.com/en/get-started/writing-on-github) 
and [cheat sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).

## Code Blocks

**Python-flavored code block**
```python
# triple back-ticks (```) make a code block
# syntax highlight defined in top line 

import pandas as pd
df = pd.read_csv('file.csv')
```

**Block quote**
>long string of text, will auto wrap when rendered. kinda nice to have if something goes on longer that you thought but you still want it to be readable.

**Formula code block**
based on [KaTeX](https://katex.org/docs/supported.html)

$$
\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)
$$

$$
m_{total} = \prod_{i=1}^n (1-m_i)
$$

**Inline formula symbols**

Some text. Now a formula:
$a_k = b^n + c$ with more text \
And some more text on a new line.

More examples:
*  $a_{long}$ = long subscript
*  $b^k$ = superscript
*  $\mu$ = symbol mu

without bullets, in a block quote:
>$\overline{AB}$ = overline \
$\dot{m}$ = dot


## Diagrams
Can be rendered with the the [mermaid](https://mermaid.js.org/) diagram format. 
Vscode might need an extension to render these, I had luck with 
[this](https://marketplace.visualstudio.com/items?itemName=bierner.markdown-mermaid) 
one which is available for free. Mermaid diagrams should be natively supported by 
[GitHub](https://docs.github.com/en/get-started/writing-on-github/working-with-advanced-formatting/creating-diagrams)
as of 2022.
Examples below, and more, are shown in the official 
[docs](https://mermaid.js.org/intro/syntax-reference.html).



**Flow Chart**
```mermaid
flowchart TD;
    A[Start]-->B;
    A-->C;
    B-->D;
    C-->D;
    D-->A;
    C-->E[Stop];
```

**Gantt Chart**
```mermaid
gantt
    title A Gantt Diagram
    dateFormat YYYY-MM-DD
    section Section
        A task          :a1, 2014-01-01, 30d
        Another task    :after a1, 20d
    section Another
        Task in Another :2014-01-12, 12d
        another task    :24d

```

**Pie Chart**
```mermaid
pie title Pets adopted by volunteers
    "Dogs" : 386
    "Cats" : 85
    "Rats" : 15
```

**Mind Map**
```mermaid
mindmap
  root((mindmap))
    Origins
      Long history
      ::icon(fa fa-book)
      Popularisation
        British popular psychology author Tony Buzan
    Research
      On effectiveness<br/>and features
      On Automatic creation
        Uses
            Creative techniques
            Strategic planning
            Argument mapping
    Tools
      Pen and paper
      Mermaid
```




# Version Numbering
There are generally 2 schools of thought for versioning:
* Semantic Versioning (SemVer) - good for public libraries with an API where you want to know if a new version will be backward compatible with your existing code. See detailed descriptions [here](https://semver.org/) and [here](https://www.geeksforgeeks.org/introduction-semantic-versioning/)
* Calendar Versioning (CalVer) - good for application releases where the code is not used by a third party and the date of the release is more important than the changes to compatibility. Typically formatted as YYYY.MM.DD.PATCH

There are pros and cons to each. Whatever you choose, it is important to pick something that makes sense and stay consistent.


# Powershell
Powershell (only applies to windows machines) is the default terminal for VScode. 
It can be used to execute simple scripts to automate processes that use the command line such as 
setting up a [virtual environment](#virtual-environments) or building a compiled version of your code.