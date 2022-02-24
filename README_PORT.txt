8000 (8000 en interne) pour des access via kong-gateway
8001 (8001 en interne) pour des access à l'admin de kong (utilisé en interne par kong-gui)
  #pour des raisons de securité :8001 en démo seulement , loopback api conseillé en prod
---------------
8998 (8998 en interne) pour des access à jenkins console (:8080 inside docker)
---------------
27018 (27017 en interne) pour des access à mongodb server
---------------
8989 (8989 en interne) pour des access directs au frontends angular (ddc-app , qcm-app , ...)
---------------
8230 (idem en interne) pour des access directs au backend qcm-api
8231 (idem en interne) pour des access directs au backend ddc-api
8232 (idem en interne) pour des access directs au backend user-api (auth)