#!/bin/sh

st-flash --reset write build/micromouse.bin 0x8000000
