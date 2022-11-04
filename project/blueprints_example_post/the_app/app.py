
# import the Flask framework
from flask import Flask

# import the blueprint objects from their respective locations
from manager_api.managers import managers_blueprint
from customer_api.customers import customers_blueprint


# create a flask object
app = Flask(__name__)

# register the blueprints we created with the current Flask app object.
app.register_blueprint(managers_blueprint, url_prefix='/mgr')
app.register_blueprint(customers_blueprint, url_prefix='/cust')


# --------------------------------------------------------------------
# Create a function named hello world that 
# returns a simple html string 
# the @app.route("/") connects the hello_word function to 
# the URL / 
@app.route("/")
def hello_world():
    return f'<h1>A Base Route not coming from a blueprint </h1>'

# If this file is being run directly, then run the application 
# via the app object. 
# debug = True will provide helpful debugging information and 
#   allow hot reloading of the source code as you make edits and 
#   save the files. 
if __name__ == '__main__': 
    app.run(debug = True, host = '0.0.0.0', port = 4000)