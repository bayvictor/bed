#/home/vhuang/bin_safe/bed__binary_editor_build_n_run.sh
#!/bin/bash -x 
set e+

echo "run it as \"source $0 \""
 sudo apt-get install -y --force-yes golint #- Linter for Go source code

#mkdir -p ~/src/golang/editor/bed
#cd  ~/src/golang/editor/bed

export GOPATH=$PWD


go get -u github.com/itchyny/bed/cmd/bed
ls bin -lth
cd   src/github.com/itchyny/bed/cmd
git clone https://github.com/bayvictor/bed.git 
cd bed 
pwd
ln -s $PWD ~/newbed 
./patch_it_after_checkout.sh
#cd   src/github.com/itchyny/bed/cmd/bed

go build  pkg/mod/github.com/itchyny/bed@v0.2.1/cmd/bed/main.go 
ls 

cp bin/bed ~/sbin
which bed
ls -lth  ~/sbin


