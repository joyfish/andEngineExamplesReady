echo ########repace for android 4.43#############
for file in `find -name "project.properties"`
do
mv $file $file.bak
more $file.bak | sed 's@target=android-15@target=android-18@g' > $file
rm $file.bak
done

