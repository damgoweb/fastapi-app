FROM python:3.12-slim

# 作業ディレクトリ
WORKDIR /app

# 依存関係だけ先にコピー（キャッシュ効かせる）
COPY requirements.txt .

# pip install
RUN pip install --no-cache-dir -r requirements.txt

# アプリ本体
COPY main.py .

# FastAPI 起動
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
