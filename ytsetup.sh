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

# YouTube Video Downloader (720p MP4)
alias ytv='yt-dlp -f "bestvideo[height<=720][ext=mp4]+bestaudio[ext=m4a]/best[height<=720][ext=mp4]" \
  --merge-output-format mp4 -o "~/Downloads/%(title)s.%(ext)s"'

# YouTube Audio Downloader (MP3)
alias yta='yt-dlp -f bestaudio --extract-audio --audio-format mp3 \
  -o "~/Downloads/%(title)s.%(ext)s"'

EOF
fi

# Reload bashrc
source ~/.bashrc

echo "✅ Setup complete! Use 'ytv <url>' for video, 'yta <url>' for audio."
