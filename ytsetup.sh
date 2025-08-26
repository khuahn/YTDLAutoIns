#!/data/data/com.termux/files/usr/bin/bash
# =======================================
# Jac's YouTube Downloader Setup Script 🚀
# =======================================

# Update & install dependencies
pkg update -y && pkg upgrade -y
pkg install -y python ffmpeg
pip install --upgrade pip
pip install yt-dlp

# Add aliases if not already present
if ! grep -q "alias ytv=" ~/.bashrc; then
    cat << 'EOF' >> ~/.bashrc

# YT Video Downloader
alias ytv='yt-dlp -o "~/storage/shared/Download/%(title)s.%(ext)s"'

# YT Audio Downloader
alias yta='yt-dlp -x --audio-format mp3 -o "~/storage/shared/Download/%(title)s.%(ext)s"'

EOF
fi

# Reload bashrc
source ~/.bashrc

echo "✅ Setup complete! Use 'ytv <url>' for video, 'yta <url>' for audio."
