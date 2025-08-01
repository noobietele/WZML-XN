FROM mysterysd/wzmlx:v3

LABEL maintainer="Beast Bots <github.com/BeastBots/MirrorBeast>"

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app

RUN uv venv --system-site-packages

COPY requirements.txt .
RUN uv pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]

