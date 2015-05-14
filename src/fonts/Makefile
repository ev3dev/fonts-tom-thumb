build: gzipped_psf_fonts

%.gz: %
	gzip -9 <$< >$@

Lat15-TomThumb4x6.psf: bdf = tom-thumb.bdf
Lat15-TomThumb4x6.psf: fontset = Lat15.256
Lat15-TomThumb4x6.psf: size = 256

PSF_FONTS=Lat15-TomThumb4x6.psf

GZIPPED_PSF_FONTS=$(addsuffix .gz, $(PSF_FONTS))
gzipped_psf_fonts: $(GZIPPED_PSF_FONTS)

BDF2PSF_DIR=/usr/share/bdf2psf/
equivalents=$(BDF2PSF_DIR)standard.equivalents
symbols=$(BDF2PSF_DIR)linux.set+$(BDF2PSF_DIR)fontsets/$(fontset)+:$(BDF2PSF_DIR)useful.set

$(PSF_FONTS):
	bdf2psf --fb $(bdf) $(equivalents) $(symbols) $(size) $@

clean:
	rm -f *.psf
	rm -f *.gz
