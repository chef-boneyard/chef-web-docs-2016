.. The contents of this file are included in multiple topics and describes a note or a warning.
.. This file is very likely included in many spots across doc sets and versioned docs sets. It should be edited carefully, keeping in mind that it must be a neutral, matter-of-fact statement.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |resource chef_gem| and |resource package_gem| resources are both used to install |ruby| |gems|. For any machine on which the |chef client| is installed, there are two instances of |ruby|. One is the standard, system-wide instance of |ruby| and the other is a dedicated instance that is available only to the |chef client|. Use the |resource chef_gem| resource to install |gems| into the instance of |ruby| that is dedicated to the |chef client|. Use the |resource package_gem| resource to install all other |gems| (i.e. install |gems| system-wide).
