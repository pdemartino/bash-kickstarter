# functions.sh
#
# Utility functions needed by the bootstrap


# source_dir
# sources recursively all the *.sh files it finds into the given directory
function source_dir {
   source_d=$1
   if [ -d $source_d ]; then
      for source_f in $(find  $source_d/ -name \*\.sh -type f -o -type l); do
         if [ -d $source_f ]; then
            source_dir $source_f
         else
          source $source_f
         fi
      done
   fi
}


