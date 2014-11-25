# vi: set ft=yaml.jinja :

{% set psls = sls.split('.')[1] %}

include:
  -  python-docker
  -  docker.{{ psls }}.run

docker start {{ psls }}:
  docker.running:
    - container:     {{ psls }}
    - binds:
        /srv/pillar:
          bind:        /srv/pillar
          ro:           true
        /srv/reactor:
          bind:        /srv/salt/salt-master/srv/reactor
          ro:           true
        /srv/salt:
          bind:        /srv/salt
          ro:           true
    - links:       []
    - lxc_conf:    []
    - watch:
      - docker:    docker run {{ psls }}
