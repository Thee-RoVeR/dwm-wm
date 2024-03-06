
/* See LICENSE file for copyright and license details. */
/* Default settings; can be overridden by command line. */

static int topbar = 1;                      /* Display dmenu at the top of the screen */
static const char *fonts[] = {
	"JetBrainsMono Nerd Font:size=12"
};
static const char *prompt = NULL;           /* Prompt displayed to the left of input field */
static const char *colors[SchemeLast][2] = {
    /*     fg         bg       */
    [SchemeNorm] = { "#a3be8c", "#2e3440" }, /* Light green foreground on dark background */
    [SchemeSel]  = { "#2e3440", "#81a1c1" }, /* Dark blue foreground on light blue background */
    [SchemeOut]  = { "#2e3440", "#b48ead" }, /* Dark blue foreground on purple background */
};
static unsigned int lines = 10;             /* Number of lines displayed */

static const char worddelimiters[] = " ";    /* Characters not considered part of a word */

