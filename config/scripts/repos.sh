#!/usr/bin/env bash

# Tell this script to exit if there are any errors.
# You should have this in every custom script, to ensure that your completed
# builds actually ran successfully without any errors!
set -oue pipefail

wget https://copr.fedorainfracloud.org/coprs/bobslept/nerd-fonts/repo/fedora-"${OS_VERSION}"/bobslept-nerd-fonts-fedora-"${OS_VERSION}".repo -O /etc/yum.repos.d/bobslept-nerd-fonts-fedora-"${OS_VERSION}".repo
wget https://packages.microsoft.com/yumrepos/vscode/config.repo -O /etc/yum.repos.d/vscode.repo
wget https://download.docker.com/linux/fedora/docker-ce.repo -O /etc/yum.repos.d/docker.repo