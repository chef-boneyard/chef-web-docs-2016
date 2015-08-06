.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Many text editors leave files behind. To prevent these files from being uploaded to the |chef server|, add an entry to the |chefignore| file. For |emacs|, do something like:

.. code-block:: basemake

   *~

and for |vim|, do something like:

.. code-block:: basemake

   *.sw[a-z]
