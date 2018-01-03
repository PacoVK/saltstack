login-to-my-repo:
  cmd:
    - run
    - name: docker login {{ salt['pillar.get']('docker-registry:url') }} -u {{ salt['pillar.get']('docker-registry:user') }} -p {{ salt['pillar.get']('docker-registry:password') }}
    - require:
      - service: docker