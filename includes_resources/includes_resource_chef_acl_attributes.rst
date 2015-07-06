.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This resource has the following attributes:

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``chef_server``
     - |chef_server_url|
   * - ``complete``
     - Use to specify if this resource defines a |chef client| completely. When ``true``, any attribute not specified by this resource will be reset to default attribute values.
   * - ``ignore_failure``
     - **Ruby Types:** TrueClass, FalseClass

       |ignore_failure| Default value: ``false``.
   * - ``notifies``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |notifies|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_notifies.rst

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_timers.rst
   * - ``path``
     - A path to a directory in the |chef repo| against which the ACL is applied. For example: ``nodes``, ``nodes/*``, ``nodes/my_node``, ``*/*``, ``**``, ``roles/base``, ``data/secrets``, ``cookbooks/apache2``, ``/users/*``, and so on.
   * - ``raw_json``
     - The |chef client| as |json| data. For example:
       
       .. code-block:: javascript
       
          {
          "clientname": "client_name",
          "orgname": "org_name",
          "validator": false,
          "certificate": "-----BEGIN CERTIFICATE-----\n
                          ...
                          1234567890abcdefghijklmnopq\n
                          ...
                          -----END CERTIFICATE-----\n",
          "name": "node_name"
          }
   * - ``recursive``
     - Use to apply changes to child objects. Use ``:on_change`` to apply changes to child objects only if the parent object changes. Set to ``true`` to apply changes even if the parent object does not change. Set to ``false`` to prevent any changes. Default value: ``:on_change``.
   * - ``remove_rights``
     - Use to remove rights. For example:
       
       .. code-block:: ruby
       
          remove_rights :read, :users => 'jkeiser', :groups => [ 'admins', 'users' ]

       or:
       
       .. code-block:: ruby
       
          remove_rights [ :create, :read ], :users => [ 'jkeiser', 'adam' ]

       or:
       
       .. code-block:: ruby
       
          remove_rights :all, :users => [ 'jkeiser', 'adam' ]

   * - ``retries``
     - **Ruby Type:** Integer

       |retries| Default value: ``0``.
   * - ``retry_delay``
     - **Ruby Type:** Integer

       |retry_delay| Default value: ``2``.
   * - ``rights``
     - Use to add rights. Syntax: ``:right, :right => 'user', :groups => [ 'group', 'group']``. For example:
       
       .. code-block:: ruby
       
          rights :read, :users => 'jkeiser', :groups => [ 'admins', 'users' ]

       or:
       
       .. code-block:: ruby
       
          rights [ :create, :read ], :users => [ 'jkeiser', 'adam' ]

       or:
       
       .. code-block:: ruby
       
          rights :all, :users => 'jkeiser'
   * - ``subscribes``
     - **Ruby Type:** Symbol, 'Chef::Resource[String]', Symbol

       |subscribes|

       .. include:: ../../includes_resources_common/includes_resources_common_notifications_syntax_subscribes.rst

       |subscribes timers|
