# CRUD API 


## Setup 

The first thing to do is to clone the repository:

```sh
$ git clone https://github.com/sajibsd013/crud_api.git
```


Create a virtual environment and activate it:

```sh
$ python -m venv myenv
$ myenv\Scripts\activate
```


Then install the dependencies:

```sh
(env)$ cd crud_api
(env)$ pip install -r requirements.txt
```


Change database setting from setting.py as follows and start database server:

```sh
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.mysql',
        'NAME': 'crud_api_db', #Your Database Name
        'USER': 'root', #database user with remote access privilege
        'PASSWORD': '', #password
        'HOST': '127.0.0.1', #server ip address
        'PORT': '3306', #PORT
    }
}
```


create database:

```sh
(env)$ python manage.py migrate
```


create admin username and password:

```sh
(env)$ python manage.py createsuperuser
```


Then run your project:

```sh
(env)$ python manage.py runserver
```

