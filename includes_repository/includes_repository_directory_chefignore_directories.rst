.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``chefignore`` file cannot be used to ignore an entire directory. For example, an ignore pattern like:

.. code-block:: basemake

   files/default/folder

will still upload ``files/default/folder/abc.txt`` and ``files/default/folder/xyz.txt``. 

This is important when there is a need for multiple cookbook paths, such as ``(cookbook_path=["/usr/local/cookbooks", "/home/jkeiser/repo/cookbooks"]``, such as when a site cookbook shadows a community cookbook. The solution is to use multiple ``chefignore`` in each directory. For example:

* ``/usr/local/cookbooks/apache2`` would use ``/usr/local/cookbooks/chefignore``
* ``/home/user/repo/cookbooks/mysql`` would use ``/home/user/repo/cookbooks/chefignore``







