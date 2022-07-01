#parse the parameters
while test $# -gt 0; do
        case "$1" in
                -h|--help)
                        echo "help"
                        echo " "
			echo "-h, --help                show brief help"
                        echo "-f,			graph filename (*.lg)"
                        echo " "
                        exit 0
                        ;;

		-f)
			shift
			if test $# -gt 0; then
                                file=$1
			fi
			shift
			;;
		-cf)
			shift
			if test $# -gt 0; then
                                corefile=$1
			fi
			shift
			;;
		-k)
			shift
			if test $# -gt 0; then
								k=$1
			fi
			shift
			;;
                *)
                        break
                        ;;
        esac
done

#printing some output to the users
echo "Dataset: $file"


#Running PatKG, need modify folder location: datasetFolder
echo "Start extracting top-k frequent patterns ...";
java -cp ./PatKG/bin mainMine.PatKGmine filename=$file coreFileName=$corefile datasetFolder=/home/jianzeng/dataSets/ k=$k
echo "Mining Finished."
