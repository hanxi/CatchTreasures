#include <fltk/Window.h>
#include <fltk/Widget.h>
#include <fltk/run.h>
using namespace fltk;

int main(int argc, char** argv)
{
	Window* mainWindow = new Window(800,600);
	mainWindow->begin();
	Widget* box = new Widget(100,80,200,200,"Hello World!");
	box->box(UP_BOX);
	box->labelfont(HELVETICA_BOLD_ITALIC);
	box->labelsize(36);
	box->labeltype(SHADOW_LABEL);
	mainWindow->end();
	mainWindow->show(argc,argv);
	return run();
}
