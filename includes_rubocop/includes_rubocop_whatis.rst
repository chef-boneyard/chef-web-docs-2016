.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


|rubocop| is a style and linting tool that analyzes all of the |ruby| code that is authored in a cookbook against a number of rules (sometimes referred to as "cops"). Each rule examines the code for a specific perspective and will generate a list of warnings, deviations from patterns, potential errors, and fatal errors.

|rubocop| is built for |ruby| developers. It will enforce the conventions that are defined by the community of |ruby| developers. As users of |chef| and as authors of cookbooks, we do not always have the same objectives and goals, but there is enough of an overlap that using |rubocop| as part of the team's workflow is beneficial.

Each "cop" in |rubocop| may be turned on and turned off. Custom rules may be created to assist with enforcing standards unique to a cookbook authoring team.
