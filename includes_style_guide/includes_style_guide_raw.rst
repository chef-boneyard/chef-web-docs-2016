.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The CHEF style guide is just a limited subset of the full capabilities of Sphinx, with regard to formatting and authoring options. Generally, if it's not listed here, we're not using it. Use this style guide when you MUST author a file in Markdown so that it may be more easily converted to reStructuredText later.

All of the documents built by Sphinx can be found at https://docs.chef.io.

Basic Doc Template
=====================================================
All documents must have a title and a body.

Topic Titles
-----------------------------------------------------
Each topic can have a single topic title. Use the equals symbol (=) above and below the header name. What it looks like as reST::

   =====================================================
   header name goes here
   =====================================================

This is the only section header that requires the structure above and below the header.

Body
-----------------------------------------------------
The body of the topic contains anything else needed for the topic. Often, a topic contains an include file (or three), and then some topics contain sub-headers. Most of the topics that are published to https://docs.chef.io contain a series of includes files. When authoring a draft topic in Markdown, this is not necessary.

Section Headers
=====================================================
Section headers create structure in a document. When section headers are part of a topic that is included in other topics, those headers are treated as if they first appeared at that location (and are bumped down appropriately). For this, and for other cosmetic reasons, the headers in CHEF documents are limited to 4 levels beyond the topic title. If headers are required beyond that, they should only be done using standard emphasis and white space or through some other creative method (such as creating more topics with less TOC depth).

Sphinx allows many different conventions for how headers can exist in documents and looks for consistency to determine which ones go where. The width of the header must be equal to (or longer) than the length of the text in the header and (ideally) the same width for headers are used everywhere. (Having everything the same width can help spot the headers during reviews or when trying to find bugs in topics. The following sections describe the section header pattern that CHEF is using for topic titles, H1s, H2s, H3s, H4s, and the occasional H5.

.. note:: As a general rule, try to limit the number of header levels to no more than 2 within a topic. There can be exceptions, of course, and especially if the document is very large, but remember that HTML TOC structures usually have width limitations (on the display side) and the more structure within a TOC, the harder it can be for users to figure out what's in it.

H1
-----------------------------------------------------
If a topic requires a sub-header, this is the first one to use. Use the equals symbol (=) below the header name. What it looks like as reST:: 

   header name goes here
   =====================================================
   This is the paragraph.

H2
-----------------------------------------------------
If an H1 requires a sub-header, this is one to use. Sphinx will generate errors if this header is not a child of an H1. Use the dash symbol (-) below the header name. What it looks like as reST:: 

   header name goes here
   -----------------------------------------------------
   This is the paragraph.

H3
-----------------------------------------------------
If an H2 requires a sub-header, this is one to use. Sphinx will generate errors if this header is not a child of an H2. Use the plus symbol (+) below the header name. What it looks like as reST:: 

   header name goes here
   +++++++++++++++++++++++++++++++++++++++++++++++++++++
   This is the paragraph.

H4
-----------------------------------------------------
If a H3 requires a sub-header, this is the one to use. Sphinx will generate errors if this header is not a child of an H3. Use the caret symbol (^) below the header name. What it looks like as reST:: 

   header name goes here
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   This is the paragraph.

H5
-----------------------------------------------------
Only 4 levels of headers are supported (title, H2, H3, and H4). Conversely, when more than 4 levels of headers are required, re-think the header structure rather than go deeper. If, in the rare instance a lower-level header is needed, use a bold emphasis and then white space to provide the visual treatment and content separation. What it looks like as reST:: 

   **header name goes here**         # in regular bold emphasis
                                     # this is a hard return
   content, as normally authored.

What an "H5 header" link looks like after it's built:

**Header**

content, as normally authored.


Lists and Tables
=====================================================
Lists and tables can be useful. The following sections describe the various lists and tables that CHEF is using for its documentation.

Bullet Lists
-----------------------------------------------------
Bulleted lists are useful for breaking up text blocks and for drawing attention to a group of items. What it looks like as reST:: 

   * text goes here
   * text goes here
   * text goes here
   * text goes here

Use the asterisk symbol (*) only for bulleted lists, even though Sphinx supports using other symbols. What bullets look like after they are built:

* text goes here
* text goes here
* text goes here
* text goes here

Numbered Lists
-----------------------------------------------------
Numbered lists are good for when people need to understand a list of information in a specific order, such as for how-tos or for process details. What it looks like as reST:: 

   #. text goes here
   #. text goes here
   #. text goes here
   #. text goes here

Use the number symbol (#) to let Sphinx handle the actual ordering. If the number list needs to change later, you don't have to worry about making sure the numbers are in the correct order. What an ordered list looks like after it is built:

#. text goes here
#. text goes here
#. text goes here
#. text goes here

Inline Markup
=====================================================
Adding emphasis within text strings can be done using **bold**, *italics*, and ``code strings``.

Bold
-----------------------------------------------------
Use two asterisks (*) to mark a text string as **bold**. What it looks like as reST:: 

   **text goes here**

Italics
-----------------------------------------------------
Use a single asterisk (*) to mark a text string as *italics*. What it looks like as reST:: 

   *text goes here*

Code Strings
-----------------------------------------------------
Sometimes the name of a method or database field needs to be used inline in a paragraph. Use two backquotes to mark certain strings as code within a regular string of text. What it looks like as reST::

   ``code goes here``

What it looks like in a paragraph after it is built:

Sometimes if an API ``method`` or database ``table`` needs to be referred to in a paragraph, it's useful to apply a style to that ``item`` so that readers can tell that it's special.

Links
=====================================================
Links are ways to get users to other useful topics.

External
-----------------------------------------------------
An external link points to something that does not live on https://docs.chef.io. An external link requires an HTTP address. In general, it's better to spell out the HTTP address fully, in case the topic is printed out. What an external link looks like as reST:: 

   http://www.codecademy.com/tracks/ruby

and what an external link looks like after it's built:

"A great tool for learning Ruby is http://www.codecademy.com/tracks/ruby."


Code Blocks
=====================================================
Code blocks are used to show code samples, such as those for Ruby, JSON, and command-line strings. There are many options here, especially if Pygments is part of your Sphinx environment. The most common code block styles are shown below, but there are many lexers available.

Use a literal code block.

Literal
-----------------------------------------------------
These should be used sparingly, but sometimes there is a need for a block of text that doesn't fit neatly into one of the options available for ``code-block``, such as showing a directory structure, basic syntax, or pseudocode. Use a double colon (::) at the end of the preceding paragraph, add a hard return, and then indent the literal text. What it looks like as reST::

   Use a double colon (::) at the end of the preceding paragraph. What it looks like as reST::

      a block of literal text indented three spaces
      with more
      text as required to
      complete the block of text.
      end.

and what it looks like after it's built::

   a block of literal text indented three spaces
   with more
   text as required to
   complete the block of text.
   end.

