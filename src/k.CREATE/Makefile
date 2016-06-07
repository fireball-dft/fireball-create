CREATE=M_bcna_3c_DOGS.o M_bcna_3c_Harris.o M_vna_DOGS.o M_vna_Harris.o M_vnl_KB.o

all: libthd_CREATE.a

.PHONY: clean

clean:
	rm -rf *.a *.o *.mod *genmod.o *~

libthd_CREATE.a: $(CREATE)
	ar rcs $@ $^ && mv $@ ../libs && cp *.mod ../include

%.o: %.f90
	${F90} ${FFLAGS} -c $< -I../include
