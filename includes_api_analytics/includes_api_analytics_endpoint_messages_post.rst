.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``POST`` method is used to add an action to the actions database.

This method has no parameters.

**Request**

.. code-block:: xml

   POST /messages

with a request body similar to:

.. code-block:: javascript

   {
     "$schema": "http://json-schema.org/draft-04/schema#",
     "description": "Analytics - action schema",
     "properties": {
       "entity_name": {
         "description": "The name of the entity",
         "type": "string"
       },
       "entity_type": {
         "description": "The type of the entity",
         "type": "string",
         "enum": [
           "bag",
           "client",
           "cookbook",
           "environment",
           "group",
           "item",
           "node",
           "organization",
           "permission",
           "role",
           "user",
           "version"]
         },
       "id": {
         "description": "Globally Unique ID for this message",
         "type": "string",
         "pattern": "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$"
       },
       "message_version": {
         "description": "Message Version",
         "type": "string",
         "enum": [
           "0.1.1"
         ]
       },
       "message_type": {
         "description": "Message Type",
         "type": "string"
       },
       "organization_name": {
         "description": "It is the name of the org on which the run took place",
         "type": ["string", "null"]
       },
       "parent_name": {
         "description": "The name of the parent of the entity",
         "type": "string"
       },
       "parent_type": {
         "description": "The type of the parent of the entity",
         "type": "string",
         "enum": [
           "bag",
           "cookbook",
           "container",
           "environment",
           "group",
           "node",
           "organization",
           "role"]
       },
       "recorded_at": {
         "description": "It is the ISO timestamp when the action happened",
         "pattern": "^[0-9]{4}-[0-9]{2}-[0-9]{2}T[0-9]{2}:[0-5][0-9]:[0-9]{2}Z$",
         "type": "string"
       },
       "remote_hostname": {
         "description": "The remote hostname which initiated the action",
         "type": "string"
       },
       "remote_request_id": {
         "description": "The request-id generate by the remote client",
         "pattern": "^[a-fA-F0-9]{8}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{4}-[a-fA-F0-9]{12}$",
         "type": "string"
       },
       "request_id": {
         "description": "The Enterprise Chef Request ID",
         "type": "string"
       },
       "requestor_name": {
         "description": "The name of the client or user that initiated the action",
         "type": "string"
       },
       "requestor_type": {
         "description": "Was the requestor a client or user?",
         "type": "string",
         "enum": ["client", "user"]
       },
       "service_hostname": {
         "description": "The FQDN of the Enterprise Chef server",
         "type": "string"
       },
       "task": {
         "description": "What action was performed?",
         "type": "string",
         "enum": ["associate", "create", "delete", "dissociate", "invite", "reject", "update"]
       },
       "user_agent": {
         "description": "The User-Agent of the requestor",
         "type": "string"
       },
       "data": {
         "description": "The payload containing the entire request data",
         "type": "object"
       }
     },
     "required": [
       "entity_name",
       "entity_type",
       "id",
       "message_type",
       "message_version",
       "organization_name",
       "recorded_at",
       "remote_hostname",
       "request_id",
       "requestor_name",
       "requestor_type",
       "service_hostname",
       "task",
       "user_agent"
       ],
     "dependencies": {
       "parent_name": ["parent_type"],
       "parent_type": ["parent_name"]
     },
     "title": "ActionSchema",
     "type": "object"
   }

For example:

.. code-block:: javascript

   {
     "id": "b576b4a2-7b2a-43b8-b385-d6281e9a139e",
     "message_type": "action",
     "message_version": "0.1.1",
     "entity_name": "app1",
     "entity_type": "node",
     "organization_name": "ponyville",
     "recorded_at": "1976-10-02T05:00:37Z",
     "remote_hostname": "127.0.0.1",
     "remote_request_id": "562C4230-1569-4003-A81F-8C0100231D65",
     "request_id": "tG3MRbYB7NFWjFU8shs1YeSxq8CIIMJudpnHJXDnWEWzFSVW",
     "requestor_name": "rarity",
     "requestor_type": "user",
     "service_hostname": "127.0.0.1",
     "task": "delete",
     "user_agent": "Chef Client/0.10.0 (ruby-1.9.3-p484; x86_64-linux; +http://opscode.com)",
     "data": {"name": "app1"}
   }
   
**Response**

The response is similar to:

.. code-block:: javascript

   {
     "error": "Validation failed",
     "details": {
       "entity_name": "'' is not a valid entity name"
     }
   }

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - POST occurred during |chef client| run. POST is not persisted to actions database.
   * - ``201``
     - Success. The URL for the newly-cretaed action is returned.
   * - ``400``
     - Invalid content.
   * - ``405``
     - Invalid method.
