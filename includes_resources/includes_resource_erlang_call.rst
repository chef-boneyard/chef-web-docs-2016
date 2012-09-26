.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The |resource erlang call| resource is used to connect to a node located within a distributed |erlang| system. An |resource erlang call| resource is not idempotent. Use the ``not_if`` and ``only_if`` meta parameters to guard the use of this resource for idempotence.
