# computer-vision-lab-3

Computer Vision's lab 3

- Juan Luis Solorzano
- Diego Andrés Alonzo Medinilla 20172
- Arturo Argueta

## Montar el ambiente

```bash
docker build -t computer-vision-labs .
docker run --name computer-vision-labs -p 8888:8888 -v "$(pwd):/app" computer-vision-labs
docker start -i computer-vision-labs
```
