.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|rubocop| output:

* States the number of files found and examined. For example: ``Inspecting 8 files``
* Lists the results of those files as a series of symbols. For example: ``CWCWCCCC``
* For each symbol, states the file name, line number, character number, type of issue or error, describes the issue or error, and specifies the location in the source code at which the issue or error is located

A |rubocop| evaluation has the following syntax:

.. code-block:: bash

   FILENAME:LINE_NUMBER:CHARACTER_NUMBER: TYPE_OF_ERROR: MESSAGE
   SOURCE CODE
   ^^^^^^^^^^^

For example:

.. code-block:: bash

   cookbooks/apache/attributes/default.rb:1:9: C: Prefer single-quoted strings when you don't
   need string interpolation or special symbols.
   default["apache"]["indexfile"] = "index1.html"
           ^^^^^^^^
