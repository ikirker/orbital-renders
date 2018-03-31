
POV_EXE=povray
ENVSUBST=envsubst

V_DIR=srcs

POV_QUALITY=5
#POV_AA=-A

IMG_WIDTH=200
IMG_HEIGHT=200

POV_FLAGS=+GA +GF +GW +A0.1 +AM2 +H$(IMG_HEIGHT) +W$(IMG_WIDTH) +FN +Q$(POV_QUALITY) $(POV_AA) -UA -d

POV_SRCS=$(wildcard srcs/*.pov)

POV_OUTS=$(addprefix output/,$(notdir $(subst .pov,_$(IMG_WIDTH)x$(IMG_HEIGHT).png,$(POV_SRCS))))

INCLUDES=$(wildcard srcs/includes/*.inc)

POV_STATES=$(subst .png,.pov-state,$(POV_OUTS))

all: rebuild_auto_files output $(POV_OUTS)

clean:
	-'rm' -f $(POV_OUTS) $(POV_STATES)
	-rmdir output
	-'rm' -f srcs/auto_*.pov

output/%_$(IMG_WIDTH)x$(IMG_HEIGHT).png: srcs/%.pov
	$(POV_EXE) $(POV_FLAGS) +I"$<" +O"$@"

#srcs/auto_%.pov: $(INCLUDES)
rebuild_auto_files: $(INCLUDES) Makefile orbital_list_gen.sh
	./orbital_list_gen.sh

output:
	mkdir output

.PHONY:all clean rebuild_auto_files

.DEFAULT:all

