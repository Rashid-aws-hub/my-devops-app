@echo off
cd /d D:\devops\multi-tier-app

vagrant up web
vagrant up app
vagrant up db
vagrant up jenkins