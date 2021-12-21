# NewsApp

Project to perform CRUD in a news environment, post news, edit, delete, show, all the good stuff.  
It includes Active Admin so you can perform CRUD in an admin platform.

# Try it

If you want to try it you should have:

-RVM installed (https://rvm.io/rvm/install) for managing Ruby, Ruby on Rails, Gem install.  
-Node.js (https://nodejs.org/es/) (NVM is recommended).  
-Yarn (https://yarnpkg.com/getting-started/install).  
-PostgreSQL (https://www.postgresql.org/download/).

After cloning repo, first make sure you have PostgreSQL up and running, create a role with a password (with db create permission) and put it in an env variable (could be .bashrc in Ubuntu/Linux).  
Names are "PG_USER" for username and "PG_PWD" for password.  
Cd into the folder, run "rails db:create", "rails db:migrate", "rails db:seed", then "rails webpacker:install", and it should be OK to start.

To start server, just execute the command "rails s" and it will initialize.

If you want to use Google Auth you need API Keys from console.cloud.google.com, then put CLIENT_ID and CLIENT_SECRET in your env variable as "CLIENT_ID" and "CLIENT_SECRET".

# Instrucciones detalladas (Ubuntu)

## Instalación de RVM (Ruby Version Manager)

Abrir consola (ctrl+alt+t), copiar, pegar y ejecutar los siguientes comandos uno a uno.  
`sudo apt install gnupg2 curl`  
`gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB`  
`\curl -sSL https://get.rvm.io | bash -s stable --rails`  
`echo "source $HOME/.rvm/scripts/rvm" >> ~/.bash_profile`  

Si todo sale bien, debería poder ejecutar en la consola `rails --version` o `ruby --version` sin problemas.

## Instalación de NVM (Node Version Manager)

Abrir consola (ctrl+alt+t), copiar, pegar y ejecutar los siguientes comandos uno a uno.  
`curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash`  
`source ~/.bashrc`  
`nvm install --lts`  

Si todo sale bien, debería poder ejecutar en la consola `nvm --version`, `npm --version` o `node --version` sin problemas.  
En caso de error al ejecutar `node --version`, quizás sea necesario usar la versión recién instalada con el comando `nvm use --lts`.

## Instalación de Yarn

Abrir consola (ctrl+alt+t), copiar, pegar y ejecutar el siguiente comando.  
`npm i -g yarn`

Si todo sale bien, debería poder ejecutar en la consola `yarn --version`.

## Instalación de PostgreSQL

Abrir consola (ctrl+alt+t), copiar, pegar y ejecutar los siguientes comandos uno a uno.  
`sudo apt update`  
`sudo apt install postgresql postgresql-contrib`  
`sudo -u postgres createuser --interactive` (aquí pedirá ingresar nombre de usuario y si el rol será superuser)  
`psql -U postgres -d postgres` (este comando nos llevará al prompt de Postgres, donde modificaremos la contraseña del usuario previamente creado)  
`ALTER USER user_name WITH PASSWORD 'new_password';` (reemplaza `user_name` con el nombre de usuario recién creado, y `'new_password'` con la contraseña deseada)

Al terminar estos comandos, tenemos que agregar variables de entorno a nuestro .bashrc usando el comando `nano ~/.bashrc`.  
Navegaremos hasta el final del texto, y agregaremos las variables `PG_USER` y `PG_PWD` de la siguiente manera.  
`export PG_USER=user` (reemplazamos `user` por el nombre de usuario creado anteriormente)  
`export PG_PWD=pwd` (reemplazamos `pwd` por la contraseña creada anteriormente)  
Al agregar dichas variables, presionaremos ctrl+x para salir, presionaremos y para guardar el buffer y Enter para confirmar el nombre.  
Lo último que debemos hacer es actualizar el archivo .bashrc con el comando `source ~/.bashrc`, se recomienda cerrar y abrir nuevamente la consola.

## Instalación de GIT

Abrir consola (ctrl+alt+t), copiar, pegar y ejecutar los siguientes comandos.  
`sudo apt install git`  
`git config --global user.name "Your Name"` (reemplazar `"Your Name"` con su nombre o nombre de usuario)  
`git config --global user.email "Your Email"` (reemplazar `"Your Email"` con su correo, el cual está asociado a su perfil de Github)

## Clonación de repo

Abrir consola (ctrl+alt+t), copiar, pegar y ejecutar los siguientes comandos.  
`git clone https://github.com/gabo71096/newsapp.git`  
`cd newsapp`

## Para Google Auth

Debe ingresar con su cuenta de Google a [console.cloud.google.com](url), crear un proyecto, dirigirse a API y Servicios, configurar Pantalla de consentimiento de OAuth, y finalmente crear credenciales ID de cliente OAuth.  
En orígenes autorizados de Javascript escribir `http://localhost:3000` y en URI de redireccionamiento autorizados escribir `http://localhost:3000/auth/google_oauth2/callback`  
Finalmente, debemos agregar `CLIENT_ID` y `CLIENT_SECRET` a nuestro .bashrc siguiendo el procedimiento aplicado en Postgres.  
Ejecutar `nano ~/.bashrc` y agregar las siguientes variables al final del documento  
`export CLIENT_ID=id` (reemplazar `id` por el CLIENT_ID que se generó en la consola de Google)  
`export CLIENT_SECRET=secret` (reemplazar `secret` por el CLIENT_SECRET que se generó en la consola de Google)  
Presionamos ctrl+x para salir, y para guardar y enter para confirmar.

## Preparar y levantar proyecto

Abrir consola (ctrl+alt+t), copiar, pegar y ejecutar los siguientes comandos.  
`rails db:create`  
`rails db:migrate`  
`rails db:seed`  
`rails webpacker:install`  
`rails s` (para levantar el servidor localhost:3000)
