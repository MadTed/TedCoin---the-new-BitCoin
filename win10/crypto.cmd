@ECHO OFF
ECHO .
ECHO CryptoCoins-Programme werden gestartet, bitte ein wenig Geduld ;)
ECHO .

ECHO Start Bitcoin Core
Y:
cd Y:\Bitcoin\bin\
START "BitCoin Core" "Y:\Bitcoin\bin\bitcoin-qt.exe"
ECHO .
perl -e "sleep 166;"

ECHO Start Zcash
J:
cd J:\zcash4win
START "Zcash4win" "J:\zcash4win\zcash4win.exe"
ECHO .
perl -e "sleep 166;"

ECHO Start LiteCoin
cd J:\Litecoin
START "LiteCoin" "J:\Litecoin\litecoin-qt.exe"
ECHO .
perl -e "sleep 166;"

ECHO Start DogeCoin
cd J:\Dogecoin
START "DogeCoin" "J:\Dogecoin\dogecoin-qt.exe"
ECHO .
perl -e "sleep 166;"

ECHO Start Einsteinium
cd J:\Einsteinium
START "Einsteinium" "J:\Einsteinium\EinsteiniumExcalibur_x64.exe"
ECHO .
perl -e "sleep 166;"

ECHO Start Parity
C:
cd C:\Users\MadTed
START "Parity" "C:\Users\MadTed\parity.cmd"
ECHO .

ECHO .
ECHO CryptoCoins laufen ...
ECHO .
PAUSE