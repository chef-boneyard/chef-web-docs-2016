.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

You may integrate |chef delivery| and |github enterprise| or a project that is hosted at https://github.com/. If you do this, you will be able to use |github| as a **Source Code Provider** when creating a project. Additionally, when adding users to |chef delivery|, to integrate them to a |github| project, you must first have the |chef delivery| |github| integration complete.

.. note:: This procedure is for |chef delivery| deployments that will use |github enterprise| or https://github.com/ as the source control manager. |chef delivery| also comes with default |git| capabilities that do not require the |github| |oauth| application.

This guide assumes you have successfully set up the following:

* A |chef delivery| cluster using the ``delivery-cluster`` cookbook (https://github.com/opscode-cookbooks/delivery-cluster)
* User accounts in |github enterprise| and |chef delivery| with matching usernames
* Have established SSL trust between |chef delivery| and |github enterprise| servers
