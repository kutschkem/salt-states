# neutron-plugin-mlnx-agent

## Depends:

  -  [logstash](/salt/logstash)
  -  [neutron-plugin-mlnx](/salt/neutron-plugin-mlnx)
  -  [sensu-client](/salt/sensu-client)
  -  [supervisor](/salt/supervisor)

## Reverse Depends:

  -  N/A

## Relates:

  -  [logstash](/salt/logstash)
  -  [sensu-api](/salt/sensu-api)

## Files:

```bash
.
├── defaults.yaml
├── depend-supervisor.sls
├── etc
│   ├── logstash
│   │   └── conf.d
│   │       └── input-file-neutron-plugin-mlnx-agent.conf
│   ├── sensu
│   │   └── conf.d
│   │       └── checks-neutron-plugin-mlnx-agent.json
│   └── supervisor
│       └── conf.d
│           └── neutron-plugin-mlnx-agent.conf
├── init.sls
├── relate-logstash.sls
└── relate-sensu-api.sls
```
