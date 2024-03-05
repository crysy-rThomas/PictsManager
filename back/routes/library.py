
from fastapi import APIRouter
from adapters.library_repository import LibraryRepository
from sqlalchemy.orm import Session
from core.services.library.library_service import LibraryService
from infrastructure.db import get_db


library_router = APIRouter()

# Db session
db: Session = next(get_db())
library_repository = LibraryRepository(db)
library_service = LibraryService(library_repository)

@library_router.get("/library")
async def get_all_libraries():
    return library_service.get_all_libraries()

@library_router.get("/library/{library_id}")
async def get_library_by_id(library_id: int):
    return library_service.get_library_by_id(library_id)

@library_router.post("/library")
async def create_library(title: str, author: str):
    return library_service.create_library(title, author)

@library_router.delete("/library/{library_id}")
async def delete_library(library_id: int):
    return library_service.delete_library(library_id)

# @library_router.get("/library/user/{id}")
# async def get_libraries_by_user(id: int):
#     return library_service.get_libraries_by_user(id)