# zapret_build

Моя личная сборка на основе утилиты zapret для разблокировки Youtube и Discord в России.


[Скачать последнюю версию](https://github.com/N3M1X10/zapret_build/releases)

---

### Автозапуск через службы

Данный вид автозагрузки утилиты не добавляет её в привычный автозапуск, а создаёт СЛУЖБУ

- `create_service_general.cmd` - автозапуск программы, общего пресета (discord и youtube)
- `create_service_discord.cmd` - автозапуск пресета для discord


В таком случае не нужно запускать консольную программу через `preset_general.cmd`
Программа будет запускаться и работать автоматически.


### Пересеты подобранные под определённых операторов

- `create_service_discord_mgts.cmd` - МГТС (служба)
- `preset_discord_mgts.cmd` - МГТС (консоль)


### Если потребовалось отключить автозапуск

- `remove_services.bat` - чтобы удалить все службы сборки из автозапуска и остановить WinDivert


### Разовый запуск программы без автозапуска

`preset_general.cmd` - стандартный пресет для разблокировки Youtube и Discord


# ПРИМЕЧАНИЯ

- Для корректной работы утилиты убедитесь в наличии прав администратора у запускаемых файлов!

![image](https://github.com/user-attachments/assets/5d9cc6fc-aa53-4966-9fc3-87585d9d8b3c)

- После каждой переустановки репозитория требуется `create_service_*.cmd`
- Консольный запуск программы через `preset_*.cmd` НЕ запускается если работает служба утилиты.

## Ошибки со службами
- При создании службы убедитесь что она создалась и запустилась
`Состояние : 4 RUNNING`

![image](https://github.com/user-attachments/assets/360ef9a5-626b-4de1-93ef-0efda752562b)

## Если после удаления служб, и создания новой - новая запущена, но не работает обход:

1. Снова удалите службу `remove_services.bat`
2. Запустите `preset_general.cmd` и закройте окно.
3. Затем снова попробуйте создать нужную вам службу.

Это может решить проблему с запуском службы

- В противном случае запустите `remove_services.bat` и `remove_windivert.bat` и перезапустите ПК

## На хромиум браузерах важные параметры

`chrome://flags/` где chrome - название вашего браузера, например может быть `opera://flags/`

Поставить в дэфолт (Вбить в поисковую строку: `chrome://flags/#enable-quic`)

![image](https://github.com/user-attachments/assets/f9f5a2b4-790a-48ae-8747-0047370835c7)


И отключить Kyber (Вбить в поисковую строку: `chrome://flags/#enable-tls13-kyber`)

![image](https://github.com/user-attachments/assets/0f2f0c45-795e-425b-bb35-7d87b3ce5b5f)

> Сборка активно обновляется, пишите об [ошибках](https://github.com/N3M1X10/zapret_build/issues)
> 
> Сборка утилиты от: https://github.com/N3M1X10
> 
> Основано на репозитории: https://github.com/bol-van/zapret/
>

Работает только на Windows, проверено на сборках:
```
Windows 10 19045.4780
Windows 10 19045.5011
Windows 11 26100.2033
```

---

## Благодарность

[Способ взят из темы оригинального репозитория у пользователя Flowseal](https://github.com/bol-van/zapret/issues/455#issuecomment-2400503770)

> [!NOTE]
> Если не получается найти ответ или получить помощь
>
> в данном репозитории - можете обратиться в [Репозиторий Flowseal](https://github.com/Flowseal/zapret-discord-youtube) 

Ну и конечно всем людям что помогают починить сборку ❤
