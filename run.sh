#!/bin/bash

sudo chroot "/gentoo" env USE="${WERCKER_EMERGE_USE}" "${WERCKER_EMERGE_PREFIX}"emerge "${WERCKER_EMERGE_ATOM}"
