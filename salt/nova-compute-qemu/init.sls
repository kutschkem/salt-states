# vi: set ft=yaml.jinja :

include:
  -  nova-compute-libvirt

nova-compute-qemu:
  pkg.installed:   []

/etc/nova/nova-compute.conf:
  file.managed:
    - template:    jinja
    - source:      salt://{{ sls }}/etc/nova/nova-compute.conf
    - user:        nova
    - group:       nova
    - mode:       '0600'
    - require:
      - pkg:       nova-compute-qemu
    - watch_in:
      - service:   nova-compute
