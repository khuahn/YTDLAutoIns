#!/data/data/com.termux/files/usr/bin/bash
# =======================================
# Jac's YouTube Downloader Setup Script 🚀
# =======================================

echo "🔧 Starting setup..."

# Ensure storage access
echo "📂 Checking storage permissions..."
termux-setup-storage

# Update & install dependencies
echo "📦 Updating packages and installing dependencies..."
pkg update -y && pkg upgrade -y
pkg install -y python ffmpeg
pip install --upgrade pip
pip install yt-dlp

# Add aliases if not already present
if ! grep -q "alias ytv=" ~/.bashrc; then
    echo "🔗 Adding aliases to ~/.bashrc..."
    cat << 'EOF' >> ~/.bashrc

# YT Video Downloader
alias ytv='yt-dlp -f "bestvideo[height<=720]+bestaudio/best[height<=720]" --recode-video mp4 -o "~/storage/shared/Download/%(title)s.%(ext)s"'

# YT Audio Downloader
alias yta='yt-dlp -x --audio-format mp3 -o "~/storage/shared/Download/%(title)s.%(ext)s"'

# Help command
alias ythelp='echo -e "📽️ ytv <url> → Download 720p video\n🎵 yta <url> → Download audio as MP3"'

EOF
else
    echo "✅ Aliases already exist. Skipping..."
fi

# Reload shell
echo "🔄 Reloading shell to apply changes..."
exec bash

# Final message
echo -e "\n✅ Setup complete!"
echo -e "Use:\n  📽️ ytv <url> → Download 720p video\n  🎵 yta <url> → Download audio as MP3\n  🆘 ythelp → Show usage tips"
