.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.

In |chef 10|, objects in encrypted data bag items are serialized to |yaml| before being encrypted. Unfortunately, discrepancies between |yaml| engines in different versions of |ruby| (in particular, 1.8.7 and 1.9.3) may cause silent corruption of serialized data when decrypting the data bag (the version stored on the |chef server| is untouched and can be correctly deserialized with the same |ruby| version that was used to create it, however).

Because the corruption is silent, there is no way for the |chef client| to detect it; furthermore, all workaround possibilities we've investigated have severe limitations. Additionally, we wanted to modify the encrypted data bag item format to support using a random initialization vector each time a value is encrypted, which provides protection against some forms of cryptanalysis. In order to solve these issues, we've implemented a new encrypted data bag item format:

* The user interface to encrypted data bags is unchanged. This change only affects the format of the encrypted values.
* |chef 11| clients will be able to read encrypted data bags created with either |chef 10| or |chef 11|.
* |chef 10| clients |chef 10-18| and above will be able to read encrypted data bags created with either |chef 10| or |chef 11|
* |chef 10| clients version |chef 10-16| and lower cannot read encrypted data bags created with |chef 11|
* |chef 11| knife commands will only create data bags in the new format.
* |chef 10| knife commands will only create data bags in the old format.