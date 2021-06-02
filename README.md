# AlexeyCode_infra
#ДЗ№7
AlexeyCode Infra repository


Подключение к внутреннему хосту через бастион в одну команду
``ssh -i appuser -At appuser@<bastion ip> ssh appuser@<internal host ip>``

Создание алиаса для подключения
Добавляем в файл(создаем если нету) `vim ~/.ssh/config` следующие записи
```
Host bastion
    HostName 178.154.231.128
    IdentityFile ~/.ssh/appuser
    Port 22
    User appuser

Host somehost
    ProxyJump bastion
    HostName 10.130.0.23
    IdentityFile ~/.ssh/appuser
    Port 22
    User appuser
```

Pritunl host with ssl - https://178.154.231.128.sslip.io/

bastion_IP = 178.154.231.128
someinternalhost_IP = 10.130.0.23

#ДЗ№6
testapp_IP = 104.154.137.126
testapp_port = 9292

#ДЗ№7
## В процессе сделано:
 - Создание образа пакером с поднятым прикладом
 - Скрипт который поднимает vm  через yandex cli c поднятым прикладом

## Как запустить проект:
 - Убрать .examples из названия файла variables.json.examples, подставить свои значения переменных
 - Запустить packer build -var-file=variables.json immutable.json из директории packer

## Как проверить работоспособность:
 - Перейти по ссылке http://<ip созданной vm>:9292

#ДЗ№8
## В процессе сделано:
- Описана терраформ конфигурация для создания двух инстансов с поднятым прикладом
- Описана терраформ конфигурация для создания балансировщика, который маршутизирует траффик между инстансами

## Как запустить проект:
- Убрать .examples из названия файла terraform.tfvars.example, подставить свои значения переменных
- Из директории terraform запустить terraform init и terraform apply

## Как проверить работоспособность:
- Перейти по ссылке http://<ip балансировщика>:8080

#ДЗ№10
## В процессе сделано:
- Создан простой плейбук для ансибл
- Написан скрипт для работы с динамическим инвентори
- В статичном инвентори хосты передаются в формате dict в динамическом list, в динемическом инвентори можно
  ускорить получение переменных для хостов используя дополнительную секцию _meta

## Как запустить проект:
- В файле ansible.cfg заменить значение переменных remote_user и private_key_file
- В используемом inventory заменить значчения хостов на свои
- Из директории ansible запустить ansible all -m ping

## Как проверить работоспособность:
- Команда ansible all -m ping отработала успешно, хосты пингуются
