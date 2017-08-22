.class public Lvpadn/bs;
.super Ljava/lang/Object;
.source "VponWiFi.java"


# static fields
.field private static a:Lvpadn/bs;

.field private static b:Ljava/lang/String;

.field private static c:I

.field private static d:I

.field private static e:Ljava/lang/String;


# instance fields
.field private f:Z

.field private g:Landroid/content/Context;

.field private h:Landroid/net/wifi/WifiInfo;

.field private i:Landroid/net/wifi/WifiManager$WifiLock;

.field private j:Landroid/net/wifi/WifiManager;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private n:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    sput-object v1, Lvpadn/bs;->a:Lvpadn/bs;

    .line 32
    sput-object v1, Lvpadn/bs;->b:Ljava/lang/String;

    .line 33
    const/16 v0, 0xa

    sput v0, Lvpadn/bs;->c:I

    .line 34
    const/4 v0, 0x5

    sput v0, Lvpadn/bs;->d:I

    .line 35
    sput-object v1, Lvpadn/bs;->e:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/bs;->f:Z

    .line 37
    iput-object v1, p0, Lvpadn/bs;->g:Landroid/content/Context;

    .line 38
    iput-object v1, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    .line 39
    iput-object v1, p0, Lvpadn/bs;->i:Landroid/net/wifi/WifiManager$WifiLock;

    .line 40
    iput-object v1, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    .line 41
    iput-object v1, p0, Lvpadn/bs;->k:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lvpadn/bs;->l:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lvpadn/bs;->m:Ljava/util/List;

    .line 45
    new-instance v0, Lvpadn/bs$1;

    invoke-direct {v0, p0}, Lvpadn/bs$1;-><init>(Lvpadn/bs;)V

    iput-object v0, p0, Lvpadn/bs;->n:Landroid/content/BroadcastReceiver;

    .line 114
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] Enter VponWiFi ctor"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    :try_start_0
    iput-object p1, p0, Lvpadn/bs;->g:Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lvpadn/bs;->g:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    .line 118
    iget-object v0, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    .line 119
    iget-object v0, p0, Lvpadn/bs;->g:Landroid/content/Context;

    iget-object v1, p0, Lvpadn/bs;->n:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/bs;->f:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 126
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] VponWiFi ctor Fail because don\'t have ACCESS_WiFi_State Permission"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 123
    :catch_1
    move-exception v0

    .line 124
    const-string v1, "VponWiFi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[wireless] VponWiFi ctor throw Exception:"

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

.method static synthetic a(Lvpadn/bs;)Landroid/net/wifi/WifiManager;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method public static declared-synchronized a(I)V
    .locals 2

    .prologue
    .line 383
    const-class v0, Lvpadn/bs;

    monitor-enter v0

    :try_start_0
    sput p0, Lvpadn/bs;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    monitor-exit v0

    return-void

    .line 383
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 367
    const-class v0, Lvpadn/bs;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lvpadn/bs;->b:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 368
    monitor-exit v0

    return-void

    .line 367
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 143
    iget-object v0, p0, Lvpadn/bs;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 144
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lvpadn/bs;->c:I

    if-ge v1, v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 145
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "wifi_bssid"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 146
    iget-object v2, p0, Lvpadn/bs;->l:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 148
    :cond_0
    return-void
.end method

.method static synthetic a(Lvpadn/bs;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lvpadn/bs;->c(Ljava/util/List;)V

    return-void
.end method

.method static synthetic b(Lvpadn/bs;)Ljava/util/List;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lvpadn/bs;->m:Ljava/util/List;

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lvpadn/bs;
    .locals 2

    .prologue
    .line 129
    sget-object v0, Lvpadn/bs;->a:Lvpadn/bs;

    if-nez v0, :cond_1

    .line 130
    const-class v1, Lvpadn/bs;

    monitor-enter v1

    .line 131
    :try_start_0
    sget-object v0, Lvpadn/bs;->a:Lvpadn/bs;

    if-nez v0, :cond_0

    .line 132
    new-instance v0, Lvpadn/bs;

    invoke-direct {v0, p0}, Lvpadn/bs;-><init>(Landroid/content/Context;)V

    sput-object v0, Lvpadn/bs;->a:Lvpadn/bs;

    .line 134
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :goto_0
    sget-object v0, Lvpadn/bs;->a:Lvpadn/bs;

    return-object v0

    .line 134
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 136
    :cond_1
    sget-object v0, Lvpadn/bs;->a:Lvpadn/bs;

    invoke-virtual {v0, p0}, Lvpadn/bs;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static declared-synchronized b(I)V
    .locals 2

    .prologue
    .line 399
    const-class v0, Lvpadn/bs;

    monitor-enter v0

    :try_start_0
    sput p0, Lvpadn/bs;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 400
    monitor-exit v0

    return-void

    .line 399
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private b(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 151
    iget-object v0, p0, Lvpadn/bs;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 152
    invoke-direct {p0, p1}, Lvpadn/bs;->a(Ljava/util/List;)V

    move v2, v4

    .line 171
    :cond_0
    :goto_0
    return v2

    :cond_1
    move v1, v2

    move v3, v2

    .line 158
    :goto_1
    sget v0, Lvpadn/bs;->c:I

    if-ge v1, v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 159
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v5, "wifi_bssid"

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 160
    iget-object v5, p0, Lvpadn/bs;->l:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    add-int/lit8 v3, v3, 0x1

    .line 158
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 165
    :cond_3
    invoke-direct {p0, p1}, Lvpadn/bs;->a(Ljava/util/List;)V

    .line 167
    sget v0, Lvpadn/bs;->d:I

    if-ge v3, v0, :cond_0

    move v2, v4

    .line 171
    goto :goto_0
.end method

.method private c(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 175
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] call sendRequestToServer"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-direct {p0, p1}, Lvpadn/bs;->b(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] isNewEnvWiFis(regionalEnvWiFis) return false."

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    :goto_0
    return-void

    .line 180
    :cond_0
    sget-object v0, Lvpadn/bs;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 181
    invoke-static {}, Lvpadn/aw;->a()Lvpadn/aw;

    move-result-object v0

    const-string v1, "user-agent"

    invoke-virtual {v0, v1}, Lvpadn/aw;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lvpadn/bs;->e:Ljava/lang/String;

    .line 182
    new-instance v0, Lvpadn/al;

    sget-object v1, Lvpadn/bs;->b:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lvpadn/bs;->g:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lvpadn/bs;->e:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-direct {v0, v1, p1, v2}, Lvpadn/al;-><init>(Ljava/lang/String;Ljava/util/List;[Ljava/lang/Object;)V

    .line 186
    invoke-static {v0}, Lvpadn/be;->a(Landroid/os/AsyncTask;)V

    goto :goto_0

    .line 188
    :cond_1
    const-string v0, "VponWiFi"

    const-string v1, "mScanWifiUrl == null"

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static i()I
    .locals 1

    .prologue
    .line 371
    sget v0, Lvpadn/bs;->c:I

    return v0
.end method

.method public static j()I
    .locals 1

    .prologue
    .line 387
    sget v0, Lvpadn/bs;->d:I

    return v0
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    const/4 v0, 0x1

    .line 217
    iget-object v3, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-nez v3, :cond_1

    .line 219
    const/4 v0, 0x0

    .line 231
    :cond_0
    :goto_0
    return v0

    .line 220
    :cond_1
    iget-object v3, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v0, :cond_0

    .line 223
    iget-object v0, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    .line 225
    goto :goto_0

    .line 226
    :cond_2
    iget-object v0, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    .line 228
    goto :goto_0

    .line 231
    :cond_3
    const/4 v0, 0x4

    goto :goto_0
.end method

.method declared-synchronized a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lvpadn/bs;->g:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lvpadn/bs;->g:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq p1, v0, :cond_2

    .line 95
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lvpadn/bs;->f:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/bs;->g:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 96
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] call changeContext unregisterReceiver"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lvpadn/bs;->g:Landroid/content/Context;

    iget-object v1, p0, Lvpadn/bs;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/bs;->f:Z

    .line 101
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lvpadn/bs;->g:Landroid/content/Context;

    .line 102
    iput-object p1, p0, Lvpadn/bs;->g:Landroid/content/Context;

    .line 104
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] call changeContext registerReceiver"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lvpadn/bs;->g:Landroid/content/Context;

    iget-object v1, p0, Lvpadn/bs;->n:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/bs;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    :try_start_2
    const-string v1, "VponWiFi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[wireless] changeContext throw Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b()V
    .locals 4

    .prologue
    .line 239
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] wifiScanner!!!"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :try_start_0
    iget-boolean v0, p0, Lvpadn/bs;->f:Z

    if-nez v0, :cond_0

    .line 242
    iget-object v0, p0, Lvpadn/bs;->g:Landroid/content/Context;

    iget-object v1, p0, Lvpadn/bs;->n:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.wifi.SCAN_RESULTS"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 243
    const/4 v0, 0x1

    iput-boolean v0, p0, Lvpadn/bs;->f:Z

    .line 245
    :cond_0
    iget-object v0, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    :goto_0
    return-void

    .line 246
    :catch_0
    move-exception v0

    .line 247
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] scan environment wifi Fail because don\'t have CHANGE_WIFI_STATE Permission"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 248
    :catch_1
    move-exception v0

    .line 249
    const-string v1, "VponWiFi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[wireless] VponWiFi scan throw Exception: "

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

.method public c()V
    .locals 2

    .prologue
    .line 266
    :try_start_0
    iget-object v0, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    :cond_0
    :goto_0
    return-void

    .line 269
    :catch_0
    move-exception v0

    .line 270
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] VponWiFi ctor Fail because don\'t have ACCESS_WiFi_State Permission"

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    if-eqz v0, :cond_0

    .line 292
    const/4 v0, 0x1

    .line 295
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 317
    iget-object v0, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    iget-object v1, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    if-nez v1, :cond_0

    const-string v0, "null"

    :cond_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public g()I
    .locals 2

    .prologue
    .line 336
    iget-object v0, p0, Lvpadn/bs;->j:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lvpadn/bs;->h:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    goto :goto_0
.end method

.method public declared-synchronized k()V
    .locals 4

    .prologue
    .line 403
    monitor-enter p0

    :try_start_0
    const-string v0, "VponWiFi"

    const-string v1, "[wireless] call VponWiFi onDestroy"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 405
    :try_start_1
    iget-boolean v0, p0, Lvpadn/bs;->f:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lvpadn/bs;->g:Landroid/content/Context;

    iget-object v1, p0, Lvpadn/bs;->n:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 407
    const/4 v0, 0x0

    iput-boolean v0, p0, Lvpadn/bs;->f:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 412
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 409
    :catch_0
    move-exception v0

    .line 410
    :try_start_2
    const-string v1, "VponWiFi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[wireless] VponWiFi onDestroy throw Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 403
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
