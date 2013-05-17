.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Create a project in |google cloud platform|, enable |google compute engine|, and then set up the client identifier. Run the following command:

.. code-block:: bash

   $ knife google setup

and then provide the project identifier (not the project name or number), the client identifier, the client secret, and authorization tokens when prompted. Open the URL in a browser when promoted. Ensure that the user account associated with the project and client identifier is used when authenticating.

By default, the credential and token information is stored in ``~/.google-compute.json``. Use the ``f <credential_file>`` flag to override this location.
