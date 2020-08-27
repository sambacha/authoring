```
{some-attribute=value}

{some-attribute=”some attribute value”}

Quotes are only necessary if there are spaces.

You can have multiple attributes too. Separate them with commas.

{language=ruby,line-numbers=off}

Spaces are not significant, so you could also write:

{language=ruby, line-numbers=off}

or

id: {#some-id}

So, for example, if you want a file or section to be front matter (like an introduction, which will have roman numerals for page numbers), at the top of the file or section just type:

{frontmatter}

Or if you want to turn on line numbering just for that section, type:

{line-numbers=on}

Here are the attributes supported:

general: id code blocks: language, line-numbers files: encoding

special names: {pagebreak} {frontmatter} {mainmatter} {backmatter}
```
