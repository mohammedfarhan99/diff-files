set +e
cd /Users/abdulrahman/Desktop/cmp
touch 1.json
touch 2.json
echo "Comparing files 1 and 2"
diff 1.json 2.json
echo "Comparing files 1 and 3"
diff 1.json 3.json
do
    command || true
done

# Do something that might fail but we care. Loop is completed. If there was an error, the variable error is created and set to true
while ...
do
    command || error=true
done

#Fail the build if there was an error
if [ $error ]
then 
    exit -1
fi
