.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

You may integrate |chef delivery| and |github| Enterprise or GitHub.com. If you do this, you will be able to use |github| as a **Source Code Provider** when creating a project. Additionally, when adding users to |chef delivery|, to integrate them to a |github| project, you must first have the |chef delivery| |github| integration complete.

.. note:: This procedure is for |chef delivery| deployments that will use |github enterprise| or GitHub.com as the source control manager. |chef delivery| also comes with default Git capabilities that do not require the GitHub OAuth application. For information on onboarding users for the default Git, see :ref:`delivery_default_git`.  

This guide assumes you have successfully set up the following:

* A |chef delivery| cluster using the ``delivery-cluster`` cookbook (https://github.com/opscode-cookbooks/delivery-cluster)
* User accounts in |github enterprise| and |chef delivery| with matching usernames
* Have established SSL trust between |chef delivery| and |github enterprise| servers

Create Github OAuth App
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Go to one of the appropriate URLs listed below, depending on where you want to link the |github| |oauth| application:

* Individual Account: ``https://$GITHUB_SERVER/settings/applications``
* Organization: ``https://$GITHUB_SERVER/organizations/$ORGANIZATION/settings/applications``

Click **Register New Application** and set the following values:

.. list-table::
   :widths: 200 400
   :header-rows: 1

   * - Key
     - Value
   * - **Application Name**
     - ``Delivery``
   * - **Homepage URL**
     - ``http://$DELIVERY_SERVER/e/$DELIVERY_ENTERPRISE``
   * - **Authorization Callback URL**
     - ``http://$DELIVERY_SERVER/api/v0/github_auth_callback``

Click **Register Application** and take note of the generated ``Client ID`` and ``Client Secret`` in the upper left corner.

Add App to Delivery
+++++++++++++++++++++++++++++++++++++++++++++++++++++
To add the |github| OAuth app to |chef delivery|, log in to the |chef delivery| server and run the following command:

**For Github Enterprise**

.. code-block:: bash

   delivery-ctl setup-github-enterprise $GHE_SERVER_ROOT_URL $CLIENT_ID $CLIENT_SECRET

**For Github.com**

.. code-block:: bash

   delivery-ctl setup-github $CLIENT_ID $CLIENT_SECRET

Request Github Token
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Log in to the |chef delivery| server and run the following command:

**For Github Enterprise**

.. code-block:: bash

   delivery-ctl setup-github-enterprise-token $DELIVERY_ENTERPRISE

**For Github.com**

.. code-block:: bash

   delivery-ctl setup-github-token $DELIVERY_ENTERPRISE

Create a Project
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Before you begin you will need an existing |github| repo with at least one commit and also you have to grant
admin rights to the ``chef-delivery`` account.

#. Open your organization page in the |chef delivery| web UI and create a new project as normal.
#. Next, select the **Github** option from the bar and enter the **Github Repo Owner**, **Github Repo Name**, and the branch you wish to use as your primary pipeline.
#. Click **Save & Close**.

There is currently no process for migrating an existing |chef delivery| project to one that is backed by |github|.

Link Users
+++++++++++++++++++++++++++++++++++++++++++++++++++++
You must associate your |github| user with your |chef delivery| user in order to successfully create changes from |github| pull requests.

From a local checkout of a |chef delivery| project, run the following ``delivery-cli`` command.

.. include:: ../../includes_delivery/includes_delivery_users_onboard_github_add.rst

Handle Untrusted PRs
+++++++++++++++++++++++++++++++++++++++++++++++++++++
By default all pull requests from |github| users that are not linked with a |chef delivery| user will be ignored.

To accept pull requests from an unlinked user you may add the ``untrusted_github_user`` using the command below.

.. code-block:: bash

   $ sudo delivery-ctl create-user $DELIVERY_ENTERPRISE untrusted_github_user --roles=committer

A pull request opened by a |github| user who is not linked with a |chef delivery| user will be labeled as ``Quarantined``. A change for this pull request owned by ``untrusted_github_user`` will be created but the Verify stage will not be triggered. An authorized user may review the pull request and add a comment with ``@delivery review`` command to reassign the change to their user account and trigger the Verify stage.

Push Changes to Delivery
+++++++++++++++++++++++++++++++++++++++++++++++++++++
Next, you must create some commits in the repository. This is not a change submission, this is just a base of code from which to build. |chef delivery| cannot currently operate on a completely empty repository. (Below are steps for a cookbook):

.. code-block:: bash

   $ chef generate cookbook <deliv_proj>
   $ cd <deliv_proj>
   $ git init && git add . && git commit -m 'Initial Commit'
   $ git remote add origin <github_ssh_url>
   $ git push origin master

Next, you'll actually create a first pull request; customarily, this is the addition of a  ``.delivery/config.json`` file. The one shown below is a good starting point for a cookbook.

.. code-block:: bash

   $ git checkout -b add_delivery_config
   $ mkdir .delivery

Edit ``.delivery/config.json`` like so:

.. code-block:: javascript

   {
     "version": "2",
     "build_cookbook": {
       "git": "https://github.com/opscode-cookbooks/delivery-truck.git",
       "name": "delivery-truck",
       "branch": "master"
     },
     "skip_phases": [
       "smoke",
       "security",
       "quality"
     ]
   }

Next, push the code to |github|.

.. code-block:: bash

   $ git add . && git commit -m 'add delivery config'
   $ git push origin add_delivery_config

(The |chef delivery_cli| CLI can perform all of this for projects that use local repositories; one day, it'll do it for remote repositories as well.)

Finally, create a pull request from this change in the |github| web UI.

