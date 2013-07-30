.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |lwrp sudo| lightweight resource is used to manage |sudo cmd| fragment files in |path etc sudoers d|. This lightweight provider has two modes:

* Natural mode mimics the |sudo cmd| file interface. This mode will render a |sudo cmd| fragment in |path etc sudoers d|
* Template mode requires an |erb| template and a hash of variables. This mode will render a |sudo cmd| fragment in |path etc sudoers d| and ensure that any resulting |sudo cmd| fragments pass validation and have the proper permissions to the file system.

In the event that a |sudo cmd| fragment does not pass validation, this lightweight resource will fail the |chef client| run before the fragment can be copied to |path etc sudoers d|. This will prevent corruption of your |sudo cmd| configuration.

.. note:: |sudo cmd| version 1.7.2 (or newer) is required to use the |lwrp sudo| lightweight resource, as it relies on the ``#includedir`` directive that is introduced with version 1.7.2. The recipe does not enforce installing the version. To use this lightweight resource, set ``node['authorization']['sudo']['include_sudoers_d']`` to ``true``.



