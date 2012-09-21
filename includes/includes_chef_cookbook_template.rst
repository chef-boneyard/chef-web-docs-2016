.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A cookbook template is a file written in a markup language that allows the contents of a file to be dynamically generated based on variables or complex logic. Templates can contain |ruby| expressions and statements. Templates are a great way to manage configuration files across a |chef| environment. A template requires a template resource being added to a recipe and then a corresponding |erb| template being added to a cookbook.

**jamescott: this needs to be revised includes_chef_cookbook_template**