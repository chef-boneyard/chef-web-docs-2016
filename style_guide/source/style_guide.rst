=====================================================
Style Guide
=====================================================
 
.. include:: ../../swaps/swap_desc_a.txt
.. include:: ../../swaps/swap_desc_b.txt
.. include:: ../../swaps/swap_desc_c.txt
.. include:: ../../swaps/swap_desc_d.txt
.. include:: ../../swaps/swap_desc_e.txt
.. include:: ../../swaps/swap_desc_f.txt
.. include:: ../../swaps/swap_desc_g.txt
.. include:: ../../swaps/swap_desc_h.txt
.. include:: ../../swaps/swap_desc_i.txt
.. include:: ../../swaps/swap_desc_j.txt
.. include:: ../../swaps/swap_desc_k.txt
.. include:: ../../swaps/swap_desc_l.txt
.. include:: ../../swaps/swap_desc_m.txt
.. include:: ../../swaps/swap_desc_n.txt
.. include:: ../../swaps/swap_desc_o.txt
.. include:: ../../swaps/swap_desc_p.txt
.. include:: ../../swaps/swap_desc_q.txt
.. include:: ../../swaps/swap_desc_r.txt
.. include:: ../../swaps/swap_desc_s.txt
.. include:: ../../swaps/swap_desc_t.txt
.. include:: ../../swaps/swap_desc_u.txt
.. include:: ../../swaps/swap_desc_v.txt
.. include:: ../../swaps/swap_desc_w.txt
.. include:: ../../swaps/swap_desc_x.txt
.. include:: ../../swaps/swap_desc_y.txt
.. include:: ../../swaps/swap_desc_z.txt
.. include:: ../../swaps/swap_http.txt
.. include:: ../../swaps/swap_names.txt
.. include:: ../../swaps/swap_notes.txt

xxxxx

The |opscode| style guide is just a limited subset of the full capabilities of Sphinx. If it's not listed here, we're not using it.

Basic Documentation Template
=====================================================
xxxxx

Swaps Header
-----------------------------------------------------
xxxxx

Body
-----------------------------------------------------
xxxxx

Example
-----------------------------------------------------
The following example is the first two sections from "An Overview of Chef"::

      =====================================================
      An Overview of |chef|
      =====================================================
       
      .. include:: ../../swaps/swap_desc_a.txt
      .. include:: ../../swaps/swap_desc_b.txt
      .. include:: ../../swaps/swap_desc_c.txt
      .. include:: ../../swaps/swap_desc_d.txt
      .. include:: ../../swaps/swap_desc_e.txt
      .. include:: ../../swaps/swap_desc_f.txt
      .. include:: ../../swaps/swap_desc_g.txt
      .. include:: ../../swaps/swap_desc_h.txt
      .. include:: ../../swaps/swap_desc_i.txt
      .. include:: ../../swaps/swap_desc_j.txt
      .. include:: ../../swaps/swap_desc_k.txt
      .. include:: ../../swaps/swap_desc_l.txt
      .. include:: ../../swaps/swap_desc_m.txt
      .. include:: ../../swaps/swap_desc_n.txt
      .. include:: ../../swaps/swap_desc_o.txt
      .. include:: ../../swaps/swap_desc_p.txt
      .. include:: ../../swaps/swap_desc_q.txt
      .. include:: ../../swaps/swap_desc_r.txt
      .. include:: ../../swaps/swap_desc_s.txt
      .. include:: ../../swaps/swap_desc_t.txt
      .. include:: ../../swaps/swap_desc_u.txt
      .. include:: ../../swaps/swap_desc_v.txt
      .. include:: ../../swaps/swap_desc_w.txt
      .. include:: ../../swaps/swap_desc_x.txt
      .. include:: ../../swaps/swap_desc_y.txt
      .. include:: ../../swaps/swap_desc_z.txt
      .. include:: ../../swaps/swap_http.txt
      .. include:: ../../swaps/swap_names.txt
      .. include:: ../../swaps/swap_notes.txt
      
      
      .. include:: ../../includes_chef/includes_chef.rst
      
      The following diagram shows the relationships between the various elements of a |chef| organization, 
      including the nodes, the server, and the workstations. These elements work together to provide |chef| 
      the information and instruction that it needs so that it can do its job. As you are reviewing the rest 
      of this doc, use the icons in the tables to refer back to this image.
      
      .. image:: ../../images/overview_chef_draft.png
      
      .. include:: ../../includes_chef/includes_chef_key_elements.rst
      
      The following sections discuss these elements (and their various components) in more detail.
      
      Nodes
      =====================================================
      .. include:: ../../includes_node/includes_node.rst

      There are two types of nodes that |chef| can manage:

   .. list-table::
      :widths: 60 420
      :header-rows: 1
      
      * - Feature
        - Description
      * - .. image:: ../../images/icon_node_cloud.png
        - .. include:: ../../includes_node/includes_node_cloud.rst
      * - .. image:: ../../images/icon_node_physical.png
        - .. include:: ../../includes_node/includes_node_physical.rst
      
   Some important components on nodes include:
      
   .. list-table::
      :widths: 60 420
      :header-rows: 1
      
      * - Feature
        - Description
      * - .. image:: ../../images/icon_chef_client.png
        - .. include:: ../../includes_chef/includes_chef_client.rst
      * - .. image:: ../../images/icon_ohai.png
        - .. include:: ../../includes_ohai/includes_ohai.rst
      
   |chef| uses RSA public key-pairs to authenticate a |chef client| with the |chef server| every time a 
   |chef client| needs access to data that is stored on the |chef server|. This prevents any node from 
   accessing data that it shouldn't and ensures that only nodes that are properly registered with the 
   |chef| server can be managed by |chef|.

Section Headers
=====================================================
Section headers create structure in a document. When section headers are part of a topic that is included in other topics, those headers are treated as if they first appeared at that location (and are bumped down appropriately). For this, and for other cosmetic reasons, the headers in Opscode documents are limited to 4 levels beyond the topic title. If headers are required beyond that, they should only be done using standard emphasis and white space or through some other creative method (such as creating more topics with less TOC depth).

Sphinx allows many different conventions for how headers can exist in documents and looks for consistency to determine which ones go where. The width of the header must be equal to (or longer) than the length of the text in the header and (ideally) the same width for headers are used everywhere. (Having everything the same width can help spot the headers during reviews or when trying to find bugs in topics. The following sections describe the section header pattern that Opscode is using for topic titles, H1s, H2s, H3s, H4s, and the occasional H5.

.. note:: As a general rule, try to limit the number of header levels to no more than 2 within a topic. There can be exceptions, of course, and especially if the document is very large, but remember that HTML TOC structures usually have width limitations (on the display side) and the more structure within a TOC, the harder it can be for users to figure out what's in it.

Topic Titles
-----------------------------------------------------
Each topic can have a single topic title. What it looks like as reST:: 

   =====================================================
   header name goes here
   =====================================================

This is the only section header that requires the structure above and below the header.


H1
-----------------------------------------------------
If a topic requires a sub-header, this is the first one to use. What it looks like as reST:: 

   header name goes here
   =====================================================
   This is the paragraph.

H2
-----------------------------------------------------
If an H1 requires a sub-header, this is one to use. Sphinx will generate errors if this header is not a child of an H1. What it looks like as reST:: 

   header name goes here
   -----------------------------------------------------
   This is the paragraph.

H3
-----------------------------------------------------
If an H2 requires a sub-header, this is one to use. Sphinx will generate errors if this header is not a child of an H2. What it looks like as reST:: 

   header name goes here
   +++++++++++++++++++++++++++++++++++++++++++++++++++++
   This is the paragraph.

H4
-----------------------------------------------------
If a . What it looks like as reST:: 

   header name goes here
   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
   This is the paragraph.

H5
-----------------------------------------------------
Only 4 levels of headers are supported (title, H2, H3, and H4). If, in the rare instance a lower-level header is needed, use a bold emphasis and then white space to provide the visual treatment and content separation. What it looks like as reST:: 

   **header name goes here**  << in regular bold emphasis
     << this is a hard return
   content, as normally authored.


Lists and Tables
=====================================================
Lists and tables can be useful. The following sections describe the various lists and tables that Opscode is using for its documentation.

Bullet Lists
-----------------------------------------------------
Bulleted lists are useful for breaking up text blocks and for drawing attention to a group of items. What it looks like as reST:: 

   * text goes here
   * text goes here
   * text goes here
   * text goes here

Use the asterisk symbol (*) only for bulleted lists, even though Sphinx supports using other symbols. For example:

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

Use the number symbol (#) to let Sphinx handle the actual ordering. If the number list needs to change later, you don't have to worry about making sure the numbers are in the correct order. For example:

#. text goes here
#. text goes here
#. text goes here
#. text goes here

Definition Lists
-----------------------------------------------------
These are used primarily to show the options available to a command line tool. These appear the same way in the HTML and print documentation as they appear in the man page output. What it looks like as reST:: 
   
   ``--name-only``
      |name only|
   
   ``--name-status``
      |name status|
   
   ``--no-recurse``
      |no recurse diff|

What it looks like after it's built:

``--name-only``
   |name only|

``--name-status``
   |name status|

``--no-recurse``
   |no recurse diff|

List Tables
-----------------------------------------------------
The list table is the only table style that Opscode is using in the docs. Sphinx supports other approaches to tables, but they are crude and inelegant and are a pain so why bother with them. What the list table looks like as reST:: 

   .. list-table::
      :widths: 250 250
      :header-rows: 1
      
      * - Header
        - Description
      * - text, image, swap, or include
        - text, image, swap, or include
      * - text, image, swap, or include
        - text, image, swap, or include

The table cells support images and includes, along with all of the other standard Sphinx that is being used here. The widths can be changed and the number of columns can be changed too. In general, Opscode is trying to keep the number of columns below 4. When creating a list table, think about what it will look like in HTML and in print formats, with regard to the table's width. If your document is going into a man page, list tables are not recommended.

What the list table looks like after it's built::

   .. list-table::
      :widths: 60 420
      :header-rows: 1
      
      * - Header
        - Description
      * - .. image:: ../../images/icon_node_cloud.png
        - .. include:: ../../includes_node/includes_node_cloud.rst
      * - .. image:: ../../images/icon_node_physical.png
        - .. include:: ../../includes_node/includes_node_physical.rst

Inline Markup
=====================================================
xxxxx

Bold
-----------------------------------------------------
xxxxx. What it looks like as reST:: 

   **text goes here**

Italics
-----------------------------------------------------
xxxxx. What it looks like as reST:: 

   xxxxx

Code Elements and other Application Values
-----------------------------------------------------
xxxxx. What it looks like as reST:: 

   ``code goes here``

Code Blocks
=====================================================
xxxxx. There are many options here, especially if Pygments is part of your Sphinx environment. The most common code block styles are shown below, but there are many lexers available.

http://pygments.org/docs/lexers/#lexers-for-other-languages

Ruby
-----------------------------------------------------
Use this approach to show code blocks that use Ruby. What it looks like as reST:: 

   .. code-block:: ruby

   xxxxx

Bash
-----------------------------------------------------
Use this approach to show code blocks that use any type of shell command, such as for Knife or the chef-client or for any other command-line example that may be required. What it looks like as reST:: 

   .. code-block:: bash

   xxxxx

Javascript (and JSON)
-----------------------------------------------------
Use this approach to show code blocks that use any type of Javascript, including any JSON code sample. What it looks like as reST:: 

   .. code-block:: json

   xxxxx

Other Code Samples
-----------------------------------------------------
xxxxx. What it looks like as reST:: 

   xxxxx

What it looks like after it's built::

   xxxxx

Literal
-----------------------------------------------------
These should be used sparingly, but sometimes there is a need for a block of text that doesn't fit neatly into one of the options available for ``code-block``. What it looks like as reST:: 

   a preceding paragraph that ends with a double colon::

      a block of literal text indented three spaces
        with more
        text as required to
        complete the block of text.
      end.

Links
=====================================================
xxxxx

Internal
-----------------------------------------------------
xxxxx. What it looks like as reST:: 

   xxxxx

What it looks like after it's built::

   xxxxx

External
-----------------------------------------------------
xxxxx. What it looks like as reST:: 

   xxxxx

What it looks like after it's built::

   xxxxx

Sphinx Directives
=====================================================
xxxxx

TOC Trees
-----------------------------------------------------
xxxxx. What it looks like as reST:: 

   xxxxx

What it looks like after it's built::

   xxxxx

Code Blocks
-----------------------------------------------------
xxxxx. What it looks like as reST:: 

   xxxxx

What it looks like after it's built::

   xxxxx

Includes
-----------------------------------------------------
xxxxx. What it looks like as reST:: 

   xxxxx

What it looks like after it's built::

   xxxxx

Inline Replacements
=====================================================
xxxxx

Swap Files
-----------------------------------------------------
A swap file is a file that contains short strings of information that are replaced at build time. Mostly, these are definitions of command-line options, descriptions of settings in |ruby| files, and other short descriptions that may live in more than one place across the doc set.

They are grouped by letter (for definition strings, a-z), grouped by names (for product name and other formal names), for notes, and for HTTP links. These should only be included when it's certain that, should the swap replacement need to change later, that that change is exactly what is wanted in that location later.

What it looks like as reST:: 

   |mac os x|

or::

   |homebrew|

or::

   |knife rb|

or::

   |resource deploy|

or::

   |chef client|

and what it looks like in the document::

   I like to use |homebrew| on my |mac os x| machine when managing my |knife rb| file that I 
   use with my |chef client| every time the |resource deploy| resource is run.

and what that would look like after it's built: "I like to use Homebrew on my Mac OS X machine when managing my knife.rb file that I use with my chef-client every time the **deploy** resource is run."

Notes and Warnings
=====================================================
In general, notes and warnings are not the ideal way to present information. Before using them ask yourself if this wouldn't be better represented as an actual section header. If it's truly important, then it is information you want the reader to find, and the best way to ensure that is to write the topics so that important information has its own section header. This helps the search engines pick up the information and provide better search results. If notes and warnings must be used, the approach for using them is as follows.

Notes
-----------------------------------------------------
Use sparingly, but much more often than a warning. A note sometimes works best when they are consistently used across a wide set of topics. See the What it looks like as reST:: 

   .. note:: this is a note.

What it looks like after it's built:

.. note:: this is a note.

Warnings
-----------------------------------------------------
Use sparingly, so that when the user sees a warning it is appropriate. A warning really should be a "Hey, if you do this, you might break your environment." type of situation. What it looks like as reST:: 

   .. warning:: this is a warning.

What it looks like after it's built::

.. warning:: this is a warning.

Images
=====================================================
xxxxx. What it looks like as reST::

   xxxxx

What it looks like after it's built::

   xxxxx

chef-docs Repository on Github
=====================================================
xxxxx

Naming Patterns
-----------------------------------------------------
xxxxx

quick-reference Repository on Github
=====================================================
xxxxx

Knife
-----------------------------------------------------
xxxxx