# SqlQueries-USflights

MySQL Queries
Instal·lació:
Tenir MySQL Workbench instal·lat Link o el Xampp
Descarregar el Zip amb els fitxer de l’exercici

Exercici:
Iniciar una connexió amb l’usuari root i el password de mysql

Un cop dins crear les taules necessàries amb l’script createUSFlightsSchema que hi ha al Zip.
Importa les dades. Per això, s’aconsella utilitzar el table import wizard del workbench:








Tingues en compte:
En quin ordre s’hauran d’importar les dades?
Durant la importació de les dades de la taula flights, els camps de l’arxiu csv d’on s’importen estan ben correlacionats amb els camps de la taula? Per què creus que és això?

Si tot ha an
at correctament ja pots començar a treballar en les consultes que t’ha demanat l’empresa. Recorda que a la web d’on s’han extret les dades hi ha l’explicació de cada camp de la taula de vols. Et pot ser útil donar-li un cop d’ull per relacionar el que et demana l’empresa amb les dades de les que disposes.

Vols
Aeroports i carriers and planes.

Inclou totes les consultes en un arxiu .sql i afegeix-les al teu repositori de github.

Les consultes són les següents:

Quantitat de registres de la taula de vols:

Resultat: 


Retard promig de sortida i arribada segons l’aeroport origen.

    


Retard promig d’arribada dels vols, per mesos, anys i segons l’aeroport origen. A més, volen que els resultat es mostrin de la següent forma (fixa’t en l’ordre de les files):
LAX, 2000, 01, 10
LAX, 2000, 02, 30
LAX, 2000, 03, 2
…
LAX, 2000, 12 , 4
LAX, 2001, 01, 5
…
LAX, 2001, 12, 4
ONT, 2000, 01, 6
ONT, 2000, 02, 3
etc.

Resultat:


Retard promig d’arribada dels vols, per mesos, anys i segons l’aeroport origen (mateixa consulta que abans i amb el mateix ordre). Però a més, ara volen que en comptes del codi de l’aeroport es mostri el nom de la ciutat.
Resultat:



Les companyies amb més vols cancelats, per mesos i any. A més, han d’estar ordenades de forma que les companyies amb més cancel·lacions apareguin les primeres.

Resultat:


L’identificador dels 10 avions que més distància han recorregut fent vols.

    Resultat:

Companyies amb el seu retard promig només d’aquelles les quals els seus vols arriben al seu destí amb un retràs promig major de 10 minuts.

    Resultat:                                                                                                                                                   a        º
