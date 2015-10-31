.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


Runs as root. Use the default recipe to install on the build nodes dependencies required for the phase recipes to execute successfully. For example, if you needed to build and test |docker| containers, this is the recipe where you would install |docker|. It will be run prior to running a phase recipe.
