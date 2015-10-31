.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

|chef delivery| uses projects to organize work across multiple teams. You can create as many projects as you need. A common approach is to have one project for each major component of the system. Each project has its own |git| repository. 

Each project has one (or more) pipelines. Each pipeline has a designated target branch into which it will merge approved changes. |chef delivery| uses a "gated master" model that manages merges to the target branch. The typical setup is for each project to have a single pipeline that targets the master branch.
