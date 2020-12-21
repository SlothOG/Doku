![Image of Yaktocat](https://i.redd.it/glwsbr1cujaz.png)




**Prerequisites**


* Betriebssystem*
* SSH starten/enable
* selinux disablen (vi /etc/selinux/config) **SELINUX=disabled**                                          
* Betriebssystem updaten

**Webserver**
* Webserver installieren                                          
* PHP installieren
* In httpd.conf prüfen, wo der Order für die Webinhalte ist                         Bsp.: **DocumentRoot "/var/www/html"**
* Webserver starten
* Webserver Dienst enablen


**Datenbank**
* MariaDB und MariaDB-Server installieren
* MariaDB starten
* Initiale Intallation durchführen
* Datenbank für Wordpress erstellen
* Datenbank User für Wordpress erstellen
* Datenbankuserrechte auf die Wordpressdatenbank geben
* Datenbankserverdienst enablen

**Wordpress**
* Wordpress downloaden
* Wordpress entpacken
* Wordpressordner in den richtigen Webserverordner legen
* Besitzer des Wordpressordners auf Webserveruser ändern
* Wordpress installation durchlaufen

**Nützliche Befehle**

* Datenbankverbindung herstellen :                      mysql -uroot -p
* Datein öffnen ohne diese zu ändern :                  less *Dateiname*
* Datein finden:                                        * 1. mlocate installieren
                                                        * 2. index updaten mit sudo updatedb oder updatedb
                                                        * 3. suche mit locate *Dateiname*
* Dienstatus überprüfen                                 systemctl status **Dienstname**
* Dienst starten                                        systemctl start  **Dienstname** 
* Dienst autostart                                      systemctl enable **Dienstname**
* PHP installieren                                      sudo dnf install php php-mysqlnd
* Webserver installieren                                sudo dnf install httpd
* MariaDB installieren                                  sudo dnf install mariadb mariadb-server
* Betriebssystem Pakete updaten                         sudo dnf update --refresh
* Besitzer eines Ordners ändern                         sudo chown -R *Benutzername*:*Benutzergruppe* *Ordnerpfad*
                                                      **(Bsp.: sudo chown -R apache:apache wordpress)**
* Neustart aus der Shell                                init 6
* Datein nach String durchsuchen                        grep -r 'String' 

**Datenbank**

* Erstkonfiguration MariaDB                             In der Shell:  sudo mysql_secure_installation 
* Datenbank erstellen                                   create Datebase *Datenbankname*;
* User u. Password erstellen                            CREATE USER '*Benutzername*'@*Hostname* IDENTIFIED BY 'Password';                            
* Datenbank wechseln                                    use *Datenbankname*;
* Rechte auf Datenbank vergeben                         GRANT ALL PRIVILEGES ON *.* TO '*Benutzername*'@*Hostname* IDENTIFIED BY 'Password';
* Datenbank anzeigen                                    show databases;
* Tabellen einer Datenbank anzeigen                     show tables;
* Spalten einer Tabelle anzeigen                        describe *Tabellename*
* Gesamten Inhalt einer Tabelle anzeigen                select * from *Tabellenname*
* Datenbankkonsole verlassen                            exit

**VI**

* Datei editieren                                         : Einfügen-Taste
* Datei                                                   : Esc :q
* Geschützte Datei verlassen                              : Esc :q!
* Schreiben und verlassen                                 : Esc :wq!
* Zeile löschen                                           : dd


**GIT**


* Git Repository auschecken                             git clone *Repository-Addresse*



*Optional*

* Remote Acces über SSH bereitstellen

* mlocate installieren 








                                                                  
                                                                  




