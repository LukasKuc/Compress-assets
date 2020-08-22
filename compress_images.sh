#!/bin/bash
optimize() {
  svgo *.svg
  optipng *.png
  optipng *.PNG
  jpegoptim *.jpg --strip-all --all-progressive
  jpegoptim *.jpeg --strip-all --all-progressive
  jpegoptim *.JPG --strip-all --all-progressive
  for i in *
  do
    if test -d $i
    then
      cd $i
      echo $i
      optimize
      cd ..
    fi
  done
  echo
}
optimize
