.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The ``test`` argument is used to test a cookbook for syntax errors. This argument uses |ruby| syntax checking to verify every file in a cookbook that ends in .rb and |erb|. This argument will respect |chefignore| files when determining which cookbooks to test for syntax errors.


