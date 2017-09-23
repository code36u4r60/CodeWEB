# Configurar o ubuntu para desenvolvimento web

## Downloads
- virtual box
- ubuntu 

## Configurar as fonts
> Fazer download das fontes em [Google/fonts](https://fonts.google.com/)
- Roboto
- Roboto mono
- Inconsolata

> Instalar as fontes na pasta "HOME"
- criar uma pasta __.fonts__
- copiar os ficheiro ``` .ttf ``` _(fontes)_ para dentro dessa pasta
- Realizar o __scan__ do sistema e fazer o __load__ das novas fontes : ``` sudo fc-cache -fv  ```

> Configurar a Aparencia 
- ir ao __System Settings__ -> __Apperance__
- em __Behavior__ selecionar:
    - In the windown's title bar
    - Always displayed

- Baixar __Unity Tweak Tool__ através do __Ubuntu Software__ (loja de aplicativos)
- Abrir __Unity Tweak Tool__
- Entar em __Fonts__
    - em __Default fonte:__ selecionar __Roboto Regular__
    - em __Monospace font:__ selecionar __Roboto Mono Regular__
    - em __Document font:__ selecionar __Roboto Regular__
    - em __Window title font:__ selecionar __Roboto Regular__

> Configurar as fontes do firefox para ficarem como as do windows
- Instalar as fontes da Microsft: ```sudo apt-get install ttf-mscorefonts-installer```
- Ir as __Prefereces__ -> __Content__
- No separador __Fonts & Colors__ selecionar __Advanced__
- Em __Serif:__ escolher __Times New Roman__, __Size:__ 16
- Em __Sans-serif:__ escolher __Arial__
- Em __Monospace:__ escolher __Courier New__, __Size:__ 13

## Configurar o Git
- Adicionar o ppa do git: ```sudo add-apt-repository ppa:git-core/ppa```
- ```sudo apt-get update```
- Instalar o __Git__ ```sudo apt-get install git```
- Ver a versão do __git__ ```git --version```

## Instalar o RVM, Ruby and Rails
- Visitar a web page [rvm.io](https://rvm.io/)
- Install RVM: 
- ```gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB```
- ```\curl -sSL https://get.rvm.io | bash -s stable --rails```. Se copiar do site não esquecer de adicionar o ```--rails```
- No fim da instalação vai aparecer uma menssagem "* To start usaing RVM you need to run ..." de copiar o comando entre __' '__
- Antes de colar e executar esse comando deve editar a definições do terminal
    - ir __Terminal__ -> __Preferences__ -> __Profiles__
    - __Edit__ -> __Command__
    - Selcionar __Run command as a login shell__
- Agora deve colar e executar o comando copiado, exemplo:(```source /home/your_pc_name/.rvm/scripts/rvm```)
- para saber a versão do __ruby__ ```ruby --version```
- para saber a versão do __rails__ ```rails --version```
- Tsetar se ficou bem instalado:
    - Criar um nova pasta ```mkdir Code```
    - Entrar nessa pasta ```cd Code```
    - Executar ```rails new testeproject```, testeproject é um exemplo para o nome do projeto.
    - Entrar nas pasta do projeto ```cd testeproject```
    - Iniciar o servidor __rails__ ```rails server```
    - vai dar erro pois falta o Node.js

## Instalar NVM e Node.js
- Visitar o repositorio GitHub [Creationix|NVM](https://github.com/creationix/nvm)
- Procurar - "Install script"
- Copiar o comando para terminal e executar. Os comando a data são: 
```sh
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
```
ou Wget:
```sh
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.4/install.sh | bash
```
- Saber a versão __NVM__ ```nvm --version```
- Instalar a ultima versão do __Node__: ```nvm install node```
- Saber a versão do __node__: ```node --version```
- Saber a versão do __npm__: ```npm --version```
- Testar se estado a funcionar:
    - Entrar na pasta do _Projeto_ ```cd Code/testeproject```
    - ```rails server```
    - Abrir um browser e digitar ```localhost:3000```

## Instalar o XAMPP
- Ir a web page do [XAMPP](https://www.apachefriends.org/pt_br/index.html)

- Fazer o download do XAMPP

- _No terminal_, ir a pasta para onde foi feito o Download: ```cd Downloads```

- Mudar a permissões do ficheiros para que possa ser executado: ```chmod +x xampp-...-installer.run```

- Executar o ficheiro de instalação: ```sudo ./xampp-...-installer.run```

- ```sudo /opt/lamp/lamp stop```

- ```sudo gedit /etc/hosts```
    - mudificar a primeira linha para __127.0.0.1    localhost   php.dev__

- ```sudo gedit /opt/lampp/etc/httpd.conf```
    - procurar "Virtual hosts" e descomentar o _include_ ```include etc/extra/httpd-vhosts.conf```

- Ir para pasta onde se vai criar os Projetos
    - ``` cd ~/Code```
    - ``` mkdir phpprojects```
    - ``` cd phpprojects```

- ```sudo gedit /opt/lampp/etc/extra/httpd-vhosts.conf```
    - Procurar "VirtualHosts example"
    - Apagar o primeiro exemplo
    - Alterar o segundo:
    ```sh
    <VirtualHost php.dev:80>
        ServerAdmin webmaster@dummy-host2.example.com
        DocumentRoot "/home/.../Code/phpprojects"
        ServerName php.dev  
    </VirtualHost>   
    <Directory "/home/.../Code/phpprojects">
        Require all granted
    </Directory>
    ```

- Iniciar o servidor: ```sudo /opt/lampp/lampp start```

- Criar um ficheiro __idex.php__ na pasta __phpprojects__

- Editar o ficheiro um exemplo de código em __php__
    - exemplo:
    ```php
    <?php
        echo "Hello world!"
    ?>
    ```
- Abrir um browser e digitar e ir para a página  __php.dev__ . Deve aparcer _Hello world!_

## Instalar Meteor
- [METEOR](https://www.meteor.com/)
- [METEOR : INSTALL](https://www.meteor.com/install)
- Executar o comando no terminal
```sh
curl https://install.meteor.com/ | sh
```
- Criar uma pasta para testar o Meteor
    - ```cd Code/```
    - ```meteor create testemeteorproject```
    - ```cd testemeteorproject```
    - ```meteor```
- No browser digitar ```localhost:3000```

## Instalar o editor ATOM
- No terminal:
```sh
sudo add-apt-repository ppa:webupd8team/atom && sudo apt-get update && sudo apt-get install atom
```
- Abrir o __Atom__
- Editar as preferencias
- Em __Settings__:
    - ```Edit``` -> ```Preferences```
    - __Font Familly__ -> Inconsolata
    - __Font Size__ -> 25
    - __Scroll Past End__ -> Check
    - __Soft Wrap__ -> Check
    - __Tab Type__ -> soft

- Em __Packages__:
    - __spell check__ -> Disable
    - __wrap guide__ -> Disable
    - __autocomplete snippets__ -> Disable

- Em __Install__:
    - Packages
        - __highlight-selected__ autor: _richrace_
        - __file icons__  autor: _DanBrooker_
        - __language babel__ autor: _gandm_
        - __autocomplete modules__ autor: _nkt_
        - __emmet__ autor: _emmetio_
        - __swackts__ autor: _jrattray13_
        - __power mode__ autor: _JoelBesada_
    - Themes
        - __an old hope__ autor: _jesseleite
        - __robin hood__ autor: _azat-io_

## Instalar Brackets
- No terminal:
```sh
sudo add-apt-repository ppa:webupd8team/brackets && sudo apt-get update && sudo apt-get install brackets
```
- Editar as preferencias
    - __View__ -> __Theme__
        - __Fonte Size:__ 18px
        - __Fonte Family:__ Inconsolata

- Em __Extension Manager__
    - Available:
        - emmet

## Instalar o Visual Studio Code
- No terminal
```sh
sudo add-apt-repository ppa:ubuntu-desktop/ubuntu-make && sudo apt-get update && sudo apt-get install ubuntu-make

umake ide visual-studio-code
```

## Instalar o Google Chrome
> é preciso para o Brackets

## Shell Frameworks
### Oh my zsh
> repositorio: [oh my zsh](https://github.com/robbyrussell/oh-my-zsh)
- No terminal:
```sh
sudo apt-get install zsh

# via curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# via wget
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
```

### Prezto
> repositorio: [Prezto](https://github.com/sorin-ionescu/prezto)
