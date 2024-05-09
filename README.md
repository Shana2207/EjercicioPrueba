# README - Proyecto de Pruebas con Java, Cucumber y Maven

Este proyecto utiliza Java 11, Cucumber, Gherkin, Maven y está configurado para ser ejecutado en IntelliJ IDEA.

## Instalación de Herramientas

1. Abrir IntelliJ IDEA y cargar el proyecto.
2. Tener instalado el plugin de Cucumber para IntelliJ IDEA. Si no lo tienes instalado, ve a `File` > `Settings` > `Plugins` y busca "Cucumber for Java". Instálalo y reinicia IntelliJ IDEA si es necesario.

## Ejecución de las Pruebas

1. Para ejecutar las pruebas desde IntelliJ IDEA, haz clic derecho en la clase `Runner` y selecciona `Run 'Runner'`.

2. Para ejecutar las pruebas desde la línea de comandos utilizando Maven, utiliza el siguiente comando:

mvn test -Dcucumber.options="--tags @registroUsuario"
