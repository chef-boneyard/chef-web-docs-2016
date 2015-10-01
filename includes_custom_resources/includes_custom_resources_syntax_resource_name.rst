.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.



By default, the custom resource name is inferred from the name of the cookbook and the name of the resource file, separated by an underscore(``_``). For example, a cookbook named ``website`` and a custom resource file named ``httpd`` is used in a recipe with ``website_httpd``.

Use the ``resource_name`` method at the top of a custom resource to declare a custom name for that resource. For example:

.. code-block:: ruby

   resource_name :name

where ``:name`` declares the resource name as it may be used in a recipe.
