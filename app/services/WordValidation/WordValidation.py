from fastapi import FastAPI, Response
import sqlite3
app = FastAPI()

@app.get('/')
def test():
    return {'message': 'WordValidation.py'}

@app.get('/fake-endpoint')
def func():
    return {'message': 'Reached fake-endpoint'}

@app.get("/word/{word}")
def isValid(word: str):
    return {'message': 'dynamic wv endpoint',
            'parameter': word}
