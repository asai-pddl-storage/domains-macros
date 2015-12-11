
echodo (){
    echo $*
    $@
}

echodo git checkout master
echodo git branch split-$1
echodo find . -name "*.plan" | while read p ; do ../../app/split-plan $p $1 ; done
echodo git add --all
echodo git commit -m "split-$1"
