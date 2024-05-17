
# Pruebas de Testeo en Aplicaciones React con Selenium

Este repositorio contiene un ejemplo de cómo realizar pruebas de testeo automatizadas en una aplicación React utilizando Selenium WebDriver. Las pruebas se realizan en un entorno EC2 de AWS, con el puerto 3000 abierto para acceder a la aplicación, y un entorno Cloud9 para configurar y ejecutar las pruebas.

## Configuración del Entorno EC2

Para configurar el entorno EC2, sigue estos pasos:

1. Crea una instancia EC2 en AWS.
2. Abre el puerto 3000 en el grupo de seguridad asociado a la instancia.
3. Conecta a la instancia utilizando SSH.

## Configuración del Entorno Cloud9

Para configurar el entorno Cloud9, sigue estos pasos:

1. Crea un entorno Cloud9 en la misma región que la instancia EC2.
2. Conéctate al entorno Cloud9 y configura las credenciales necesarias para acceder a la instancia EC2.

## Instalación y Configuración de Selenium

### Opción 1: Instalación Manual

Una vez configurados los entornos EC2 y Cloud9, sigue estos pasos para instalar y configurar Selenium manualmente:

```bash
sudo yum install python3 python3-pip npm
wget https://dl.google.com/linux/direct/google-chrome-stable_current_x86_64.rpm
sudo yum localinstall google-chrome-stable_current_x86_64.rpm
google-chrome --version
sudo yum install python3-pip
pip3 install selenium
wget https://chromedriver.storage.googleapis.com/94.0.4606.61/chromedriver_linux64.zip
unzip chromedriver_linux64.zip
sudo mv chromedriver /usr/local/bin/
pip3 install install webdriver-manager
```

### Opción 2: Ejecutar el Script de Configuración

Para automatizar la instalación, ejecuta el script `setup.sh`. Este script instalará todas las dependencias necesarias y configurará el entorno automáticamente:

```bash
chmod +x setup.sh
./setup.sh
```

## Ejecución de las Pruebas

Antes de ejecutar las pruebas, asegúrate de que la aplicación React esté en ejecución en la instancia EC2. Puedes iniciar el servidor de desarrollo de React utilizando el siguiente comando:

```bash
npm install
```

```bash
npm start
```

Y en caso de fallar al arrancar la apliacion:
```bash
npm install react-scripts --save
```
Una vez iniciado el servidor de desarrollo, puedes ejecutar las pruebas utilizando el siguiente comando en el entorno Cloud9:

```bash
python3 testing.py
```

Este comando ejecutará las pruebas automatizadas y mostrará los resultados en la consola.

## Contribuciones y Problemas

Si encuentras algún problema con las pruebas o deseas contribuir con mejoras, ¡siéntete libre de abrir un issue o enviar un pull request!

¡Gracias por tu interés en las pruebas de testeo en aplicaciones React con Selenium!
