#!/bin/bash

expr `grep -c '^\-\-\-' $1` + 1
