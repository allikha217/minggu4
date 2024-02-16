set -eu

export PYTHONUNBUFFERED=true

VIRTUALRNV=.data/venv

if [ ! -d $VIRTUALRNV ]; then
    python3 -m venv $VIRTUALRNV
fi

if [ ! -f $VIRTUALRNV/bin/pip ] then
curl --silent --show-eror --retry 5 https://bootstrap.pypa.io/get-pip.py | $VIRTUALRNV
fi 

$VIRTUALRNV/bin/pip install -r requirements.txt

$VIRTUALRNV/bin/python3 app.py
footer