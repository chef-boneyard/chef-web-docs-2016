.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

The ``rights`` attribute can be used in a recipe to manage access control lists (ACLs), which allow permissions to be given to multiple users and groups. The syntax for the ``rights`` attribute is as follows:

.. code-block:: ruby

   rights permission, principal, option_type => value

where

* ``permission`` is used to specify which rights will be granted to the ``principal``. The possible values are: ``:read``, ``:write``, ``read_execute``, ``:modify``, ``:full_control``,  and ``:deny_rights``. 
   
  These permissions are cumulative. If ``:write`` is specified, then it includes ``:read``. If ``:full_control`` is specified, then it includes both ``:write`` and ``:read``. If ``:deny`` is specified, then the user or group will not have rights to the object. 
   
  (For those who know the |windows| API: ``:read`` corresponds to ``GENERIC_READ``; ``:write`` corresponds to ``GENERIC_WRITE``; ``:read_execute`` corresponds to ``GENERIC_READ`` and ``GENERIC_EXECUTE``; ``:modify`` corresponds to ``GENERIC_WRITE``, ``GENERIC_READ``, ``GENERIC_EXECUTE``, and ``DELETE``; ``:full_control`` corresponds to ``GENERIC_ALL``, which allows a user to change the owner and other metadata about a file.)
* ``principal`` is used to specify a group or user name. This is identical to what is entered in the login box for |windows|, such as ``user_name``, ``domain\user_name``, or ``user_name@fully_qualified_domain_name``. The |chef client| does not need to know if a principal is a user or a group.
* ``option_type`` is a hash that contains advanced rights options. For example, the rights to a directory that only applies to the first level of children might look something like: ``rights :write, 'domain\group_name', :one_level_deep => true``. Possible option types:

  .. list-table::
     :widths: 60 420
     :header-rows: 1
  
     * - Option Type
       - Description
     * - ``:applies_to_children``
       - Use to specify how permissions are applied to children. Possible values: ``true`` to inherit both child directories and files;  ``false`` to not inherit any child directories or files; ``:containers_only`` to inherit only child directories (and not files); ``:objects_only`` to recursively inherit files (and not child directories).
     * - ``:applies_to_self``
       - Indicates whether a permission is applied to the parent directory. Possible values: ``true`` to apply to the parent directory or file and its children; ``false`` to not apply only to child directories and files.
     * - ``:one_level_deep``
       - Indicates the depth to which permissions will be applied. Possible values: ``true`` to apply only to the first level of children; ``false`` to apply to all children.

The ``rights`` attribute can be used as many times as necessary; the |chef client| will apply them to the file or directory as required. For example:

.. code-block:: ruby

   resource 'x.txt' do
     rights :read, 'Everyone'
     rights :write, 'domain\group'
     rights :full_control, 'group_name_or_user_name'
     rights :full_control, 'user_name', :applies_to_children => true
   end

or:

.. code-block:: ruby

    rights :read, ['Administrators','Everyone']
    rights :full_control, 'Users', :applies_to_children => true
    rights :write, 'Sally', :applies_to_children => :containers_only, :applies_to_self => false, :one_level_deep => true

Some other important things to know when using the ``rights`` attribute:

* Only inherited rights remain. All existing explicit rights on the object are removed and replaced.
* If rights are not specified, nothing will be changed. The |chef client| does not clear out the rights on a file or directory if rights are not specified. 
* Changing inherited rights can be expensive. |windows| will propagate rights to all children recursively due to inheritance. This is a normal aspect of |windows|, so consider the frequency with which this type of action is necessary and take steps to control this type of action if performance is the primary consideration.

Use ``deny_rights`` to deny specific rights to specific users. The ordering is independent of using ``rights``. For example, it doesn't matter if ``rights :deny, ['Julian', 'Lewis']`` is placed before or after ``deny_rights :read, ['Julian', 'Lewis']``, both Julian and Lewis will be unable to read the document. For example:

.. code-block:: ruby

   resource 'x.txt' do
     rights :read, 'Everyone'
     rights :write, 'domain\group'
     rights :full_control, 'group_name_or_user_name'
     rights :full_control, 'user_name', :applies_to_children => true
     deny_rights :read, ['Julian', 'Lewis']
   end

or:

.. code-block:: ruby

   deny_rights :full_control, ['Sally']
