.. The contents of this file are included in multiple topics.
.. This file describes a command or a sub-command for Knife.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |subcommand knife diff| subcommand is used to compare the differences between files and directories on the |chef server| and in the |chef repo|. For example, to compare files on the |chef server| prior to an uploading or downloading files using the ``knife download`` and ``knife upload`` subcommands, or to ensure that certain files in multiple production environments are the same. This subcommand is similar to the ``git diff`` command that can be used to diff what is in the |chef repo| with what is synced to a |git| repository.
