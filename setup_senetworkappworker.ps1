if (-not (Get-Command ffmpeg -ErrorAction SilentlyContinue)) {
    winget install --id=Gyan.FFmpeg -e --source=winget
}

python -m venv venv
venv\Scripts\activate

pip install --upgrade pip
pip install -r requirements.txt

New-Item -ItemType Directory -Force -Path whisper_models,segments | Out-Null
$whisperUrl = "https://openaipublic.azureedge.net/main/whisper/models/9ecf779972d90ba49c06d968637d720dd632c55bbf19d441fb42bf17a411e794/small.pt"
Invoke-WebRequest -Uri $whisperUrl -OutFile "whisper_models\small.pt"
