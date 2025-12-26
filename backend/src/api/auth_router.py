from fastapi import APIRouter

auth_router = APIRouter(prefix="/auth", tags=["Authentication"])

@auth_router.get("/sign-up")
def sign_up_user():
    return