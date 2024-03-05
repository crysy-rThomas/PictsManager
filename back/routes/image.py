# routes/images.py
from fastapi import APIRouter, HTTPException
from sqlalchemy.orm import Session
from infrastructure.db import get_db
from typing import List
from core.services.image_service import ImageService
from adapters.image.image_repository import ImageRepository

image_router = APIRouter()

# Use a session from the session factory
db: Session = next(get_db())
image_repository = ImageRepository(db)

image_service = ImageService(image_repository)

@image_router.post("/image/")
async def create_image(image: str, name: str, size: int):
    return image_service.create_image(image, name, size)

@image_router.delete("/image/{image_id}")
async def delete_image(image_id: int):
    image_service.delete_image(image_id)
    

@image_router.get("/image/{image_id}")
async def read_image(image_id: int):
    image = image_service.get_image_by_id(image_id)
    if image is None:
        raise HTTPException(status_code=404, detail="Image not found")
    return image.__dict__

@image_router.get("/images/")
async def read_images():
    return image_service.get_all_images()