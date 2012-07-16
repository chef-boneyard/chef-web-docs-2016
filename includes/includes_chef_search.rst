.. This is an included file. 

Search allows queries to be made for any type of data that is indexed by a |chef server|, including data for a |chef client|, data bags (and data bag items), environments, nodes, and roles. |chef| has a defined query syntax that includes search patterns like exact, wildcard, range, and fuzzy. The search engine is based on |apache solr| and is run from a |chef server|. A search is a full-text query that can be done from within a recipe or by using the ``search`` sub-command in |knife|.

