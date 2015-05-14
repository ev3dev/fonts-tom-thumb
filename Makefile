prefix = /usr/local

all: build-fonts

build-fonts:
	cd src/fonts && $(MAKE)

clean:
	cd src/fonts && $(MAKE) clean
