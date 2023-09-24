from python:3.10

workdir /workspace

copy . /workspace

run pip install --no-cache-dir --upgrade -r requirements.txt

expose 8080

cmd ["python3.10", "/workspace/src/app.py", "--log-level=WARN"]
                

