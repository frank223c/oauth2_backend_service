oauth2 backend es una manera fácil de configurar el mecanismo de autenticación / autorización con `Django OAuth Toolkit`_ para los proyectos de Django.


Restaure 
-------------------
la base de datos upeu_db en MySQL
Ejecute el sccript upeu_db.sql
 

Authorization Server API REST:
-------------------
(ve_...) D:\practian o XXX\oauth2_backend_service>pip install -r requirements.txt
(ve_...) D:\practian o XXX\oauth2_backend_service>manage.py migrate
(ve_...) D:\practian o XXX\oauth2_backend_service>manage.py createsupersuer

(ve_...) D:\practian o XXX\oauth2_backend_service>manage.py runserver 7001
Performing system checks...

System check identified no issues (0 silenced).
November 29, 2016 - 19:12:37
Django version 1.10.3, using settings 'oauth2_backend_main.settings'
Starting development server at http://127.0.0.1:7001/
Quit the server with CTRL-BREAK.

// USER : admin
// PASSWORD : 12345


Backup database
-------------------
(ve_...) D:\practian o XXX\oauth2_backend_service>manage.py dumpdata > fixtures/ini_data.json --exclude=corsheaders


Load o restore database
-------------------
See in the settings.py setting for FIXTURE_DIRS
   (ve_...) ...>manage.py loaddata ini_data
else 
 	(ve_...) ...>manage.py loaddata fixtures\ini_data.json


Clean database
-------------------
Run the following command:

    (ve_...) ...>manage.py flush
    
    and exec in admin db

	  >delete from django_content_type;

	  >delete from auth_permission;

