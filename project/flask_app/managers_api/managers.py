from flask import Blueprint


managers_blueprint = Blueprint('managers_blueprint', __name__)


@managers_blueprint.route('/managers')
def get_all_managers():
    return "<h1>Getting All Managers</h1>"