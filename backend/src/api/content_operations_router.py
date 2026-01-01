from typing import Annotated

from fastapi import APIRouter, UploadFile, File, Body

from src.services.content_services import generate_image_embeddings, generate_text_embeddings

content_router = APIRouter(prefix="/content")


@content_router.post("/embeddings/image")
async def get_embeddings(image: Annotated[UploadFile, File()]):
    return await generate_image_embeddings(image)


@content_router.post("/embeddings/text")
async def get_text_embeddings(text: Annotated[str, Body(embed=True)]):
    return generate_text_embeddings(text)
