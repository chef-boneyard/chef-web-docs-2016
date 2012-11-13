.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

A library allows arbitrary |ruby| code to be included in a cookbook, either as a way to extend the |chef| language or to implement a new class directly. A library is defined in |path cookbook library| for each cookbook. A library that is included in a cookbook is automatically required and will be available to all recipes, attributes, file definitions, providers, and definitions. A library is defined in the |path cookbook library rb|, which is found in the libraries folder for each cookbook. The contents of a library will determine the potential uses of that library in a cookbook.
