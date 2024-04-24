from bson import ObjectId
from pydantic import BaseModel


class GameSchema(BaseModel):
    _id: ObjectId
    title: str
    description: str
    objective: str
    current_setting: str
