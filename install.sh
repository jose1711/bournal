#/bin/bash
PRIV=`whoami`
if [ $PRIV != "root" ]; then
   echo "You need root privileges to run this crap."
   echo "Run with: sudo ./install.sh"
   exit
fi
cp -fv ./bournal /usr/local/bin/ && FUTZ="1"
cp -fv ./bournal-convert /usr/local/bin/ && FUTZ="1"
mkdir -p /usr/local/share/man/man1/ 2>/dev/null
cp -fvr ./bournal.1.gz /usr/local/share/man/man1/ && FLARP="1"
mkdir -p /usr/local/share/icons/hicolor/ 2>/dev/null
cp -r ./icons/* /usr/local/share/icons/hicolor/ && FLOOP="1"
cp -fv ./bournal.desktop /usr/local/share/applications/ && FLUP="1"
if [ "$FUTZ" = "1" -a "$FLARP" = "1" -a "$FLOOP" = "1" -a "$FLUP" = "1" ]; then
   echo "Installation successful. Yaaaaaaaay."
else
   echo "Uh. Something went terribly wrong. Friiiiiiiiiig..."
fi
