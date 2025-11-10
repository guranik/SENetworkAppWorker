Write-Host "=== Установка SENetworkAppWorker ==="

# Создаём и активируем виртуальное окружение
python -m venv venv
venv\Scripts\activate

# Устанавливаем зависимости
pip install --upgrade pip
pip install -r requirements.txt

# Загружаем модель Whisper small
New-Item -ItemType Directory -Force -Path whisper_models,segments | Out-Null
$whisperUrl = "https://openaipublic.azureedge.net/main/whisper/models/9ecf779972d90ba49c06d968637d720dd632c55bbf19d441fb42bf17a411e794/small.pt"
Invoke-WebRequest -Uri $whisperUrl -OutFile "whisper_models\small.pt"

Write-Host "Установка завершена!"
Write-Host "Для запуска: venv\Scripts\activate && python transcribe_audio.py"
