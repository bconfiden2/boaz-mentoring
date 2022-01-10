for txt in $(ls | grep .txt); do
    echo txt
done

num=5

touch file"$num".txt
echo "\nmake new txt file!"
echo total number of txtfiles: `ls | grep .txt | wc -l`

rm file"$num".txt
echo -e "\nremove txt file!"
echo total number of txtfiles: `ls -al | grep .txt | wc -l`

echo

if [ -e target.py ]; then
    echo target.py exists
    python3 target.py
else
    echo no python file
fi

if [ ! -f your_ssh_key_path ]; then
    echo missing ssh key!
fi