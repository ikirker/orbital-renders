#!/usr/bin/env bash

for file in srcs/includes/functions_*.inc; do
  grep '^#declare ' "$file" \
    | awk -v input_file="$file" \
      ' ($2 ~ /^R/) { 
          print "Radial function:" $2; 
          radial_function = $2; 
          function_shell = gensub( \
                   /.*\/functions_([A-Za-z0-9]+)\.inc/, \
                   "\\1",                               \
                   "g",                                 \
                   input_file);
          print "Function shell:" function_shell;
        }  
        ($2 ~ /^Y/) { 
          print "Angular function:" $2; 
          angular_function = $2;
          system ("RADIAL_FUNCTION=" radial_function    \
                 " ANGULAR_FUNCTION=" angular_function  \
                 " FUNCTION_SHELL=" function_shell      \
                 " envsubst <srcs/template.povt > srcs/auto_" \
                 radial_function                        \
                 "-"                                    \
                 angular_function                       \
                 ".pov"                                 \
                 )                                      \
        }'
done

