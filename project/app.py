from flask import Flask


app  = Flask(__name__)


@app.route("/hello3200")
def hello_world():
    return "<h1> Hello World </h1>"


@app.route("/students/<idNum>")
def get_student(idNum):
    return f'<h1> You asked for student with id: {idNum} </h1>'


@app.route("/")
def default_route():
    return "<h1> Default Page </h1>"

if __name__ == '__main__':
    app.run(debug=True, port=4000)
