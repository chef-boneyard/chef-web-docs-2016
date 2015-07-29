.. The contents of this file are included in multiple topics and describes a note or a warning.
.. This file is very likely included in many spots across doc sets and versioned docs sets. It should be edited carefully, keeping in mind that it must be a neutral, matter-of-fact statement.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


In many cases, it is better to use the |resource package| resource instead of this one. This is because when the |resource package| resource is used in a recipe, the |chef client| will use details that are collected by |ohai| at the start of the |chef client| run to determine the correct package application. Using the |resource package| resource allows a recipe to be authored in a way that allows it to be used across many platforms.
