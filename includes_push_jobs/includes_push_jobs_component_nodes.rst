.. The contents of this file are included in multiple topics.
.. This file should not be changed in a way that hinders its ability to appear in multiple documentation sets.


The |push jobs| client is used to receive job messages from the |push jobs| server and to verify the heartbeat status. The |push jobs| client uses the same authorization / authentication model as the |chef client|. The |push jobs| client listens for heartbeat messages from the |push jobs| server. If there is no heartbeat from the |push jobs| server, the |push jobs| client will finish its current job, but then stop accepting any new jobs until the heartbeat from the |push jobs| server resumes.
