#!/bin/bash

# Проверка, работаем ли мы в WSL2
if [ -n "$WSL2_GUI_APPS_ENABLED" ]; then
  echo "Running in WSL2 environment."
  # Установка плагина и запуск Vagrant, если среда WSL2
  vagrant plugin install virtualbox_WSL2
  vagrant up
else
  echo "Not running in WSL2 environment. Skipping Vagrant setup."
  vagrant up
fi