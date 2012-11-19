.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``supports`` attribute allows a list of supported features to be identified. There are two features of note:

* ``:manage_home`` indicates whether a user's home directory will be created when the user is created. When the ``Useradd`` provider is used, ``-dm`` wil be passed to ``useradd`` (when the ``:create`` action is used) and ``-d`` will be passed to ``usermod`` (when the ``:manage`` or ``:modify`` actions are used). If ``supports :manage_home=>true``, the |resource user| resource does not pass the ``-d`` and ``-m`` parameters together (i.e. ``-dm``) to ``usermod``.

  When the ``Windows`` provider is used, |windows| does not create a home directory for a user until that user logs on for the first time; specifying the home directory does not have any effect as to where |windows| ultimately places the home directory.
* ``:non_unique`` indicates whether non-unique UIDs are allowed. This option is currently unused by the existing providers.