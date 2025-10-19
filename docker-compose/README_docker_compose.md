# 🐳 Docker Compose - Ubuntu Service

This project uses **Docker Compose** to run an Ubuntu container connected to two custom networks, with exposed ports and a mounted volume.

---

## 📂 Project Structure

```
.
├── docker-compose.yml
```

---

## ⚙️ docker-compose.yml Overview

```yaml
services:
  ubuntu:
    container_name: ubuntu
    image: ubuntu
    ports: 
      - "190:80"
      - "191:81"
    networks: 
      - net1
      - net2
    volumes: 
      - volume1:/usr/
      
networks: 
  net1:  
  net2:

volumes:
  volume1:
```

### 🧩 Explanation

| Section | Description |
|----------|--------------|
| **services** | Defines the container(s) to be created. |
| **container_name** | Sets the container’s name to `ubuntu`. |
| **image** | Specifies the base image (Ubuntu). |
| **ports** | Maps container ports to host ports: `190→80`, `191→81`. |
| **networks** | Connects the container to two user-defined networks (`net1` and `net2`). |
| **volumes** | Mounts a named volume `volume1` to `/usr/` inside the container. |
| **networks section** | Defines custom networks `net1` and `net2`. |
| **volumes section** | Declares the named volume `volume1`. |

---

## 🚀 How to Run

### 1️⃣ Start the services
```bash
docker compose up -d
```

### 2️⃣ Check running containers
```bash
docker ps
```

### 3️⃣ Access the container
```bash
docker exec -it ubuntu bash
```

---

## 🧰 Useful Commands

| Command | Description |
|----------|--------------|
| `docker compose up -d` | Start containers in detached mode |
| `docker compose down` | Stop and remove containers, networks, and volumes |
| `docker network ls` | List all Docker networks |
| `docker volume ls` | List all Docker volumes |
| `docker exec -it ubuntu bash` | Open a terminal inside the Ubuntu container |

---

## 📝 Notes

- The networks `net1` and `net2` are automatically created if they don't exist.
- The volume `volume1` will persist data even after the container is removed.
- You can modify the port mappings as needed for your environment.

---

## 👨‍💻 Author
**Mohamed Ahmed Abouseada**
