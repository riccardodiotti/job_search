# Install dependencies
RUN apt-get update && apt-get install -y \
    wget \
    gnupg \
    unzip \
    libx11-dev \
    libxss1 \
    libappindicator1 \
    libindicator7 \
    libasound2 \
    fonts-liberation \
    libnss3 \
    xdg-utils \
    libxrandr2 \
    libgtk-3-0 \
    libxdamage1 \
    libxcomposite1 \
    libxi6 \
    libxtst6 \
    libatk1.0-0 \
    libgconf-2-4 \
    libxkbcommon0 \
    libcups2 \
    xvfb
