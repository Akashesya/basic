
#!usr/bin/bash
echo "what is your name"
read name

echo "what is your tag"
read age

if [ $age -ge 18 ]; then
	echo "hi $name, you can vote."
else
	echo "hi $name,you can not vote."
fi
