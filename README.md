# YouTube Downloader Pro

## Windows 11 installation (PowerShell, command by command)

Install Git, Python 3.11+ and FFmpeg, with Deno recommended for YouTube's JavaScript challenges. From PowerShell, execute **each command separately**:

```powershell
winget install --id Gyan.FFmpeg.Essentials --exact
```
```powershell
winget install --id DenoLand.Deno --exact
```

Close and reopen PowerShell to refresh PATH.

```powershell
git clone https://github.com/Tyler-Keesee/Youtube-download-script.git
```
```powershell
Set-Location .\Youtube-download-script
```
```powershell
python -m venv .venv
```
```powershell
.\.venv\Scripts\python.exe -m pip install --upgrade pip
```
```powershell
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
```
```powershell
.\.venv\Scripts\python.exe main.py
```

`setup.bat` is an optional shortcut for creating/reusing the same `.venv`. To build an EXE after successful setup, run `.\build.bat`. It will **not** kill running applications or delete existing spec files, but PyInstaller's `--noconfirm` can replace the same-named build output.

**Important:** The original `requirements.txt` contained embedded NUL characters in the `requests` dependency, causing pip parsing errors. The corrected file is plain UTF-8. Website 403 and age-verification failures are upstream/access issues, not venv errors. An account authorized to view restricted content may be required; see yt-dlp's official FAQ. Never share cookies, passwords, or private keys.

**Verification:** Dependency install and syntax checks are automated; an actual GUI window and live download must still be tested on Windows.

---



A professional YouTube video downloader with a modern GUI interface.

## Download Location

Videos are saved in one of these locations (in order of preference):
1. User-selected folder (chosen on first run)
2. Default location: `~/Downloads/YouTube Downloads`

To change download location:
1. Go to File > Change Download Location
2. Select your preferred folder
3. All new downloads will go to the chosen location

## Features

- Clean and modern dark theme interface
- Progress bar with download speed
- Download status notifications
- High quality video downloads
- Automatic file organization

## Requirements

- Python 3.9+
- FFmpeg (for video processing)

## Installation

1. Clone or download this repository
2. Install requirements:
```bash
pip install -r requirements.txt
```

3. Run the application:
```bash
python main.py
```

## Usage

1. Launch the application
2. Paste a YouTube URL into the input box
3. Click Download
4. Your video will be saved in the 'downloads' folder

## Building Executable

To create a standalone executable:
```bash
.\build.bat
```
The executable will be created in `dist/YouTube Downloader Pro/`

## Supported URLs

- Regular YouTube videos
- YouTube playlists
- YouTube Music

## Tips

- Videos are downloaded in the highest available quality
- Files are automatically named based on video title
- Progress bar shows download speed and completion percentage

## Author

Created by Ty

## License

MIT License
## HTTPS download safety

The downloader no longer disables certificate verification or suppresses yt-dlp download failures. If the remote site rejects requests or requires authentication, review the displayed error and update dependencies instead of bypassing TLS. Never share cookies, tokens or credentials in bug reports.
