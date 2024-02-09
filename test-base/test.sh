mkdir -p data
curl fa-cont:4000 > /data/output2.txt
curl fa-cont:4000/static 
curl fa-cont:4000/dynamic/Roman >> /data/output2.txt
curl wv-cont:9200 >> /data/output2.txt
curl wv-cont:9200/fake-endpoint >> /data/output2.txt
curl wv-cont:9200/word/house >> /data/output2.txt
# sleep 1
# echo '' > output.txt
# echo 'output.txt content: '
# cat output.txt