#!/bin/bash

myvar=$( ls $1 | wc -l )

echo There are $myvar entries in the directory $1
