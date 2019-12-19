![картинка vim](https://1.bp.blogspot.com/-nwxAcbTfezM/XfuG_btqgxI/AAAAAAAAEts/6Ct0ZJSndQMKXt1yn_HBT_edkGPPXUthQCK4BGAYYCw/s640/FullSizeRender-781384.jpg)

# Настройки редактора `VIM` (MacOS) с русским хелпом.

Папа клонируй пакет файлов `.vim` в домашнюю директорию своего мак.

Сделай это так: 

Открой на компике программу `Terminal.app`, если не знаешь что это – спроси у
Сирри. Далее введи в теминале строку, которую нужно скопировать ниже:

```shell
cd ~
```

Нажми клавишу с кривой стрелкой, она справа на клавиатуре и единственная она
только, имеет отличную от
других геометрию (форму).

Потом скопируй строку ниже и сделай с ней тоже самое, что и сделал с первой
строкой.
        
```shel
git clone 'https://github.com/ibo7/.vim.git'
```

Далее создай `alias` с помощью терминала – командой: 

```shel
ln -s ~/.vim/vimrc ~/.vimrc
```

Запустите Vim, введя в терминале:

```shell 
vim
```

Пред тобой откроется страшное окно с надписями в середине. Не обращай внимания,
это нормально.

Нажмите два раза клавишу ` ; ` и внизу, после двоеточия, введите команду:

```shell
PlugInstall
```

Перезапусти `VIM`. Нажми `Return`.

… уффф, конец.

![картинка
конца](https://2.bp.blogspot.com/-adiAk1fYThI/XfurLogWmAI/AAAAAAAAEuE/31wTTMAXuF8txWEjGBLXoNGZKAZerF-mQCK4BGAYYCw/s320/FullSizeRender-745973.jpg)
