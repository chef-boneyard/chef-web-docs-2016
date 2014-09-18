.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A cookbook template is an |erb| template that is used to generate files based on the variables and logic contained within the template. Templates may contain |ruby| expressions and statements and are a great way to manage configuration files across an organization. Use the |resource template| resource to add cookbook templates to recipes; place the corresponding |erb| template in a cookbook's ``/templates`` directory.