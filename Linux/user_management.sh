#!/bin/bash

sudo useradd devuser
sudo passwd devuser
sudo usermod -aG sudo devuser
