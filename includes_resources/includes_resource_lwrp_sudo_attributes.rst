.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

This lightweight resource provider has the following attributes:

.. list-table::
   :widths: 200 300
   :header-rows: 1

   * - Attribute
     - Description
   * - ``:commands``
     - An array of commands that the user or group can execute using |sudo cmd|. This value must use the full path for each command, otherwise the resulting fragment will fail validation.
   * - ``:group``
     - The group for which |sudo cmd| privileges are provided.
   * - ``:host``
     - 
   * - ``:nopasswd``
     - Indicates whether a password must be supplied when invoking |sudo cmd|.
   * - ``:runas``
     - 
   * - ``:template``
     - A |erb| template file in the current cookbook (not the ``sudo`` cookbook). If this attribute is used, all other attributes will be ignored except for ``variables``.
   * - ``:user``
     - The user for which |sudo cmd| privileges are provided.
   * - ``:variables``
     - A hash of variables that are used with the |erb| template file.
