# OracleNoSql-install

A continuación se explicara como instalar esta base de datos en Ubuntu, cabe aclarar que solo es compatible con linux y solaris.

No existe un instalador con asistente gráfico para esta base de datos por lo tanto se tendrá que instalar con comandos, se adjunta los scripts (.sh) necesarios para esto.

La instalación de oracle noSQL requiere definir una topologia, par este ejemplo usaremos una topologia 3x3, es decir habrán 3 nodos y cada nodo tendrá 3 replicas internas. para lograr simular los 3 nodos en una sola maquina por favor editar el archivo hosts.



Ambiente:

JDK 1.8

KV 4.3.11

Ubuntu 16.04 LTS


Antes de empezar se debe cargar su para ejecutar todos los comandos del tutorial como sudo.
sudo su


1. Descargar el jar de KV store (kvstore.jar) link (http://www.oracle.com/technetwork/database/database-technologies/nosqldb/downloads/index.html) y ponerlo en esta ruta /opt/kv-4.3.11

2. Descargar JDK de Java y ponerlo en esta ruta /usr/lib/jvm/java-8-oracle. 

3. editar el environment con el editor de texto preferido: para este ejemplo use nano:

Abrir una terminal y ejecutar :
sudo nano /etc/environment
Poner esto después de un salto de linea:
JAVA_HOME="/usr/lib/jvm/java-8-oracle"
KVHOME=/opt/kv-4.3.11
KVROOT=/opt/kv-4.3.11/root
KVDATA=/home/diego/Documents/oracle/nosqldb/data

4. Editar archivo hosts, ejecutar en un terminal:

sudo nano /etc/hosts
poner los siguientes hosts:
127.0.0.1       kvhost01
127.0.0.1       kvhost02
127.0.0.1       kvhost03
5. Ejecutar los scripts adjuntos en el siguiente orden:

5.1 makebootconfig.sh
Debe ver lo siguiente:
Done bootstrapping storage node 1
Done bootstrapping storage node 2
Done bootstrapping storage node 3
5.2 startStorageNodeAgent.sh
5.3 adminStorageNodes.sh
5.3.1 Este script abrirá una consola kv> donde deberá copiar todo el contenido del archivo 3x3.kvs y pegarlo después de kv>
5.4 Correr testNodes.sh para validar que quedo correctamente instalado.
Debe ver un resultado los nodos y las replicas en estado RUNNING


Con esto ya queda instalada la base de datos y podrá empezar a insertar y consultar datos.
