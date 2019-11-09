module dl

#include <dlfcn.h>

pub const (
	RTLD_NOW = C.RTLD_NOW
)

pub fn open(filename string, flags int) voidptr {
	return C.dlopen(filename.str, flags)
}

pub fn sym(handle voidptr, symbol string) voidptr {
	return C.dlsym(handle, symbol.str)
}
