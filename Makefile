
POV_EXE=povray

V_DIR=srcs

POV_QUALITY=5
#POV_AA=-A

IMG_WIDTH=1000
IMG_HEIGHT=1000

POV_FLAGS=-GA +GF +GW +H$(IMG_HEIGHT) +W$(IMG_WIDTH) +FN +Q$(POV_QUALITY) $(POV_AA) -UA -d

POV_SRCS=$(wildcard srcs/*.pov)

POV_OUTS=$(addprefix output/,$(notdir $(subst .pov,.png,$(POV_SRCS))))

POV_STATES=$(subst .png,.pov-state,$(POV_OUTS))

all: output $(POV_OUTS)

clean:
	-'rm' -f $(POV_OUTS) $(POV_STATES)
	-rmdir output

output/%.png: srcs/%.pov
	$(POV_EXE) $(POV_FLAGS) +I"$<" +O"$@"

output:
	mkdir output

.PHONY:all clean



