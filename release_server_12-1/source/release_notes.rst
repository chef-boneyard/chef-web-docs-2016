
=====================================================
Release Notes: |chef server_title| 12.1
=====================================================

.. include:: ../../includes_chef/includes_chef_index.rst

What's New
=====================================================
The following items are new for |chef server| 12.1:

* **chef-server-ctl key commands use the chef-client Chef::Key object** The key rotation commands (``chef-server-ctl key``) for ``create``, ``delete``, ``edit``, ``list``, and ``show`` keys for users and clients. These were a preview in the |chef server| 12.0.3 release, and are now fully integrated.
* **New X-Ops-Server-API-Info header for Chef Server API** The |api chef server| uses the ``X-Ops-Server-API-Info`` header to specify the API version as part of a request to the |api chef server|.
* **New endpoints for policy and policy files** The |api chef server| adds the following endpoints: ``/policies``, ``/policy_groups``, and ``/POLICY_GROUP/policies/POLICY_NAME``.
* **New endpoints for client key management** The |api chef server| adds the following endpoints: ``/CLIENT/keys`` and ``/CLIENT/keys/key``.
* **New endpoints for user key management** The |api chef server| adds the following endpoints: ``/USER/keys`` and ``/USER/keys/key``.
* **New configuration setting** Use the ``estatsd['protocol']`` setting to send application statistics with |statsd| protocol formatting.


Key Rotation
-----------------------------------------------------
The ``knife user`` and ``knife client`` subcommands support key rotation. Use the ``create``, ``delete``, ``edit``, ``list``, and ``show`` subcommands to manage keys for users and clients, such as creating multiple expiring keys for a single user and also for basic key management. See http://docs.chef.io/knife_user.html and http://docs.chef.io/knife_client.html for more information about these subcommands.

``X-Ops-Server-API-Info``
-----------------------------------------------------
.. include:: ../../includes_api_chef_server/includes_api_chef_server_headers_x_ops_server_api_info.rst

/CLIENT/keys
-----------------------------------------------------
View and add keys for the named client.

Methods:

* ``GET`` Retrieves all of the client's key identifers and their associated URIs and expiry states.
* ``PUT`` Add a new key for the named client.

/CLIENT/keys/key
-----------------------------------------------------
View and add keys for the named client in an organization.

Methods:

* ``DELETE`` Deletes the named key.
* ``GET`` Retrieves the specified public key and it's associated data.
* ``PUT`` Update one or more attributes of a key for a client in an organization.

/USER/keys
-----------------------------------------------------
View and add keys for the named user.

Methods:

* ``GET`` Retrieves all of the user's key identifers and their associated URIs and expiry states.
* ``PUT`` Add a new key for the named user.

/USER/keys/key
-----------------------------------------------------
View and add keys for the named user.

Methods:

* ``DELETE`` Deletes the named key.
* ``GET`` Retrieves the specified public key and it's associated data.
* ``PUT`` Update one or more attributes of a key for a user.

/policies
-----------------------------------------------------
Manage revisions of policies. Each policy can have many revisions, identified by the revision id in the policy document.

Methods:

* ``GET`` List all policies on the server, organized by policy_name.

/policy_groups
-----------------------------------------------------
Nodes have a many to one relationship with policies, based on their group and policy. A policy is generally named after the functional role a host preforms, such as "appserver", "chatserver", "load balancer", etc. A group defines a set of hosts in a deployment unit, which may map to an organization's environments (e.g., dev, qa, staging, production), or may represent more granular phases (e.g., a change may go to a "canary" group, and then be rolled through various clusters within the production environment, so you'd have "prod-canary", "prod-cluster-1", etc.).

Methods:

* ``GET`` List all policy groups on the server, showing the active revision for each policy.

/POLICY_GROUP/policies/POLICY_NAME
-----------------------------------------------------
Manage policies as they are associated to policy groups. Though policies and policy groups are independent objects, in most cases it is desirable to manage them together. This endpoint allows you to show/create/update the policy for the given policy group in a single call.

Policies and policy groups are separate objects for the purposes of authorization. This allows administrators to restrict access to the policies for certain kinds of nodes (perhaps because they handle sensitive data) or in certain group (e.g., if changes to production require sign-off). The requestor must have access to both the policy and policy group in order for the request to be authorized. If the requestor does not have access on both objects for the requested action, the server will return a 403 response.

Methods:

* ``DELETE`` Deletes the association between the given policy name, policy group, and policy revision. The policy group and policy revision are not themselves deleted from the server, only the association is removed. Following this call, a subsequent GET to the same URI will return 404. When successful, the policy document revision that was previously associated to the policy name and policy group is returned.
* ``GET`` Return the policy document for the given policy group and policy name.
* ``PUT`` Create or update the policy document for the given policy group and policy name. If no policy group with the given name exists, it will be created. If no policy with the given revision_id exists, it will be created from the document in the request body. If a policy with that revision_id exists, the Chef Server simply associates that revision id with the given policy group. When successful, the document that was created or updated is returned.

New Config Settings
-----------------------------------------------------
The following configuration settings are new for the |chef server|:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Setting
     - Description
   * - ``estatsd['protocol']``
     - Use to send application statistics with |statsd| protocol formatting. Set this value to ``statsd`` to apply |statsd| protocol formatting.


What's Fixed
=====================================================
For the list of issues that were addressed for this release, please see the changelog on |github|: https://github.com/chef/opscode-omnibus/blob/master/CHANGELOG.md
