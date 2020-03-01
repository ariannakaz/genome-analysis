#Print the working directory and look at the files within the directory
pwd
ls -l

#Create a text file than copy it
nano draft.txt
cp draft.txt draft2.txt

#Make a new directory and move one copy of the text file into this directory
mkdir Unix_Files
mv draft.txt Unix_Files/

#Check that the file is in the new directory
cd Unix_Files
ls

#Change permissions on the file so that all other users cannot read it
chmod o-r draft.txt

#Go back to the original directory and remove the copied file
cd ..
rm draft2.txt

#Create a new text file, then move it to the secondary directory
nano words.txt
mv words.txt Unix_Files/

#Move to the secondary directory and concatenate the two text files
cd Unix_Files/
cat draft.txt words.txt > combo.txt

#Look at the first and last lines of the text file
head -1 combo.txt
tail -1 combo.txt

#Count the number of lines without the letter 'a'
grep -ci a combo.txt

