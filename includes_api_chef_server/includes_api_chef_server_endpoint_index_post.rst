.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The POST method is used to return partial search results.

This method has the following parameters:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Parameter
     - Description
   * - ``q``
     - A valid search string.
   * - ``rows``
     - The number of rows to be returned.
   * - ``sort``
     - A sort string, such as ``name DESC``.
   * - ``start``
     - The result number from which to start.

**Request**

.. code-block:: xml

   GET /search

with a request body that looks something like:

.. code-block:: javascript

   {
     'name' => [ 'name' ],
     'ip'   => [ 'ipaddress' ],
     'kernel_version' => [ 'kernel', 'version' ]
   }

**Response**

The response will return something like the following:

.. code-block:: javascript

   {
     "name": "latte",
     "ip": "123.4.5.6789",
     "kernel_version": {"linux": "1.2.3"},
   }

For example, if a node has the following:

.. code-block:: javascript

   { 
     'x' => 'foo', 
     'kernel' => { 'a' => 1, 'foo' => 'bar', 'version' => [ 1, 2, 3 ] }
   }

it will return something like:

.. code-block:: javascript

   { 'kernel_version' => [ 1, 2, 3 ] }

**Response Codes**

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Response Code
     - Description
   * - ``200``
     - |response code 200 ok|
   * - ``401``
     - |response code 401 unauthorized|
   * - ``403``
     - |response code 403 forbidden|
