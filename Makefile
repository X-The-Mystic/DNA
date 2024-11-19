# I'm totally aware how shitty this makefile is

build:
	g++ -Wall -std=c++11 -O2 src/*.cpp src/Actions/*.cpp src/utils/*.cpp -o DNA