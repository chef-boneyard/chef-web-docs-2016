.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Many |windows powershell_dsc_short| resources are comparable to built-in |chef| resources. For example, both |windows powershell_dsc_short| and |chef| have |resource file|, |resource package|, and |resource service| resources. The |resource dsc_script| resource is most useful for those |windows powershell_dsc_short| resources that do not have a direct comparison to a resource in |chef|, such as the ``Archive`` resource, a custom |windows powershell_dsc_short| resource, an existing |windows powershell_dsc_short| script that performs an important task, and so on. Use the |resource dsc_script| resource to embed the code that defines a |windows powershell_dsc_short| configuration directly within a |chef| recipe.
