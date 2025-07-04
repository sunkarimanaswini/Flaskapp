# Flask App Deployment on Azure Kubernetes Service (AKS)

This repository contains a **Flask web application** and automation scripts to **containerize and deploy it on Azure Kubernetes Service using Azure Pipelines**.

---

## Repository Structure

- `app.py` – Flask application entry point.
- `requirements.txt` – Python dependencies.
- `dockerfile` – Defines the container image for the Flask app.
- `aks-deployment` – Kubernetes manifests (`Deployment`, `Service`) for AKS.
- `azure-pipelines.yml` – CI/CD pipeline for automated build, push, and deploy to AKS.
- `static/`, `templates/` – Flask static assets and HTML templates.
- `submissions.db` – SQLite database used by the app (for testing).
- `README.md` – Project documentation (you are here).

---

**##Features**

* Flask application with SQLite backend.  
* Dockerization using a lightweight image.  
* Automated CI/CD pipeline using Azure Pipelines.
* Unit tests for app.py to ensure endpoints behave correctly.
* Test coverage metrics uploaded to SonarQube.
* Security hotspots and vulnerabilities scanning.
* Deployment to Azure Kubernetes Service with LoadBalancer service.  
* Clean structure for learning AKS deployment end-to-end.

---

## Build and Run Locally

1. **Clone the repository:**
   ```bash
   git clone <repo-url>
   cd <repo-folder>

