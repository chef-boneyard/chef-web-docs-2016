.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Attributes are a special key-value store called a |ruby mash| within the context of the |ruby| DSL. A |ruby mash| is just a |hash| where the key can be either a symbol (:key) or a string ("key"). 

.. note:: Individuals who are new to |ruby| and |chef| may have an easier time using only string notation. This approach allows attributes to "be quoted" and doesn't require learning about special cases, namespace overlap (and ``method_missing``), character constraints, and escaping.
