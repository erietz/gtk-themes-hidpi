ICON_DIR := $(HOME)/.icons
THEME_DIR := $(HOME)/.themes

ICON_SRCS := $(shell ls icons)
THEME_SRCS := $(shell ls themes)

ICON_TARGETS := $(patsubst %, $(ICON_DIR)/%, $(ICON_SRCS))
THEME_TARGETS := $(patsubst %, $(THEME_DIR)/%, $(THEME_SRCS))

install: $(ICON_TARGETS) $(THEME_TARGETS)

$(ICON_DIR)/%: $(CURDIR)/icons/%
	ln -s $< $@

$(THEME_DIR)/%: $(CURDIR)/themes/%
	ln -s $< $@

clean:
	unlink $(ICON_TARGET)
	unlink $(THEME_TARGET)
