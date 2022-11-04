from flask import Blueprint


customers_blueprint = Blueprint('customers_blueprint', __name__)


@customers_blueprint.route('/customers')
def get_alL_customers():
    return "<h1>Getting All Customers</h1>"