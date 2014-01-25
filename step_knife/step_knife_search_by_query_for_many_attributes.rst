.. This is an included how-to. 


To build a search query to use more than one attribute, use an underscore (``_``) to separate each attribute. For example, the following query will search for all nodes running a specific version of |ruby|:

.. code-block:: bash

	$ knife search node "languages_ruby_version:1.9.3"