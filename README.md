# elkstack-centos
Ansible playbook for Elkstack (Elasticsearch, Logstash, Kibana) - CentOS/RH 6.x
>Logstash configuration created for Shibboleth IdP v3 audit logging

Includes:
- Elasticsearch 2.x
- Logstash 2.0
- Kibana 4.2.0
- Nginx 1.8.0
- OpenJDK 1.7.0

### Usage
Modify hosts-file --> Replace localhost with proper server name. Alter user & port if necessary.
````
[servers]
localhost ansible_ssh_user=vagrant ansible_ssh_port=2222
````
Run runansible.sh
```
[korteke@server ~]$ sh runansible.sh site
```

Tested with CentOS 6.4
