set -ex;
! mkdir dist;
! rm dist/out.sh;
for file in ./**/*.sh; do
    echo "# Filename: $file" >> dist/out.sh;
    cat $file >> dist/out.sh;
    echo "#############################" >> dist/out.sh;
done;

echo "OK?"