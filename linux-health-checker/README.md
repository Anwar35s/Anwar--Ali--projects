# Linux System Health Checker

## Project Overview

A Bash automation script that monitors system health and generates a report using Linux commands inside an Ubuntu Docker container.

## Features

- System information
- Current date and time
- Disk usage
- Memory usage
- Hostname
- System uptime
- CPU usage
- Top five processes by CPU usage
- Automated warning when disk usage exceeds 80%

## Technologies Used

- Linux
- Bash scripting
- Docker
- VS Code
- Git and GitHub

## How to Run

Start an Ubuntu container with a bind mount:

    docker run -it --name linux-practice -v "$(pwd):/workspace" ubuntu bash

Navigate to the project directory:

    cd /workspace

Grant execute permission:

    chmod +x health_check.sh

Run the script:

    ./health_check.sh

## Challenges and Solutions

- Fixed Linux command syntax errors.
- Resolved a missing `htop` dependency by using `top -bn1`.
- Used pipes, awk and tr to extract and process disk usage.
- Implemented Bash conditional statements to generate automated warnings.

## What I Learnt

This project helped me reinforce my Linux, Bash and Docker knowledge from the CoderCo DevOps programme.

I gained practical experience with Docker bind mounts, file permissions, command substitution, variables, text processing, conditional statements and troubleshooting.

## Results

The script successfully detected 97% disk usage on my mounted filesystem and generated an automated warning.

## Future Improvements

- Timestamped report logging
- Scheduled health checks using cron
- Configurable warning thresholds
- Automated email notifications