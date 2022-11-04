from flask import Blueprint

# Create a new blueprint for managers
customers_blueprint = Blueprint('customers_blueprint', __name__)

# add a route to this blueprint
@customers_blueprint.route('/customers')
def get_alL_customers():
    return f'<h1>Getting all the customers.</h1>'