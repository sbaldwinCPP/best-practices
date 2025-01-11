# Best Practices
General workflow notes, tips, and tricks  

## Formatting
### Markdown (this document)

github-flavored markdown [guide](https://docs.github.com/en/get-started/writing-on-github) and [cheat sheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)

**Python-flavored code block**
```python
# triple back-ticks make a code block
# syntax highlight defined in top line 

import pandas as pd
df = pd.read_csv('file.csv')
```

**Formula code block**
based on [KaTeX](https://katex.org/docs/supported.html)
```math
\left( \sum_{k=1}^n a_k b_k \right)^2 \leq \left( \sum_{k=1}^n a_k^2 \right) \left( \sum_{k=1}^n b_k^2 \right)
```

```math
m_{total} = \prod_{i=1}^n (1-m_i)
```


**inline formula symbols** \
Some text. Now a formula:
$a_k = b^n + c$ with more text \
And some more text on a new line.

More examples:
*  long subscript: $a_{long}$
*  superscript: $b^k$ 
*  symbol(mu, micro): $\mu$
*  overline: $\overline{AB}$
*  dot: $\dot{m}$
```

**Block quote**
>long string of text, will auto wrap when rendered. kinda nice to have if something goes on longer that you thought but you still want it to be readable.




### Python
* official python style guide - [PEP8](https://peps.python.org/pep-0008/)

## Version Numbering
There are generally 2 schools of thought for versioning:
* Semantic Versioning (SemVer) - good for public libraries with an API where you want to know if a new version will be backward compatible with your existing code. See detailed descriptions [here](https://semver.org/) and [here](https://www.geeksforgeeks.org/introduction-semantic-versioning/)
* Calendar Versioning (CalVer) - good for application releases where the code is not used by a third party and the date of the release is more important than the changes to compatibility. Typically formatted as YYYY.MM.DD.PATCH

There are pros and cons to each. Whatever you choose, it is important to pick something that makes sense and stay consistent.