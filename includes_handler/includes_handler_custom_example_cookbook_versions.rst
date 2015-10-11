.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Community member ``juliandunn`` created a custom `report handler that logs all of the cookbooks and cookbook versions <https://github.com/juliandunn/cookbook_versions_handler>`_ that were used during the |chef client| run, and then reports after the run is complete. This handler requires the |resource chef_handler| resource (which is available from the |cookbook chef_handler| cookbook).
