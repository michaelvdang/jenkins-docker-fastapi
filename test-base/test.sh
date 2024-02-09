curl fa-cont:4000 > output.txt
curl fa-cont:4000/static 
curl fa-cont:4000/dynamic/Roman >> output.txt
curl wv-cont:9200 >> output.txt
curl wv-cont:9200/fake-endpoint >> output.txt
curl wv-cont:9200/word/house >> output.txt
# sleep 1
# echo '' > output.txt
# echo 'output.txt content: '
# cat output.txt