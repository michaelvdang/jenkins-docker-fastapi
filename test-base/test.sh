curl fa-cont
sleep 1
curl fa-cont/static 
sleep 1
curl fa-cont/dynamic/Roman
sleep 1
echo '' > output.txt
echo 'output.txt content: '
cat output.txt