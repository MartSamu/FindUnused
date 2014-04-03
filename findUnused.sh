fileList=$(find . | grep -E ".+(txt|json|xml)")
imageFilelist=$(find . | grep -E ".+(jpg|png|gif|jpeg)")
imageList+="$res ";
for file in $fileList; do
  
    for image in $imageFilelist; do
        find . | grep -q -E $image
      
        if [ $? -eq 0 ]

	then
            used+="$image "
        fi
    done
done
unused=$(grep -v $used $imageFilelist)
for file in $used
do 
    echo ${file##*/}
done
#uniq -s1 -u $unused  #an attempt to try and remove recurring lines but it didnt work
