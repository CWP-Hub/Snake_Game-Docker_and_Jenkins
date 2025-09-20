# Snake Web Game with Docker & Jenkins

This project is a **web-based Snake game** served via **Nginx** and containerized using **Docker**. A **Jenkins pipeline** automates building and deploying the Docker container. You can access the game from any browser using your server’s public IP.

---

## Project Overview

The project allows you to:

- Play a browser-based Snake game.
- Run the game using **Docker**, without installing Java or other dependencies.
- Automate CI/CD using **Jenkins** to build and deploy Docker containers.

---

## Project Structure

```text
Snake-Web-Game/
│
├── Dockerfile          # Builds Docker image with Nginx serving snakegame.html
├── snakegame.html      # The HTML + JavaScript Snake game
└── Jenkinsfile         # Jenkins pipeline to build and run Docker container
