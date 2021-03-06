/* data.h */
#include "copyright.h"

#ifndef _h_data
#define _h_data

#define MAP_PIX   0
#define LOCAL_PIX 1
#define GHOST_PIX 2
#define GENO_PIX  3
#define GREET_PIX 4

/* Bitmap defintions */
#include "bitmaps.h"

#define crossmask_width         16
#define crossmask_height        16
#define shield_width            20
#define shield_height           20
#define cloak_width             20
#define cloak_height            20
#define icon_width              112
#define icon_height             80

#ifndef COLORIZE
#define etorp_width             3
#define etorp_height            3
#define eplasmatorp_width       7
#define eplasmatorp_height      7
#define mplasmatorp_width       5
#define mplasmatorp_height      5
#define mtorp_width             3
#define mtorp_height            3
#endif

extern struct player *players;
extern struct player *me;
extern struct torp *torps;
extern struct plasmatorp *plasmatorps;
extern struct status *status;
extern struct ship *myship;
extern struct stats *mystats;
extern struct planet *planets;
extern struct phaser *phasers;
extern struct message *messages;
extern struct mctl *mctl;
extern struct team *teams;
extern struct ship shipvals[];
extern struct memory universe;
extern struct planet pdata[];

extern int oldalert;
extern int remap[];
extern int udcounter;
extern char *title;
extern struct plupdate pl_update[];
extern char buttonmap[];
extern int messpend;
#ifdef XTRA_MESSAGE_UI
extern int messageHUD;      /* Show message being typed on the local display */
extern int messHoldThresh;  /* Threshold value for putting a message on hold */
extern int messMouseDelta;   /* To keep track of mouse movement delta        */
#endif
extern int lastcount;
extern int mdisplayed;
extern int lastm;
extern int delay;
extern int rdelay;
extern int namemode;
extern int warnShields;
extern int showStats;
#ifdef RECORDGAME
extern FILE *recordFile;                         /* recorder */
extern int playback;
#define PL_PAUSE 1
#define PL_FORWARD 2
#define PL_REVERSE 3
#endif
extern FILE *logFile;                            /* message log */
extern int msgBeep;                              /* ATM - msg beep */
extern int warncount;
extern int warntimer;
extern int infomapped;
extern int scanmapped;                           /* ATM - scanner stuff */
extern int mustexit;
extern int messtime;
extern int keeppeace;
extern int gen_distress;

#ifdef GATEWAY
extern unsigned LONG netaddr;                    /* for blessing */

#endif

extern int messageon;

#ifdef RSA
extern char testdata[];
extern int RSA_Client;
extern char key_name[];
extern char client_type[];
extern char client_arch[];
extern char client_creator[];
extern char client_comments[];
extern char client_key_date[];

#endif

#ifdef META
extern char *metaserver;
extern int metaport;

#endif

#ifdef NBT
extern int MacroMode;
extern int macrocnt;
extern struct macro_list macro[];                /* NBT 2/26/93 */

#endif

#ifdef ROTATERACE
extern int rotate;
extern int rotate_deg;

#endif

extern int updatespeed;

extern int SBhours;

extern int showMySpeed;

#ifdef JUBILEE_PHASERS
extern int jubilee_phasers;
#endif

#ifdef SHORT_PACKETS
extern int why_dead;
extern int tryShort, tryShort1;
extern int recv_short;
extern int recv_mesg;
extern int recv_kmesg;
extern int recv_threshold;
extern char recv_threshold_s[];
extern int recv_warn;

/* S_P2 */
extern int shortversion;                         /* Which version do we use? */

#endif

extern int ghoststart;
extern int ghost_pno;
extern int keepInfo;
extern int showPlanetOwner;
extern int phaserShrink;
extern int theirPhaserShrink;
extern int shrinkPhaserOnMiss;
extern int colorClient;
extern int newDashboard, old_db;
extern int niftyNewMessages;
extern int fastQuit;
extern int babes;
extern char *shipnos;
extern int sock;
extern int xtrekPort;
extern int queuePos;
extern int pickOk;
extern int lastRank;
extern int promoted;
extern int loginAccept;
extern unsigned localflags;
extern int tournMask;
extern int nextSocket;
extern char *serverName;
extern char defaultsFile[80];
extern int loggedIn;
extern int reinitPlanets;
extern int lastUpdate[];
extern int timerDelay;
extern int redrawDelay;
extern int reportKills;
extern int phaserWindow;
#ifdef PHASER_STATS
extern int phaserShowStats;
extern int phaserStatTry;
extern int phaserStatHit;
#endif

extern int scanplayer;
extern int showTractor;
extern int commMode;                             /* UDP */
extern int commModeReq;                          /* UDP */
extern int commStatus;                           /* UDP */
extern int commSwitchTimeout;                    /* UDP */
extern int udpTotal;                             /* UDP */
extern int udpDropped;                           /* UDP */
extern int udpRecentDropped;                     /* UDP */
extern int udpSock;                              /* UDP */
extern int udpDebug;                             /* UDP */
extern int udpClientSend;                        /* UDP */
extern int udpClientRecv;                        /* UDP */
extern int udpSequenceChk;                       /* UDP */
extern int weaponUpdate;

#ifdef GATEWAY
extern int gw_serv_port, gw_port, gw_local_port; /* UDP */
extern char *gw_mach;                            /* UDP */

#endif
extern int baseUdpLocalPort;                     /* UDP */


extern int showTractorPressor;
extern int showLock;
extern int showPhaser;
extern int logmess;
extern int continuetractor;
extern int tcounter;
extern int autoKey;
extern int extraBorder;

/* udp options */
extern int tryUdp, tryUdp1;

extern int debug;

extern double Sin[], Cos[];

extern W_Icon stipple, clockpic, icon;

extern W_Icon expview[BMP_SHIPEXPL_FRAMES];
extern W_Icon sbexpview[BMP_SBEXPL_FRAMES];
#ifdef COLORIZE
extern W_Icon cloud[5][BMP_TORPDET_FRAMES];
extern W_Icon plasmacloud[5][BMP_TORPDET_FRAMES];
extern W_Icon torpIcon[5][BMP_TORP_FRAMES];
extern W_Icon plasmatorpIcon[5][BMP_TORP_FRAMES];
#else
extern W_Icon cloud[BMP_TORPDET_FRAMES];
extern W_Icon plasmacloud[BMP_TORPDET_FRAMES];
extern W_Icon etorp, mtorp;
extern W_Icon eplasmatorp, mplasmatorp;
#endif

#ifdef VSHIELD_BITMAPS
#define SHIELD_FRAMES 5
extern W_Icon shield[SHIELD_FRAMES], cloakicon;
extern int VShieldBitmaps;

#else
extern W_Icon shield, cloakicon;

#endif

extern W_Icon tractbits, pressbits;

//Ships
extern W_Icon ship_bitmaps[5];
extern W_Icon fed_bitmaps[NUM_TYPES][SHIP_VIEWS], kli_bitmaps[NUM_TYPES][SHIP_VIEWS],
        rom_bitmaps[NUM_TYPES][SHIP_VIEWS], ori_bitmaps[NUM_TYPES][SHIP_VIEWS], ind_bitmaps[NUM_TYPES][SHIP_VIEWS];

extern W_Icon bplanets[PLANET_VIEWS];
extern W_Icon bmplanets[MPLANET_VIEWS];
extern W_Color borderColor, backColor, textColor, myColor, warningColor,
        shipCol[5], rColor, yColor, gColor, unColor, foreColor;

/* jn - SMARTMACRO */
extern char lastMessage[];
extern int MacroNum;
extern char *classes[];
extern char teamlet[];
extern char *teamshort[];
extern char pseudo[PSEUDOSIZE];
extern char defpasswd[PSEUDOSIZE];
extern char login[PSEUDOSIZE];

extern struct rank ranks[NUMRANKS];

extern W_Window messagew, w, mapw, statwin, baseWin, infow, iconWin, tstatw,
        war, warnw, helpWin, teamWin[4], qwin, messwa, messwt, messwi,
        messwk, planetw, rankw, playerw, optionWin, reviewWin;
extern W_Window scanw, scanwin, udpWin, phaserwin;

#ifdef SHORT_PACKETS
extern W_Window spWin;

#endif

#ifdef NBT
extern W_Window macroWin;

#endif

#ifdef META
extern W_Window metaWin;

#endif

extern int ping;                                 /* to ping or not to ping */
extern LONG packets_sent;                        /* # all packets sent to
                                                  * server */
extern LONG packets_received;                    /* # all packets received */
extern W_Window pStats;

extern char deathmessage[80];
extern char outmessage[];
extern char *xdisplay_name;

extern int UseNewDistress;
extern int UseNewMacro;
extern int UseSmartMacro;
extern int rejectMacro;
extern int maskrecip;
extern unsigned char singleMacro[MAX_MACRO];


extern int enemyPhasers;

extern char cloakChars[3];

extern int showIND;
extern int newPlist;


extern struct dmacro_list *distmacro;
extern struct dmacro_list dist_defaults[];
extern struct dmacro_list dist_prefered[];
extern int sizedist;

#ifdef RCM
extern struct dmacro_list rcm_msg[];

#endif

extern int highlightFriendlyPhasers;

#ifdef IGNORE_SIGNALS_SEGV_BUS
/* Handle (hopefully) non-fatal segmentation and bus faults. */
extern int ignore_signals;

#endif

#ifdef MOTION_MOUSE
extern int motion_mouse;
extern int user_motion_thresh;
extern int motion_mouse_enablable;
extern int motion_mouse_steering;

#endif

#ifdef SHIFTED_MOUSE
extern int extended_mouse;

#endif

extern int ignoreCaps;

#ifdef MOUSE_AS_SHIFT
extern int mouse_as_shift;
extern int b1_as_shift;
extern int b2_as_shift;
extern int b3_as_shift;

#endif

#ifdef XTREKRC_HELP
extern W_Window defWin;

#endif

#ifdef CONTROL_KEY
extern int use_control_key;

#endif

#ifdef DOC_WIN
extern W_Window docwin, xtrekrcwin;
extern int maxdoclines, maxxtrekrclines;

#endif

#ifdef REFRESH_INTERVAL
extern int refresh_interval;

#endif

#ifdef BRMH
extern int max_fd;

#endif

#ifdef TOOLS
extern W_Window toolsWin;
extern int shelltools;
extern struct key_list macroKeys[MAX_KEY];               
extern unsigned char keys[MAX_KEY];

#endif

#ifdef SOUND
#include "sound.h"
extern int sound_init;
extern int sound_toggle;
extern char *sounddir;
extern W_Window soundWin;

#endif

#ifdef HOCKEY_LINES
extern struct s_line s_lines[NUM_HOCKEY_LINES + 1];
extern int normal_s_lines;
extern int hockey_s_lines;

#endif

#ifdef MULTILINE_MACROS
extern int multiline_enabled;

#endif

#ifdef FEATURE_PACKETS
extern int F_feature_packets;

#endif

extern int F_cloak_maxwarp;
extern int F_self_8flags;
extern int F_self_8flags2;
extern int F_ship_cap;

#ifdef RECORDGAME
extern int F_many_self;
#endif

#ifdef WARP_DEAD
extern int F_dead_warp;
#endif

#endif /* _h_data */
