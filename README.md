# Weight Tracker with Ansible <img src="https://avatars.githubusercontent.com/u/1507452?s=200&v=4" width="40" height="40"/>

- Weight Tracker app deployed with ansible, using roles, variables and different modules.
- YAML to write ansible configurations.
- A controller machine which deploy the app to different enviroments (staging and production) using a single playbook.

# steps:

- Install ansible on ubuntu 18.04 with the commands in this site: [Installation Guide](https://gitlab.com/ansible-workshop/labs/lab01)
- Create ssh key and copy to remote machine by this command: ssh-keygen
- Configure remote machine to enable ansible to run it.
- Edit the hosts file: /etc/hosts and /etc/ansible/hosts - In the hosts file you can define your working groups, such as "stage" or "prod" and assign to each group their unique properties. Here we will just store there the IPs of the relevant machines.
  create your groups like this:
  ![image](inventory.png)
- Run a test to verify a connection exists with managed hosts
- Copy the key to the agents by using ssh-copy-id <path-to-file> username@hostname.
- Verify connection
- Make a new directory called enviroment
- In enviroment directory make 2 directory called - staging and prod
- In staging and prod make a new directory called "_group_name_"
- In each "_group_name_" directory create a YML file there with the same name as your file name (enviroment name) that store the .env variables. for example - PGHOST,OKTA, POSTGRESQL, and IP ADDRESS HOST.
- In enviroment directory create a new playbook -> nano playbook.yml
- In enviroment directory create a new inventory -> nano inventory and add your IPs.
- In enviroment directory create a new vars -> nano Vars.yml and add your details.
- Run playbook : ansible-Playbook _Your Play book YAML file_ --extra-vars "group=_group_name_".

# Node.js Weight Tracker

![Demo](docs/build-weight-tracker-app-demo.gif)

This sample application demonstrates the following technologies.

- [hapi](https://hapi.dev) - a wonderful Node.js application framework
- [PostgreSQL](https://www.postgresql.org/) - a popular relational database
- [Postgres](https://github.com/porsager/postgres) - a new PostgreSQL client for Node.js
- [Vue.js](https://vuejs.org/) - a popular front-end library
- [Bulma](https://bulma.io/) - a great CSS framework based on Flexbox
- [EJS](https://ejs.co/) - a great template library for server-side HTML templates

**Requirements:**

- [Node.js](https://nodejs.org/) 14.x
- [PostgreSQL](https://www.postgresql.org/) (can be installed locally using Docker)
- [Free Okta developer account](https://developer.okta.com/) for account registration, login

## Install and Configuration

1. Clone or download source files
1. Run `npm install` to install dependencies
1. If you don't already have PostgreSQL, set up using Docker
1. Create a [free Okta developer account](https://developer.okta.com/) and add a web application for this app
1. Copy `.env.sample` to `.env` and change the `OKTA_*` values to your application
1. Initialize the PostgreSQL database by running `npm run initdb`
1. Run `npm run dev` to start Node.js

**If you want make it with Server:**

1. Make sure the you have ip adress one for the application and one for the Database.
2. Copy the ip's to your .evn file.
3. Run all the comands from Terminal (use "chmod" comand to Mac).
4. Use comands to keep your server alive (You can use pm2 to do it https://pm2.keymetrics.io/)
5. Close the Terminal and chack your web application.

The associated blog post goes into more detail on how to set up PostgreSQL with Docker and how to configure your Okta account.
