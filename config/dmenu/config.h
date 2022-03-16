/* See LICENSE file for copyright and license details. */
/* Default settings; can be overriden by command line. */

static int topbar = 1;                      /* -b  option; if 0, dmenu appears at bottom     */
static int colorprompt = 0;                /* -p  option; if 1, prompt uses SchemeSel, otherwise SchemeNorm */
static int centered = 0;                    /* -c option; centers dmenu on screen */
static int min_width = 250;                    /* minimum width when centered */
/* -fn option overrides fonts[0]; default X11 font or font set */
static const char *fonts[] = {
	"Ubuntu Mono:size=16"
};
static const char *prompt      = NULL;      /* -p  option; prompt to the left of input field */
static const char *colors[SchemeLast][2] = {
	/*     fg         bg       */
	[SchemeNorm] = { "#979eab", "#282c34" },
	[SchemeSel] = { "#FBFBFB", "#444450" },
	[SchemeOut] = { "#000000", "#00ffff" },
};

static unsigned int lines		= 12;	// -l option; if nonzero, dmenu uses vertical list with given number of lines
static unsigned int lineheight		= 35;	// -h option; sets the minimum height of each line
static unsigned int min_lineheight	= 35;
static unsigned int gappx		= 15;	// outer gap of dmenu
static unsigned int igappx		= 15;	// inner gap, used to separate search from items
static unsigned int sh			= 3;	// separator height

/*
 * Characters not considered part of a word while deleting words
 * for example: " /?\"&[]"
 */
static const char worddelimiters[]	= " ";

/* Size of the window border */
static const unsigned int border_width	= 3;
