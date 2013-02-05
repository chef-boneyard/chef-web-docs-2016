.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Starting with |chef 11|, the |chef server| has been authored entirely in |erlang| and is often referred to as |erchef|. `Erlang <http://www.erlang.org/>`_ is a programming language that `first appeared in 1986 <http://en.wikipedia.org/wiki/Erlang_%28programming_language%29/>`_, was open sourced in 1998, and is most excellent when it comes to critical enterprise concerns like concurrency, fault-tolerance, and distributed environments. In other words, a |chef server| authored entirely in |erlang| scales to the size of any enterprise. 

.. note:: Even though |chef 11| is authored in |erlang|, writing code in |erlang| is NOT a requirement for using |chef 11|. 

|erchef| is a complete rewrite of the core API for the |chef server|, which allows it to be faster and more scalable than previous versions. The API itself is still compatible with the original |ruby|-based |chef server|, which means that cookbooks and recipes that were authored for the |ruby|-based |chef server| will continue to work on the |erlang|-based |chef server|. 

.. The |erchef| version of the |chef server| is applicable to |chef open server|, |chef hosted|, and |chef private|. Within the documentation, |erchef| is the |chef server| and outside of |erchef|-specific topics will be referred to as the |chef server|.