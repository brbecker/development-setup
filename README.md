# Install development environment

Set up my development environment using a collection of shell scripts and Ansible playbooks.

## Installation Instructions

### Windows

1. Install WSL

1. Set WSL2 as default version

    ```powershell
    wsl --set-default-version 2
    ```

1. Install Ubuntu (22.04 LTS is current as of late 2023)

    ```powershell
    wsl --install Ubuntu-22.04
    ```

1. Start Ubuntu

    ```powershell
    wsl -d Ubuntu-22.04
    ```

1. Install Ansible and run the playbook.

    ```shell
    curl https://raw.githubusercontent.com/brbecker/development-setup/main/ubuntu.sh | sh
    ```
