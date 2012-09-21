.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Attributes are a special key-value store called a Mash within the Ruby DSL context. A Mash is just a Hash where the key can be either a Ruby symbol (:key) or a string ("key"). It's easier to stick with string notation if you are just starting out with Chef and/or Ruby. This allows you to just "quote it", rather than also having to learn about special cases, name space overlap (and method_missing), character constraints, and escaping work at the beginning.

That way, by the time you may want to use symbols stylistically or contextually, you can learn to wield them with an existing base of knowledge. Our examples and detail on attributes use a string notation for that reason. If you already know your way around symbols in ruby, you may of course use them.

