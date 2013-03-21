.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|erchef| is a complete rewrite of the core API for the |chef server|, which allows it to be faster and more scalable than previous versions. The API itself is still compatible with the original |ruby|-based |chef server|, which means that cookbooks and recipes that were authored for the |ruby|-based |chef server| will continue to work on the |erlang|-based |chef server|. The |chef client| is still written in |ruby|.

.. note:: Even though |chef 11| is authored in |erlang|, writing code in |erlang| is NOT a requirement for using |chef 11|.
