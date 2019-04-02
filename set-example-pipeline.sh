#!/bin/bash

fly -t gstack login -k -u cbrinker@evoila.de -p gst4ckr0cks
fly -t gstack set-pipeline -n -p test -c example-pipeline.yml \
    -v cf_username=cbrinker@evoila.de \
    -v cf_password=gst4ckr0cks \
    -v cf_api=https://api.sys.easyfoundry.prototyp.it \
    -v app_name=spring-music \
    -v app_artifact=build/libs/spring-music-1.0.jar \
    -v git_url=https://github.com/evoila/spring-music-cfsummitna2019.git \
    -v cf_org=cfsummitna2019 \
    -v cf_space=demo