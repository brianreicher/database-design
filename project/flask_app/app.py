from flask import Flask, request


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


@app.route("/form")
def get_form() -> str:
    return """
            <h2>HTML Forms</h2>
            <form action="/form" method="POST">
            <label for="first">First name:</label><br>
            <input type="text" id="first" name="first" value="John"><br>
            <label for="last">Last name:</label><br>
            <input type="text" id="last" name="last" value="Doe"><br><br>
            <input type="submit" value="Submit">
            </form> 
           """


@app.route("/form", methods=["POST"])
def post_form():
    first = request.form['first']
    last = request.form['last']
    return f'<h1> Hello, {first} {last} </h1>'


if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=4000)
