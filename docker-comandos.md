# 🐳 Comandos Básicos de Docker

## 🔸 Containers
```bash
docker ps                          # Lista containers em execução
docker ps -a                       # Lista todos os containers
docker start <container>           # Inicia um container parado
docker stop <container>            # Para um container
docker restart <container>         # Reinicia um container
docker rm <container>              # Remove container
docker logs <container>            # Visualiza logs do container
```

## 🔸 Imagens
```bash
docker images                      # Lista imagens locais
docker pull <imagem>               # Baixa imagem do Docker Hub
docker rmi <imagem>                # Remove imagem
```

## 🔸 Execução
```bash
docker run -it ubuntu bash         # Executa container interativo Ubuntu
docker exec -it <container> bash   # Entra no terminal do container
```

## 🔸 Volume e Cópia
```bash
docker cp <arquivo> <container>:/destino  # Copia para o container
docker cp <container>:/caminho <destino>   # Copia do container para o host
```

## 🔸 Rede e Informações
```bash
docker network ls                   # Lista redes Docker
docker inspect <container>          # Detalhes do container
docker stats                         # Métricas em tempo real
```

## 🔸 Limpeza
```bash
docker system prune                 # Remove containers, redes e imagens não utilizados
docker system df                    # Mostra uso de disco no Docker
```