if [ -x /usr/bin/update-desktop-database ]; then
  /usr/bin/update-desktop-database -q usr/share/applications >/dev/null 2>&1
fi

if [ -e usr/share/icons/hicolor/icon-theme.cache ]; then
  if [ -x /usr/bin/gtk-update-icon-cache ]; then
    /usr/bin/gtk-update-icon-cache /usr/share/icons/hicolor >/dev/null 2>&1
  fi
fi

# update rarian database
if [ -x usr/bin/rarian-sk-update ]; then
  usr/bin/rarian-sk-update 1> /dev/null 2> /dev/null
fi

# Fix desktop locking
chown root /usr/libexec/mate-screensaver-dialog
chmod +s /usr/libexec/mate-screensaver-dialog

if [ -x /usr/bin/glib-compile-schemas ]; then
  /usr/bin/glib-compile-schemas /usr/share/glib-2.0/schemas >/dev/null 2>&1
fi

