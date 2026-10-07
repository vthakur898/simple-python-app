# Simple Python App

A small Flask application designed for DevOps practice.

## Project Structure

```text
simple-python-app/
├── Dockerfile
├── app.py
├── appspec.yml
├── buildspec.yml
├── requirements.txt
├── start_container.sh
├── stop_container.sh
└── README.md
```

## Run locally

```bash
python -m venv venv
```

Windows PowerShell:

```powershell
.env\Scripts\Activate.ps1
pip install -r requirements.txt
python app.py
```

Open:

http://localhost:5000

Health check:

http://localhost:5000/health

## Run with Docker

```bash
docker build -t simple-python-app .
docker run -d --name simple-python-app -p 5000:5000 simple-python-app
```

## Stop Docker container

```bash
docker stop simple-python-app
docker rm simple-python-app
```

## DevOps files

- `buildspec.yml` - AWS CodeBuild configuration
- `appspec.yml` - AWS CodeDeploy configuration
- `start_container.sh` - starts the Docker container
- `stop_container.sh` - stops the Docker container
