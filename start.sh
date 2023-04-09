if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/jikkubot32/My-Dream.git /DQ-Join
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /My-Dream
fi
cd /My-Dream
pip3 install -U -r requirements.txt
echo "Starting My-Dream...."
python3 bot.py
