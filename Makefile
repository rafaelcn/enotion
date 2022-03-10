CC  = valac
EC  = vala
SRC = $(shell (find src/ -name '*.vala'))

LIBS = --pkg gtk+-3.0 --pkg webkit2gtk-4.0

all:
	$(EC) $(LIBS) $(SRC)

build:
	$(CC) $(LIBS) $(SRC) -o enotion

vars:
	@echo "VAR_CC = $(CC)"
	@echo "VAR_SRC = $(SRC)"