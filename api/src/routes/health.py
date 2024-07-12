from fastapi import APIRouter, responses

router= APIRouter()

@router.get(
    "/status",
    description="Check APIs health"
)
async def get_health_status():
    return {"alive": True}