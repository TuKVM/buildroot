#!/bin/bash

make O=${PWD}/output BR2_EXTERNAL=${PWD}/external_tree -C buildroot "$@"
