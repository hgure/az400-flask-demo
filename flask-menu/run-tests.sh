#!/usr/bin/env bash
# -*- coding: utf-8 -*-
#
# This file is part of Flask-Menu
# Copyright (C) 2013-2020 CERN.
#
# Flask-Menu is free software; you can redistribute it and/or modify
# it under the terms of the Revised BSD License; see LICENSE file for
# more details.

# Quit on errors
set -o errexit

# Quit on unbound symbols
set -o nounset

python -m check_manifest
python -m sphinx.cmd.build -qnNW docs docs/_build/html
python -m pytest
python -m sphinx.cmd.build -qnNW -b doctest docs docs/_build/doctest