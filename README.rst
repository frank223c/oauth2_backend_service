########################################
oauth2_backend_service
########################################

.. class:: no-web

    oauth2_backend_service es una manera fácil de extender la clase ``AbstractUser`` de `Django`_ y define un modelo de *autenticación/autorización* para **aplicaciones SaaS** para los proyectos de `Django`_.


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

The **latest development version** can be installed directly from github_:

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

    # deberás crear las apps en http://localhost:7001/o/applications/ y en el cliente https://github.com/practian-ioteca-project/catalogo_web/blob/master/app/config.js actualizar la variable
    oauth2Service.clientId = "tu nuevo client_id";

O en MySQL admin, restrure la DB de https://github.com/practian-ioteca-project/oauth2_backend_service/blob/master/upeu_db.sql ::

	# USER : admin
	# PASSWORD : 12345


Run the app in 7001 port::

    (ve_oauth2_backend) E:\dev\oauth2_backend_service>manage.py runserver 7001



or clone from github_:

.. code-block:: bash

    $ git clone https://github.com/practian-reapps/django-backend-utils.git

(If ``pip`` installation fails for some reason, you can try ``easy_install`` as a fallback.)



===========
Quick start
===========

1. Add "backend_utils" to your INSTALLED_APPS setting like this:

.. code-block:: bash

    INSTALLED_APPS = [
        ...

        'backend_utils',
    ]




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


.. _Django OAuth Toolkit: https://django-oauth-toolkit.readthedocs.io
.. _Django: https://www.djangoproject.com
.. _github: https://github.com/practian-ioteca-project/oauth2_backend_service



