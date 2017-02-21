########################################
oauth2_backend_service
########################################

.. class:: no-web

    oauth2_backend_service es el microservicio para el **Authorization server** escrita en  `Django`_ 1.10.x, `Django REST Framework`_ 3.5.x y `Django OAuth Toolkit`_ 0.10.x (OAuth2). Y utiliza la app oauth2_backend_.



    .. image:: https://github.com/practian-ioteca-project/oauth2_backend_service/blob/master/media/doc/e1-authorization_server.png
        :alt: HTTPie compared to cURL
        :width: 100%
        :align: center





.. contents::

.. section-numbering::

.. raw:: pdf

   PageBreak oneColumn


============
Installation
============

--------------
Requirements
--------------

* Python 3.4, 3.5
* Django 1.9, 1.10



-------------------
Development version
-------------------

Clone **latest development version** directly from github_:

.. code-block:: bash
    
    # Universal
    
    E:\dev>git clone https://github.com/practian-ioteca-project/oauth2_backend_service.git

Cree un entorno virtual::

    E:\dev>virtualenv ve_oauth2_backend
    E:\dev>ve_oauth2_backend\Scripts\activate

Instale las dependencias::

    (ve_oauth2_backend) E:\dev>cd oauth2_backend_service
    (ve_oauth2_backend) E:\dev\oauth2_backend_service>pip install -r requirements.txt

Sync your database y Cree un super usuario::

    (ve_oauth2_backend) E:\dev\oauth2_backend_service>manage.py migrate

    (ve_oauth2_backend) E:\dev\oauth2_backend_service>manage.py createsupersuer

    # deberás crear las apps en http://localhost:7001/o/applications/ 
    # y en el cliente https://github.com/practian-ioteca-project/catalogo_web/blob/master/app/config.js 
    # actualizar la variable

    oauth2Service.clientId = "tu nuevo client_id";

O en MySQL admin, restrure la DB de https://github.com/practian-ioteca-project/oauth2_backend_service/blob/master/upeu_db.sql ::

	# USER : admin
	# PASSWORD : 12345


Run the app in 7001 port::

    (ve_oauth2_backend) E:\dev\oauth2_backend_service>manage.py runserver 7001



===========
Revise las configuraciones
===========

1. INSTALLED_APPS setting like this:

.. code-block:: bash

	INSTALLED_APPS = [
	    'django.contrib.admin',
	    'django.contrib.auth',
	    'django.contrib.contenttypes',
	    'django.contrib.sessions',
	    'django.contrib.messages',
	    'django.contrib.staticfiles',

	    'django.contrib.admindocs',
	    'rest_framework',
	    'corsheaders',
	    'oauth2_provider',

	    'oauth2_backend',
	    'backend_utils',
	]

2. AUTH_USER_MODEL setting like this::

	AUTH_USER_MODEL = 'oauth2_backend.User' 

3. DATABASES setting like this::

	# Database mysql
	DATABASES = {
	    'default': {
	        'ENGINE': 'django.db.backends.mysql',
	        'OPTIONS': {
	            'read_default_file': 'credentials.cnf',  # read_default_file solo funciona con mysql
	        },
	    },
	}	

4. credentials.cnf file setting like this::

	# my.cnf
	[client]
	database = upeu_db
	user = root
	password = 12345
	host = 127.0.0.1
	port = 3306
	default-character-set = utf8



====
Meta
====


-------
Licence
-------

BSD-3-Clause: `LICENSE <https://github.com/practian-ioteca-project/oauth2_backend_service/blob/master/LICENSE>`_.



-------
Authors
-------

- Angel Sullon Macalupu (asullom@gmail.com)



-------
Contributors
-------

See https://github.com/practian-ioteca-project/oauth2_backend_service/graphs/contributors

.. _github: https://github.com/practian-ioteca-project/oauth2_backend_service
.. _Django: https://www.djangoproject.com
.. _Django REST Framework: http://www.django-rest-framework.org
.. _Django OAuth Toolkit: https://django-oauth-toolkit.readthedocs.io
.. _oauth2_backend: https://github.com/practian-reapps/django-oauth2-backend







