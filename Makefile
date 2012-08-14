# -*- Mode: makefile-gmake; tab-width: 4; indent-tabs-mode: t -*-
#
# This file is part of the LibreOffice project.
#
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at http://mozilla.org/MPL/2.0/.
#

SRCDIR:=$(firstword $(dir $(MAKEFILE_LIST)))
include $(SRCDIR)config.mk

presentationdir:=$(templatedir)/presnt

.PHONY: all install clean mostlyclean TAGS info dvi check dist uninstall
clean mostlyclean TAGS info dvi check: all
dist: uninstall

all:
	$(info Pretending to work hard.)
	@true

install:
	install -d $(presentationdir)
	install -t $(presentationdir) $(wildcard $(SRCDIR)src/presnt/*)

uninstall:
	$(info Sorry, not implemented.)
	@false

distclean:
	rm -f $(SRCDIR)config.mk $(SRCDIR)config.log $(SRCDIR)config.status

# vim: set noet sw=4 ts=4:
