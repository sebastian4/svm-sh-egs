while getopts 'e:-:' OPT; do
  case $OPT in
    e) echo echo: $OPTARG;;
    -) #long option
       case $OPTARG in
         long-option) echo long option;;
         *) echo long option: $OPTARG;;
       esac;;
  esac
done

# from http://stackoverflow.com/questions/402377/using-getopts-in-bash-shell-script-to-get-long-and-short-command-line-options