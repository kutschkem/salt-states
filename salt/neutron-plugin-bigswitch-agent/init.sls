# vi: set ft=yaml.jinja :

include:
  - .depend-supervisor
  -  neutron-common
  -  neutron-plugin-bigswitch

neutron-plugin-bigswitch-agent:
  pkg.installed:   []
{% if salt['config.get']('virtual_subtype') == 'Docker' %}
  service.dead:
    - enable:      False
{% else %}
  service.running:
    - enable:      True
{% endif %}
    - watch:
      - pkg:       neutron-plugin-bigswitch-agent
#     - file:     /etc/neutron/api-paste.ini
      - file:     /etc/neutron/fwaas_driver.ini
      - file:     /etc/neutron/l3_agent.ini
      - file:     /etc/neutron/neutron.conf
#     - file:     /etc/neutron/policy.json
      - file:     /etc/neutron/vpn_agent.ini
      - file:     /etc/neutron/plugins/bigswitch/restproxy.ini
