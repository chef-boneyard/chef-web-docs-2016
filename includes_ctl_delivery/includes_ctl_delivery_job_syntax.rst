.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for the delivery CLI
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


This subcommand has the following syntax:

.. code-block:: bash

   $ delivery job STAGE PHASE (options)

where:

* ``STAGE`` is a stage in the |chef delivery| pipeline: Verify, Build, Acceptance, Union, Rehearsal, Delivered
* ``PHASE`` is a phase, which runs recipes, in a |chef delivery| stage
