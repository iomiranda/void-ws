static const char norm_fg[] = "#d0d0d0";
static const char norm_bg[] = "#211c1f";
static const char norm_border[] = "#919191";

static const char sel_fg[] = "#d0d0d0";
static const char sel_bg[] = "#625F61";
static const char sel_border[] = "#d0d0d0";

static const char *colors[][3]      = {
    /*               fg           bg         border                         */
    [SchemeNorm] = { norm_fg,     norm_bg,   norm_border }, // unfocused wins
    [SchemeSel]  = { sel_fg,      sel_bg,    sel_border },  // the focused win
};
