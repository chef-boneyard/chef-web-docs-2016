.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Bookshelf is used to store cookbook content such as files and templates that have been uploaded to the |chef server| as part of a cookbook version. Cookbook content is stored by content checksum. If two different cookbooks or different versions of the same cookbook include the same file or template, it will only be stored once by bookshelf. The cookbook content managed by bookshelf is stored in flat files and is separate from the |chef server| and search index repositories.
