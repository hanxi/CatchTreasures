FLTKLIB = -L/home/hanxi/reference/fltk2/lib -lfltk2 -lXext -lXinerama -lXft -lX11 -lXi -lm
FLTKINCLUDE = -I/home/hanxi/reference/fltk2/include
OBJECTS = main.o

catchtreasure: $(OBJECTS)
	g++ -o main $(OBJECTS) $(FLTKLIB)

main.o: main.cpp main.h
	g++ -cpp main.cpp -o main.o $(FLTKINCLUDE)
	
.PHONY: clean
clean:
	-rm catchtreasure $(OBJECTS)
