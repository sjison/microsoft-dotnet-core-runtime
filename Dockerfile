FROM mcr.microsoft.com/dotnet/core/runtime:3.1-buster-slim
# Install the latest version of the libgdiplus library to use System.Drawing in the application
RUN apt update
RUN apt install -y libgdiplus libc6 libc6-dev
RUN apt install -y fontconfig libharfbuzz0b libfreetype6

# (Optional step) Install the ttf-mscorefonts-installer package to use Microsoft TrueType core fonts in the application
RUN echo "deb http://deb.debian.org/debian stretch contrib" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get install -y ttf-mscorefonts-installer  