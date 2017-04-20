#/bin/bash
PRIV=`whoami`
if [ $PRIV != "root" ]; then
   echo "You need root privileges to run this crap."
   echo "Run with: sudo ./uninstall.sh"
   exit
fi
rm -fv /usr/local/bin/bournal && FUTZ="1"
rm -fv /usr/local/bin/bournal-convert && FUTZ="1"
rm -rfv /usr/local/share/man/man1/bournal.1.gz && FLARP="1"
rmdir /usr/local/share/man/man1/ 1>/dev/null 2>&1
rm -fv /usr/share/icons/hicolor/*/bournal.* && FLOOP="1"
rmdir /usr/share/icons/hicolor/* 1>/dev/null 2>&1
if [ "$FUTZ" = "1" -a "$FLARP" = "1" -a "$FLOOP" = "1" ]; then
   echo "Uninstallation successful. Friiiiiiiiiiig..."
else
   echo "Uh. Something went terribly wrong. Yaaaaaaaaaay."
fi
