
/* user and group to drop privileges to */
static const char *user  = "nobody";
static const char *group = "nogroup";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "#B9B49F",     /* after initialization */
	[INPUT] =  "#005577",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
  [BG] =       "#000000",   /* background */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

static const char *imgpath          = "/home/andrew/.config/suckless/slock/yorha.xpm";
static const int imgwidth           = 300;
static const int imgheight          = 359;
static const int imgoffsetx         = 810;
static const int imgoffsety         = 360;
static const int showimgonlyatstart = 0;
