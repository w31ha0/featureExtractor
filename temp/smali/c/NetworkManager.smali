.class public Lc/NetworkManager;
.super Lvpadn/r;
.source "NetworkManager.java"


# static fields
.field public static final CDMA:Ljava/lang/String; = "cdma"

.field public static final EDGE:Ljava/lang/String; = "edge"

.field public static final EHRPD:Ljava/lang/String; = "ehrpd"

.field public static final GPRS:Ljava/lang/String; = "gprs"

.field public static final GSM:Ljava/lang/String; = "gsm"

.field public static final HSDPA:Ljava/lang/String; = "hsdpa"

.field public static final HSPA:Ljava/lang/String; = "hspa"

.field public static final HSPA_PLUS:Ljava/lang/String; = "hspa+"

.field public static final HSUPA:Ljava/lang/String; = "hsupa"

.field public static final LTE:Ljava/lang/String; = "lte"

.field public static final MOBILE:Ljava/lang/String; = "mobile"

.field public static NOT_REACHABLE:I = 0x0

.field public static final ONEXRTT:Ljava/lang/String; = "1xrtt"

.field public static REACHABLE_VIA_CARRIER_DATA_NETWORK:I = 0x0

.field public static REACHABLE_VIA_WIFI_NETWORK:I = 0x0

.field public static final TYPE_2G:Ljava/lang/String; = "2g"

.field public static final TYPE_3G:Ljava/lang/String; = "3g"

.field public static final TYPE_4G:Ljava/lang/String; = "4g"

.field public static final TYPE_ETHERNET:Ljava/lang/String; = "ethernet"

.field public static final TYPE_NONE:Ljava/lang/String; = "none"

.field public static final TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TYPE_WIFI:Ljava/lang/String; = "wifi"

.field public static final UMB:Ljava/lang/String; = "umb"

.field public static final UMTS:Ljava/lang/String; = "umts"

.field public static final WIFI:Ljava/lang/String; = "wifi"

.field public static final WIMAX:Ljava/lang/String; = "wimax"


# instance fields
.field a:Landroid/net/ConnectivityManager;

.field b:Landroid/content/BroadcastReceiver;

.field private c:Lvpadn/p;

.field private d:Z

.field private e:Ljava/lang/String;

.field private g:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    sput v0, Lc/NetworkManager;->NOT_REACHABLE:I

    .line 43
    const/4 v0, 0x1

    sput v0, Lc/NetworkManager;->REACHABLE_VIA_CARRIER_DATA_NETWORK:I

    .line 44
    const/4 v0, 0x2

    sput v0, Lc/NetworkManager;->REACHABLE_VIA_WIFI_NETWORK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lvpadn/r;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/NetworkManager;->d:Z

    .line 81
    const-string v0, ""

    iput-object v0, p0, Lc/NetworkManager;->e:Ljava/lang/String;

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Lc/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    .line 89
    return-void
.end method

.method private a(Landroid/net/NetworkInfo;)V
    .locals 2

    .prologue
    .line 183
    invoke-direct {p0, p1}, Lc/NetworkManager;->b(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lc/NetworkManager;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 186
    invoke-direct {p0, v0}, Lc/NetworkManager;->a(Ljava/lang/String;)V

    .line 187
    iput-object v0, p0, Lc/NetworkManager;->e:Ljava/lang/String;

    .line 190
    :cond_0
    return-void
.end method

.method static synthetic a(Lc/NetworkManager;Landroid/net/NetworkInfo;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lc/NetworkManager;->a(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lc/NetworkManager;->c:Lvpadn/p;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lvpadn/w;

    sget-object v1, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {v0, v1, p1}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    .line 221
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lvpadn/w;->a(Z)V

    .line 222
    iget-object v1, p0, Lc/NetworkManager;->c:Lvpadn/p;

    invoke-virtual {v1, v0}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 224
    :cond_0
    iget-object v0, p0, Lc/NetworkManager;->webView:Lvpadn/f;

    const-string v1, "networkconnection"

    invoke-virtual {v0, v1, p1}, Lvpadn/f;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 225
    return-void
.end method

.method private b(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 199
    const-string v0, "none"

    .line 200
    if-eqz p1, :cond_0

    .line 202
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    const-string v0, "none"

    .line 209
    :cond_0
    :goto_0
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Connection Type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    return-object v0

    .line 206
    :cond_1
    invoke-direct {p0, p1}, Lc/NetworkManager;->c(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private c(Landroid/net/NetworkInfo;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 234
    if-eqz p1, :cond_6

    .line 235
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    const-string v0, "wifi"

    .line 266
    :goto_0
    return-object v0

    .line 240
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mobile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 241
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gsm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gprs"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 244
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "edge"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 245
    :cond_1
    const-string v0, "2g"

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cdma"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 248
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umts"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 249
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1xrtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 250
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ehrpd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 251
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hsupa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 252
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hsdpa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 253
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "hspa"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    :cond_3
    const-string v0, "3g"

    goto/16 :goto_0

    .line 256
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lte"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 257
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "umb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 258
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hspa+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 259
    :cond_5
    const-string v0, "4g"

    goto/16 :goto_0

    .line 264
    :cond_6
    const-string v0, "none"

    goto/16 :goto_0

    .line 266
    :cond_7
    const-string v0, "unknown"

    goto/16 :goto_0
.end method


# virtual methods
.method public execute(Ljava/lang/String;Lorg/json/JSONArray;Lvpadn/p;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 142
    const-string v1, "getConnectionInfo"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iput-object p3, p0, Lc/NetworkManager;->c:Lvpadn/p;

    .line 144
    iget-object v1, p0, Lc/NetworkManager;->a:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 145
    new-instance v2, Lvpadn/w;

    sget-object v3, Lvpadn/w$a;->b:Lvpadn/w$a;

    invoke-direct {p0, v1}, Lc/NetworkManager;->b(Landroid/net/NetworkInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lvpadn/w;-><init>(Lvpadn/w$a;Ljava/lang/String;)V

    .line 146
    invoke-virtual {v2, v0}, Lvpadn/w;->a(Z)V

    .line 147
    invoke-virtual {p3, v2}, Lvpadn/p;->a(Lvpadn/w;)V

    .line 150
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lvpadn/q;Lvpadn/f;)V
    .locals 4

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lvpadn/r;->initialize(Lvpadn/q;Lvpadn/f;)V

    .line 102
    invoke-interface {p1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lc/NetworkManager;->g:Landroid/content/Context;

    .line 103
    invoke-interface {p1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lc/NetworkManager;->a:Landroid/net/ConnectivityManager;

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lc/NetworkManager;->c:Lvpadn/p;

    .line 107
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 108
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lc/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lc/NetworkManager$1;

    invoke-direct {v1, p0}, Lc/NetworkManager$1;-><init>(Lc/NetworkManager;)V

    iput-object v1, p0, Lc/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    .line 122
    :try_start_0
    invoke-interface {p1}, Lvpadn/q;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lc/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lc/NetworkManager;->d:Z

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 123
    :catch_0
    move-exception v0

    .line 124
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NetworkManager.initialize method throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/NetworkManager;->d:Z

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    .line 157
    iget-object v0, p0, Lc/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lc/NetworkManager;->d:Z

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    iget-object v0, p0, Lc/NetworkManager;->g:Landroid/content/Context;

    iget-object v1, p0, Lc/NetworkManager;->b:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lc/NetworkManager;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "NetworkManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error unregistering network receiver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
