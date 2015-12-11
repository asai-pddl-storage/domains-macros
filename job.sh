
git checkout master
git branch split-$1
find . -name "*.plan" | while read p ; do ../../app/split-plan $p 3 ; done
git add --all
git commit -m "split-$1"
