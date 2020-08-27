# Markua Markdown Flavoured Format

Leanpub Flavoured Markdown will still be supported on Leanpub for years after the Markua 0.29 beta is launched.

LFM supports the Setext style of Markdown headers (===== and -----) as well as the atx style of Markdown headers (# Chapter, ## Section, etc.) Leanpub’s implementation of Markua 0.10 only supports atx headers. Leanpub’s implementation of Markua 0.29 will support the Setext and the atx style of Markdown headers. So, if you have an existing Markdown document with a lot of Setext headers, you may be better off sticking with LFM for now. (If, on the other hand, you’ve never heard of Setext headers and/or you don’t use them, this will not be an issue for you.)

In Leanpub’s implementation of Markua 0.10, a single newline in a paragraph is always a forced line break. This was a mistake, and it should have been configurable. For the reasoning about why a single newline is a forced line break, see this.

In LFM, a single newline is handled the way that it is done in Markdown: it is treated as a single space, and not as a forced line break, unless the “two space hack” at the end of the line is used. Leanpub’s implementation of Markua 0.29 will support configurable handling of single newlines, to be either treated as forced line breaks or as the way that they are treated in Markdown. So, if you have an existing Markdown document with a lot of single line breaks which you had added just to manually wrap paragraph text in your manuscript, you will DEFINITELY be better off sticking with LFM for now.

In LFM, parts are created with -#. In Markua, parts are created with # Part # now, and will be created with an attribute list on an atx or Setext heading in future.
In LFM, there is a special syntax for inserting code samples: <<[Optional Title](code/some_code_file.rb). In Markua, however, code is just a resource with its own syntax for inserting from external files, and the LFM syntax is not supported.

In LFM, to mark code as added or removed, the magic words were leanpub-start-insert, leanpub-end-insert, leanpub-start-delete and leanpub-end-delete. In Markua, the magic words are markua-start-insert, markua-end-insert, markua-start-delete and markua-end-delete.

In LFM, there is a special syntax for inserting math: {$$}...{/$$}. This looks nice to people who like LaTeX, and looks like nothing else in Markdown. In Markua, however, math is just another resource, and that LaTeX-inspired syntax for wrapping math resources is not supported.
In LFM, there are G> “generic boxes”. In Markua, these are replaced with blurbs (B>).

LFM had the C> syntax to center text, but we didn’t have the same effect on generic boxes, and blurbs did not exist. In Markua, a C> syntax is just syntactic sugar for a centered blurb, for greater consistency. Because of this, the blurb also gets the ability to be centered by adding a {class: center} attribute.
LFM had {rtl} and {ltr} directives. These are not supported in Markua, and neither is a {dir} attribute in general: any given language is either a left-to-right or a right-to-left language, so specifying the language is sufficient.

LFM used Sample.txt to define the sample content. Markua moves the definition of what constitutes sample content into a {sample: true} attribute on parts, chapters and sections. So, in Markua, inclusion in the sample is at the content level, not the file level. This helps avoid a number of bugs that could happen with including at the file level, if a file did not clearly break at a chapter boundary. (So, in Leanpub, the Sample.txt approach is not supported for books which use Markua.)
