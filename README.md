# hello-node 🐳
Elias Milan Lecona Condori
## Descripción de la aplicación
`ejercicio_cloud_N1` es una aplicación basica construida con Node.js. Al iniciarse, levanta un servidor
HTTP que escucha en el puerto `3000` y responde a cualquier petición con el
mensaje:¡Hola desde Docker y Node.js!

```

El objetivo es practicar la creación de una imagen Docker
mediante un `Dockerfile`, construir dicha imagen y ejecutar la
aplicación dentro de un contenedor, mapeando puertos entre el host y el
contenedor.

## Estructura del_proyecto
```
ejercicio_cloud_N1/
├── Dockerfile
├── index.js
├── package.json
├── package-lock.json
└── README.md
```

## Comando utilizado para construir la imagen
```bash
docker build -t hello-node:1.0 .
```

## Comando utilizado para ejecutar el contenedor
```bash
docker run -d \
  --name ejercicio_cloud_N1 \
  -p 8080:3000 \
  hello-node:1.0
```

La aplicación queda disponible en el navegador en:
```
http://localhost:8080
```

## Otros comandos útiles

Listar imágenes creadas:
```bash
docker images
```
Listar contenedores en ejecución:
```bash
docker ps
```

## Capturas de pantalla

### `docker images`
![docker images](docs/docker-images.png)
### `docker ps`
![docker ps](docs/docker-ps.png)
### Aplicación funcionando en el navegador
![app funcionando](docs/app-navegador.png)

