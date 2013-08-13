.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |chef client| uses |ruby| as its reference language for creating cookbooks and defining recipes, with an extended DSL (domain-specific language) that is used for specific resources. These settings are saved as |ruby| files and are stored in the |chef repo|. When these files are uploaded to the |chef server|, they are converted to |json|. Each time the |chef repo| is refreshed, the contents of all domain-specific |ruby| files are re-compiled to |json| and are re-uploaded to the |chef server|.
