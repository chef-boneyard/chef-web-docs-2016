.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Use the |resource osx_profile| resource to manage configuration profiles (``.mobileconfig`` files) on the |mac os x| platform. The |resource osx_profile| resource installs profiles by using the ``uuidgen`` library to generate a unique ``ProfileUUID``, and then using the ``profiles`` command to install the profile on the system.
