from flask_on_k8s import app

@app.route('/')   #decorator 
def index():
    return 'Hello, k8s!!'