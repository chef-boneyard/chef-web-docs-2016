.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the machine_image resource to define one (or more) machine images, and then converge them. This allows machine images to be maintained in a version control system and to be defined using multi-image orchestration scenarios.

Each machine image is declared separately. Recipes (defined in cookbooks) are used to manage them. The |chef client| is used to converge the individual nodes (machine images) wherever they are required. 
