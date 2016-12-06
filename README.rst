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

* Python 2.7, 3.2, 3.3, 3.4, 3.5
* Django 1.8, 1.9, 1.10



-------------------
Development version
-------------------

The **latest development version** can be installed directly from github_:

.. code-block:: bash
    
    # Universal
    $ pip install --upgrade https://github.com/practian-reapps/django-backend-utils/raw/master/dist/django-backend-utils-0.1.zip

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



.. _Django OAuth Toolkit: https://django-oauth-toolkit.readthedocs.io
.. _Django: https://www.djangoproject.com
.. _github: https://github.com/practian-reapps/django-backend-utils



