echo "Building PatKG ..."
mkdir ./PatKG/bin
javac -sourcepath ./PatKG/src -d ./PatKG/bin/ ./PatKG/src/**/*.java
echo "DONE."

echo "All done successfully!"
