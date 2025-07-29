# 🚀 Auto Docker Runner for Static Sites

A smart automation tool that builds and runs your static website inside Docker with a single script. Designed for developers and students working on HTML, React, or Flask projects — this script eliminates repetitive Docker commands and instantly hosts your project locally via Nginx.

---

## 📁 Project Structure

```
your-project-folder/
├── index.html          # Your project file
├── Dockerfile          # Lightweight Nginx-based setup
└── run.sh              # ⚙️ The automation script
```

---

## 🎯 Features

- 🧠 Auto-detects project name from the folder (and converts to lowercase)
- 🛠️ Builds Docker image and runs container on your chosen port
- ♻️ Removes existing containers to prevent conflicts
- 🌐 Automatically opens the site in your browser
- 💥 Stops on error and shows the exact line that failed

---

## 🛠️ Prerequisites

- Docker installed and running  
- Git Bash, WSL (Ubuntu), or any Linux/macOS terminal

---

## ⚙️ Usage

### 1. 📦 Prepare your project

- Create a folder with your static files (`index.html`, CSS, JS, etc.)
- Add the provided `Dockerfile` and `run.sh` script

### 2. 📝 Make `run.sh` executable

```bash
chmod +x run.sh
```

### 3. 🚀 Run the script

```bash
./run.sh
```

- Enter the port number when prompted (default: `8080`)
- Your site will open automatically in the browser

---

## 🐳 Dockerfile Example (Nginx)

```Dockerfile
FROM nginx:alpine
RUN rm -rf /usr/share/nginx/html/*
COPY . /usr/share/nginx/html
EXPOSE 80
```

---

## 📌 Example Output

```bash
🔧 Building Docker image for mysite...
♻️ Removing existing container...
🚀 Running Docker container...
✅ Site is live at http://localhost:8080
```

If an error occurs:
```bash
❌ ERROR: Something went wrong at line 23. Exiting.
```

---

## 💡 Use Cases

- Hosting local HTML/CSS/JS projects in a clean Docker container
- Submitting frontend projects with Docker-ready demos
- Building React or Flask apps with containerized workflows
- Learning DevOps and Docker by automating the local deploy process

---

## 👨‍💻 Author

**Sanjay M**  
🔗 [LinkedIn](https://www.linkedin.com/in/sanjay-m-31658b288/)  
💻 [GitHub](https://github.com/Sanjay-M1512)

---

---

## 📌 Want to Contribute?

Feel free to fork, tweak, and improve! You can extend this to:
- Detect frameworks like React or Flask
- Push images to DockerHub
- Deploy to cloud platforms like Railway, Render, or AWS
