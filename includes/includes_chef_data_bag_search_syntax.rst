.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In some situations, it may not be possible to know exactly which data bags (or data bag items) should be used. Or in other situations, loading all of the data in a data bag might be the desired result. Use the search index to find data that is stored in one or more data bags in the |chef| environment and the various search patterns to fine-tune the search queries. Any data that is returned as the result of a search query can then be loaded by a recipe. **jamescott: are their other examples here?** Use the following syntax when searching for data in a data bag::

  search(name_of_data_bag, search_query)

For example, to find every admin in a data bag named "admins"::

   search(:admins, "*:*")

Or, to search for an administrator with an ID of "charlie"::

   search(:admins, "id:charlie")

Or, to search for all administrators with a group ID of "ops"::

   search(:admins, "gid:ops")

Or, to search for all administrators with an ID that begins with the letter "c"::

   search(:admins, "id:c*")

Once returned, this data can be used as if it were a hash. For example::

   charlie = search(:admins, "id:charlie").first
   # => variable 'charlie' is set to the charlie data bag item
   charlie["gid"]
   # => "ops"
   charlie["shell"]
   # => "/bin/ssh"
