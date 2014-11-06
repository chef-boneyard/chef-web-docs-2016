.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|description resource_attributes_intro|

.. list-table::
   :widths: 150 450
   :header-rows: 1

   * - Attribute
     - Description
   * - ``chef_server``
     - |chef_server_url|
   * - ``complete``
     - Use to specify if this resource defines an organization completely. When ``true``, any attribute not specified by this resource will be reset to default attribute values.
   * - ``full_name``
     - |name_rules org_full| For example: ``Chef Software, Inc.``.
   * - ``invites``
     - Use to specify a list of users to be invited to the organization. An invitation is sent to any user in this list who is not already a member of the organization.
   * - ``members``
     - Use to specify a list of users who MUST be members of the organization. These users will be added directly to the organization. The user who initiates this operation MUST also have permission to add users to the specified organization.
   * - ``members_specified``
     - Use to discover if a user is a member of an organization. Will return ``true`` if the user is a member.
   * - ``name``
     - |name_rules org| For example: ``chef``.
   * - ``raw_json``
     - The organization as |json| data. For example:
       
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
   * - ``remove_members``
     - Use to remove the specified users from an organization. Invitations that have not been accepted will be cancelled.

