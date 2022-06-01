clear
cd
printf "Updating Termux system files... "
pkg update 2>/dev/null
pkg upgrade -y 2>/dev/null
echo "Done!"
printf "Installing required packages... "
pkg install getconf 2>/dev/null
pkg install wget 2>/dev/null
echo "Done!"
printf "Downloading Termux Miner 2.7..."
wget https://github.com/outradevteam/termuxminer/releases/download/2.7/termux-miner_v2.7.zip 2>/dev/null
echo "Done!"
printf "Uncompressing files..."
unzip termux-miner_v2.7.zip 2>/dev/null
echo "Done!"
printf "Moving files to home directory..."
mv ~/termux-miner_v2.7/* ~/
echo "Done!"
echo "Adjusting settings... "
read -s -p "Please provide your Outracoin receiving address: " x
echo "Adjusting receiving address to $x... "
sed -i "s/WALLET=.*/WALLET=$x/g" mine_outra.sh  2>/dev/null
echo "Done!"
echo ""
echo "Congratulations! Installation finished."
echo ""
echo "Your Outracoins will me mined to:"
echo "$x"
echo "(If the above address is incorrect, please install again.)"
echo ""
echo "To star mining type:"
echo "./mine_outra.sh"
echo ""