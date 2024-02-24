# Ansible Project: Machine Start and Stop Automation

## Description
Led the design and implementation of an Ansible project aimed at efficiently starting and stopping all machines within the environment. Developed a user-friendly menu using Bash scripts to showcase various playbook options, allowing users to select actions by entering corresponding numbers.

## Key Contributions
- Designed and implemented Ansible playbooks for seamless machine management.
- Created a user interface with Bash scripts to simplify interaction for team members.
- Ensured robustness and efficiency in starting and stopping processes, optimizing resource utilization.
- Collaborated with the team to gather requirements and continuously improved the automation solution.

## Tools and Technologies
- Ansible
- Bash scripting

## Project Structure
```plaintext
ansible-project/
├── AR_playbooks/
│   ├── roles/
│   │   └── sms/
│   │       └── tasks/
│   │           └── main.yml
│   ├── Restart_AR_All.yml
│   ├── Restart_AR_Int.yml
│   ├── Restart_AR_User.yml
│   ├── Start_AR_All.yml
│   ├── Start_AR_Int.yml
│   ├── Start_AR_User.yml
│   ├── Stop_AR_All.yml
│   ├── Stop_AR_Int.yml
│   └── Stop_AR_User.yml
├── MID_playbooks/
│   ├── Restart_MID_All.yml
│   ├── Restart_MID_Int.yml
│   ├── Restart_MID_User.yml
│   ├── Start_MID_All.yml
│   ├── Start_MID_Int.yml
│   ├── Start_MID_User.yml
│   ├── Stop_MID_All.yml
│   ├── Stop_MID_Int.yml
│   └── Stop_MID_User.yml
├── MENU_Stop_Start.sh
├── README.md
└── inventory.ini
