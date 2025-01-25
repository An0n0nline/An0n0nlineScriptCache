speaktoday='sh ~/Scripts/speaktoday.sh'
today='sh ~/Scripts/today.sh'
today2='sh ~/Scripts/today2.sh'
today3='sh ~/Scripts/today3.sh'
┌[DESKTOP-FIKGGVV]─[09:33-25/01]─[/home/user/Scripts]
└╼user$cat today
cat: today: No such file or directory
┌[DESKTOP-FIKGGVV]─[09:33-25/01]─[/home/user/Scripts]
└╼user$cat today.sh
clear;
echo "_______________________________________________________________________________";
date;
echo;
ncal -C;
echo "_______________________________________________________________________________";
#weather-util 60613;
rm weathercache;
elinks https://google.com/search?q=Chicago+weather >> weathercache;
sed -n 7,11p weathercache;
echo "_______________________________________________________________________________";
w3m lite.cnn.com | head -20;
echo "_______________________________________________________________________________";
