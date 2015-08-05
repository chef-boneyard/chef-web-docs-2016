.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Another (much less common) approach is to set a value only if an attribute has no value. This can be done by using the ``_unless`` variants of the attribute priority methods:

* ``default_unless``
* ``set_unless`` (``normal_unless`` is an alias of ``set_unless``; use either alias to set an attribute with a normal attribute precedence.) 
* ``override_unless`` 

.. note:: Use the ``_unless`` variants carefully (and only when necessary) because when they are used, attributes applied to nodes may become out of sync with the values in the cookbooks as these cookbooks are updated. This approach can create situations where two otherwise identical nodes end up having slightly different configurations and can also be a challenge to debug. 
