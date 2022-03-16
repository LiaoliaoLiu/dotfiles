//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
	{"", "ln=$(date +%d | sed -r 's/.*(.)/\\1/'); date \"+%a, %b %-d %-I:%M;\"",	2,	0},
	{"", "battery",    30,     10},
    {"", "getvolume",       0,      11},
    {"", "getcpuload",       1,      11},
    {"", "getram",       1,      11},
	/* {"", "barweather", 1200, 0}, */
};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = "|";
static unsigned int delimLen = 3;
