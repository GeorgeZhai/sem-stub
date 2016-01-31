#!/bin/bash
echo "stopping ...."


forever list

forever stop sem-stub

forever list

