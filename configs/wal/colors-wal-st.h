const char *colorname[] = {

  /* 8 normal colors */
  [0] = "#211c1f", /* black   */
  [1] = "#615C5F", /* red     */
  [2] = "#625F61", /* green   */
  [3] = "#6F6F6F", /* yellow  */
  [4] = "#7F807F", /* blue    */
  [5] = "#929292", /* magenta */
  [6] = "#9FA09F", /* cyan    */
  [7] = "#d0d0d0", /* white   */

  /* 8 bright colors */
  [8]  = "#919191",  /* black   */
  [9]  = "#615C5F",  /* red     */
  [10] = "#625F61", /* green   */
  [11] = "#6F6F6F", /* yellow  */
  [12] = "#7F807F", /* blue    */
  [13] = "#929292", /* magenta */
  [14] = "#9FA09F", /* cyan    */
  [15] = "#d0d0d0", /* white   */

  /* special colors */
  [256] = "#211c1f", /* background */
  [257] = "#d0d0d0", /* foreground */
  [258] = "#d0d0d0",     /* cursor */
};

/* Default colors (colorname index)
 * foreground, background, cursor */
 unsigned int defaultbg = 0;
 unsigned int defaultfg = 257;
 unsigned int defaultcs = 258;
 unsigned int defaultrcs= 258;
