while getopts u:d:p:f: option
do
        case "${option}"
        in
                u) USER=${OPTARG};;
                d) DATE=${OPTARG};;
                p) PRODUCT=${OPTARG};;
                f) FORMAT=$OPTARG;;
        esac
done

echo $USER
echo $DATE

#from http://linux.about.com/od/Bash_Scripting_Solutions/a/How-To-Pass-Arguments-To-A-Bash-Script.htm
