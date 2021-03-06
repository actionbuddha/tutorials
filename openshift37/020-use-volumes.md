## Create Persistent Volume Claim

`oc create -f pvc.yaml`{{execute}}

List volumes:
`oc get pv,pvc`{{execute}}

List volumes with the StorageOS CLI:
`storageos volume ls`{{execute}}

See the status of the volume with the oc cli and verify the volume is successfully allocated. 

`oc describe pvc`{{execute}}

## Web UI

StorageOS container spins up a lightweight UI from which you can see and control volumes, nodes, etc.

Render https://[[HOST_SUBDOMAIN]]-5705-[[KATACODA_HOST]].environments.katacoda.com/

Access to StorageOS UI by clicking on the **StorageOS** tab in the console frame of this browser window. This will open the web console link in another tab or window of your browser.

You should see an **StorageOS login** window with **Username** and **Password** forms.

**Username:** ``storageos``{{copy}}
**Password:** ``storageos``{{copy}}
