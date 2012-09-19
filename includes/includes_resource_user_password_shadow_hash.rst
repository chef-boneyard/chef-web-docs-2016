.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``supports`` attribute allows a list of supported features to be identified. There are two features of note:

* ``:manage_home`` indicates whether a user's home directory will be created when the user is created. When the ``useradd`` provider is used, this feature indicates whether ``-d`` and ``-m`` will be passed to ``useradd`` (when the ``:create`` action is used) or whether ``-d`` will be passed to ``usermod`` (when the ``:manage`` or ``:modify`` actions are used). When "supports :manage_home=>true" the |resource user| resource does not include the ``-d`` and ``-m`` parameters together on the ``usermod`` command.
* ``:non_unique`` indicates whether non-unique UIDs are allowed.
