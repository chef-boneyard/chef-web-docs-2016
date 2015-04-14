.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|foodcritic| is run from the command line, typically against a single cookbook and all of the |ruby| files contained within it:

.. code-block:: bash

   $ foodcritic /path/to/cookbook

|foodcritic| may also be run from the root of an individual cookbook directory:

.. code-block:: bash

   $ foodcritic .

|foodcritic| returns a list, via standard output, that shows the results of the evaluation:

.. code-block:: bash

   FC003: Check whether you are running with chef server before using server-specific features: ./recipes/ip-logger.rb:1
   FC008: Generated cookbook metadata needs updating: ./metadata.rb:2
   FC008: Generated cookbook metadata needs updating: ./metadata.rb:3
