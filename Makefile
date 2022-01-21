FC       = gfortran
FFLAGS   = -Wall
LDFLAGS  = -s

all: invers3d inverse2

invers3d: src/invers3d.f
	$(FC) $(FFLAGS) -o $@ $^ $(LDFLAGS)

inverse2: src/inverse2.f
	$(FC) $(FFLAGS) -o $@ $^ $(LDFLAGS)

clean:
	rm -f invers3d inverse2
