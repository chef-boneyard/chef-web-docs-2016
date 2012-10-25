.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Actions are defined as list of keywords in a resource: 

.. list-table::
   :widths: 60 420
   :header-rows: 1

   * - Action Type
     - Description
   * - ``actions``
     - A comma-separated list of actions.
   * - ``default_action``
     - Use to specify which action is the default action.

For example:

.. code-block:: ruby

   actions :keyword, :keyword
   default_action :keyword

For each action in a resource, a provider must specify what the steps for that action will be. For example, something like:

.. code-block:: ruby

   action :keyword do
     execute "keyword resource_name" do
       # ruby code that defines the action goes here
     end
   end
