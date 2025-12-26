from fastapi import APIRouter

from src.services.content_services import generate_embeddings

content_router = APIRouter(prefix="/content")


@content_router.get("/embeddings")
def get_embeddings():
    return generate_embeddings()

