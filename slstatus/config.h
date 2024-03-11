const unsigned int interval = 1000;

/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";

/* maximum output string length */
#define MAXLEN 2048
static const char *fonts[] = {
    "JetBrainsMono Nerd Font:size=11:antialias=true"
};    

static const struct arg args[] = {
    /* function format          argument */
    //{ datetime, "%s",           "%F %T" },
    //{ wifi_perc, "W: (%3s%% on ", "wlp8s0" },
    { netspeed_rx, "| 🖧 :%sB/s | ", "enp6s0" },
    { run_command, "🔊 :%4s | ", "amixer sget Master | awk -F\"[][]\" '/%/ { print $2 }' | head -n1" },
    { cpu_perc, "[  %s%% ] | ",      NULL },	
    { ram_perc, "[RAM  %s%%] | ", NULL	},
    { datetime, "%s", "%a %H:%M" },
};
