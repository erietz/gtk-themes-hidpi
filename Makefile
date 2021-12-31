ICON_DIR := $(HOME)/.icons
THEME_DIR := $(HOME)/.themes
GTK_NAME := gtk-gruvbox-hidpi

ICON_TARGET := $(ICON_DIR)/$(GTK_NAME)
THEME_TARGET := $(THEME_DIR)/$(GTK_NAME)

install: $(ICON_TARGET) $(THEME_TARGET)

$(ICON_TARGET): $(CURDIR)/icons/$(GTK_NAME)
	ln -s $< $@

$(THEME_TARGET): $(CURDIR)/themes/$(GTK_NAME)
	ln -s $< $@

clean:
	unlink $(ICON_TARGET)
	unlink $(THEME_TARGET)
