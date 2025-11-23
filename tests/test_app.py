from app import app

def test_home():
    test_client = app.test_client()
    response = test_client.get("/")
    assert response.status_code == 200
    assert response.data == b"Hello, World!"
