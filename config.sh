
filename="/root/TFCode/TF_Files/log.txt"

while IFS= read -r line; do
            #If the line starts with ST then set var to yes.
                if [[ $line == Failure ]] ; then

                                        # Just t make each line start very clear, remove in use.
                                                echo "Failure"
                                                    fi
