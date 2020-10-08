#!/data/data/com.termux/files/usr/bin/bash
echo "
















"
clear
echo "      _____     __  __ __________ _  _"
echo "     |_   _|   |  \/  |___ /_   _| || |"
echo "       | |_____| |\/| | |_ \ | | | || |_" 
echo "       | |_____| |  | |___) || | |__   _|"
echo "       |_|     |_|  |_|____/ |_|    |_| "
echo "
"
echo "       -{ Termux - Metaslpoit  } "
echo "       -{ Coded by V3rluchie   } "
echo ""
echo ""
echo "Using And Installing This Tools That Mean You Ready For"
echo ""
echo "[1] Use At Your Own Risk"
echo "[2] No Warranty"
echo "[3] If it violates the law with this tool the risk is borne by the user"
echo ""
echo "-------------------------------------------"
echo "Are You Sure Want To Install Metasploit ?"
echo "-------------------------------------------"
echo ""
echo "Press Enter if you Agree / Continue Install"
echo "Press CTRL + C if you Disagree / Cancel Install"
read ENTER

echo "####################################"
pkg install autoconf bison clang coreutils curl findutils git apr apr-util libffi libgmp libpcap postgresql readline libsqlite openssl libtool libxml2 libxslt ncurses pkg-config wget make ruby libgrpc ncurses-utils termux-tools -y
echo "####################################"
echo "Downloading & Extracting....."

cd $HOME
curl -LO https://github.com/rapid7/metasploit-framework/archive/6.0.9.tar.gz
tar -xf $HOME/6.0.9.tar.gz
mv $HOME/metasploit-framework-6.0.9 $HOME/metasploit-framework
cd $HOME/metasploit-framework
sed '/rbnacl/d' -i Gemfile.lock
sed '/rbnacl/d' -i metasploit-framework.gemspec
gem install bundler -v 1.17.3
bundle config build.nokogiri --use-system-libraries

gem install nokogiri -- --use-system-libraries
 
cd $HOME/metasploit-framework
bundle install -j5

$PREFIX/bin/find -type f -executable -exec termux-fix-shebang \{\} \;
rm ./modules/auxiliary/gather/http_pdf_authors.rb
ln -s $HOME/metasploit-framework/msfconsole /data/data/com.termux/files/usr/bin/


echo "Thanx  To  Yukinoshita"
echo ""
echo "For your support"
echo "And For Team "
echo " Blood Tears No Team Squad "
echo "

"
echo " contact me : verluchie[at]hackermail.com "
echo "

"
echo " NOW YOU CAN LAUNCH METASPLOIT BY JUST EXECUTE THE COMMAND :=> msfconsole"
