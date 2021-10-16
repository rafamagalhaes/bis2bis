from flask import Flask, jsonify
from datetime import datetime


def create_app(test_config=None):
    app = Flask(__name__, instance_relative_config=True)
   

    @app.route('/')
    def hello():
        date = datetime.today().strftime('%Y-%m-%d-%H:%M:%S')
        return jsonify(
                Objetivo='Desafio Tecnico da Bis2Bis',
                feito_por='Rafael Magalhaes',
                data=date
        )

    return app
