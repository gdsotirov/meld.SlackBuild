#!/bin/sh

# Update MIME database
if [ -x /usr/bin/update-mime-database ]; then
  /usr/bin/update-mime-database /usr/share/mime
fi

# Update Dekstop database
if [ -x /usr/bin/update-desktop-database ]; then
  /usr/bin/update-desktop-database /usr/share/applications
fi

# Update icon cache
if [ -x /usr/bin/gtk-update-icon-cache ]; then
  /usr/bin/gtk-update-icon-cache /usr/share/icons/hicolor
fi

# Compile Glib schemas
if [ -x /usr/bin/glib-compile-schemas ]; then
  /usr/bin/glib-compile-schemas /usr/share/glib-2.0/schemas
fi

