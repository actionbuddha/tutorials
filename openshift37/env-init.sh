#ssh root@host01 'sed -i -e "s/slave/rshared/" /etc/systemd/system/multi-user.target.wants/docker.service'
#ssh root@host01 'systemctl daemon-reload && systemctl restart docker.service'
ssh root@host01 'curl -skSL https://github.com/storageos/go-cli/releases/download/1.0.0-rc1/storageos_linux_amd64 > /usr/local/bin/storageos && chmod +x /usr/local/bin/storageos'
ssh root@host01 'for i in {1..200}; do oc policy add-role-to-user system:image-puller system:anonymous && break || sleep 1; done'
ssh root@host01 'oc adm policy add-cluster-role-to-group sudoer system:authenticated'
ssh root@host01 'for i in {1..200}; do oc get project/openshift && break || sleep 1; done'
