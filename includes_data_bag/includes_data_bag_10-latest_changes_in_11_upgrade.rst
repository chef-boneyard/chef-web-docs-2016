.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

Before upgrading on any workstation you use to create/edit encrypted data bag items, upgrade |chef client| on all machines that use encrypted data bags to version |chef 10-18| or above. Once your |chef client| fleet is upgraded, you can start using |chef 11| on your workstation (the box you create/update encrypted data bag items on).

In order to get the benefits of improved security with the new data bag item format, it's recommended that you re-upload all of your encrypted data bag items once you've migrated to compatible versions of |chef client|. To migrate your data bag items, simply edit them with ``knife data bag edit`` or upload them with ``knife data bag from file``, whichever you normally do. |chef 11| will automatically upload your data bag items in the new format.