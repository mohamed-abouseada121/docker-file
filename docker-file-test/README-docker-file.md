# Python App with Docker

This project demonstrates how to containerize a simple Python application using Docker.

---

## 🧱 Project Structure

```
.
├── app.py
├── requirements.txt
└── Dockerfile
```

- **app.py** → The main Python application file.  
- **requirements.txt** → Contains the Python dependencies.  
- **Dockerfile** → Defines how to build the Docker image.

---

## 🚀 How to Build and Run the Container

### 1️⃣ Build the Docker image
Run this command in the project root directory (where the Dockerfile is located):

```bash
docker build -t python-app .
```

### 2️⃣ Run the container

```bash
docker run -d -p 5000:5000 python-app
```

- `-d` runs the container in detached mode (in the background).
- `-p 5000:5000` maps your local port 5000 to the container's port 5000.

### 3️⃣ Access the app
Open your browser and go to:

```
http://localhost:5000
```

---

## ⚙️ Dockerfile Overview

```dockerfile
FROM python:3.11-slim
WORKDIR /app
COPY requirements.txt .
RUN pip3 install -r requirements.txt
COPY app.py .
CMD ["python3", "app.py"]
EXPOSE 5000
```

**Explanation:**
- Uses a lightweight Python 3.11 base image.
- Sets `/app` as the working directory.
- Installs dependencies listed in `requirements.txt`.
- Copies and runs the application.
- Exposes port 5000 for access.

---

## 🧩 Example requirements.txt

If you are using Flask, your `requirements.txt` might look like this:

```
Flask==3.0.2
```

---

## 🧰 Useful Commands

| Command | Description |
|----------|--------------|
| `docker ps` | List running containers |
| `docker images` | List available images |
| `docker stop <container_id>` | Stop a running container |
| `docker rm <container_id>` | Remove a container |
| `docker rmi <image_id>` | Remove an image |

---

## 📝 Notes

- Make sure Docker is installed and running before executing the commands.
- If you modify `requirements.txt`, rebuild the image to install new dependencies.

---

## 👨‍💻 Author
**Mohamed Ahmed Abouseada**
