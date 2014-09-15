#!/bin/bash

# ========================================================================
# Copyright 2014 Microsoft Corporation

# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#     http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# ========================================================================

# This script is provided as a shorcut to starting the demo server.
# It essentially just loads up your kubernetes config and pulls some configuration variables from there.
# In the future this script may need adjusting as paths to the config scripts change.

#cloud profider
KUBERNETES_PROVIDER=gce

#path to kubernetes repo
KUBERNETES_PATH= 

# ip of kubernetes master
KUBERNETES_IP= 

export KUBERNETES_PROVIDER KUBERNETES_PATH

source $KUBERNETES_PATH/release/config.sh
source $KUBERNETES_PATH/cluster/${KUBERNETES_PROVIDER}/config-default.sh
./index.js \
	--KubernetesServer ${KUBERNETES_IP} \
	--NumMinions ${NUM_MINIONS} \
	--KubePath ${KUBERNETES_PATH} \
        --KubeAuthPath ~/.kubernetes \
        --KubeApiVersion v1beta1 \
        --ListenPort 3000 \
	$@

