FROM python:3.9-slim

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

# Install Google Chrome
RUN wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
RUN apt-get update && apt-get install -y google-chrome-stable

# Install ChromeDriver
RUN CHROMEDRIVER_VERSION=$(curl -sS chromedriver.storage.googleapis.com/LATEST_RELEASE) && \
    wget -N https://chromedriver.storage.googleapis.com/${CHROMEDRIVER_VERSION}/chromedriver_linux64.zip -P ~ && \
    unzip ~/chromedriver_linux64.zip -d ~ && \
    rm ~/chromedriver_linux64.zip && \
    mv -f ~/chromedriver /usr/local/bin/chromedriver && \
    chmod +x /usr/local/bin/chromedriver

# Install Python packages
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy application code
COPY . .

# Set environment variables
ENV GOOGLE_CHROME_SHIM=/usr/bin/google-chrome-stable
ENV CHROME_BIN=/usr/bin/google-chrome-stable

# Run the application
CMD ["python", "app.py"]
