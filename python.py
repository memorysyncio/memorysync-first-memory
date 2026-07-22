import os

from memorysync import MemorySyncClient

with MemorySyncClient(
    api_key=os.environ["MEMORYSYNC_KEY"],
    base_url=os.getenv("MEMORYSYNC_BASE_URL", "https://api.memorysync.io"),
    project_id=os.environ["MEMORYSYNC_PROJECT_ID"],
    end_user_id="starter-user",
) as client:
    memory = client.add("The user prefers concise responses.", source="starter")
    result = client.query("How should I respond to this user?", k=5)
    print(memory)
    print(result)
