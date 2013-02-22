.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef bookshelf| is used to store cookbook content---files, templates, and so on---that have been uploaded to the |chef server| as part of a cookbook version. Cookbook content is stored by content checksum. If two different cookbooks or different versions of the same cookbook include the same file or template, |chef bookshelf| will store that file only once. The cookbook content managed by |chef bookshelf| is stored in flat files and is separated from the |chef server| and search index repositories.
