import os
from dotenv import load_dotenv

load_dotenv()

VOYAGE_EMBEDDING_API_URL = "https://api.voyageai.com/v1/multimodalembeddings"

VOYAGE_API_SECRET = os.getenv("VOYAGE_AI_API_SECRET")


