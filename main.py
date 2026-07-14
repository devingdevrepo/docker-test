from fastapi import FastAPI, Request
from pydantic import BaseModel

app = FastAPI()

class User(BaseModel):
    name: str
    age: int
    email: str
@app.post("/users")
def create_new_user(user:User):
    return{
        "name": user.name,
        "age": user.age,
        "email": user.email 
    }


