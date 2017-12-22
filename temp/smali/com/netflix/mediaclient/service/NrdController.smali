.class public Lcom/netflix/mediaclient/service/NrdController;
.super Lcom/netflix/mediaclient/service/ServiceAgent;
.source "NrdController.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IMSLClient$AppbootTimeUpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_nrdcontroller"


# instance fields
.field private mNrdJsCmdReceiver:Lcom/netflix/mediaclient/service/NrdController$NrdJSCmdReceiver;

.field private nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

.field private nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;-><init>()V

    .line 76
    new-instance v0, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/NrdController$NrdBridge;-><init>(Lcom/netflix/mediaclient/service/NrdController;Lcom/netflix/mediaclient/service/NrdController$1;)V

    invoke-static {v0}, Lcom/netflix/mediaclient/javabridge/NrdProxyFactory;->createInstance(Lcom/netflix/mediaclient/javabridge/Bridge;)Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NrdpWrapper;-><init>(Lcom/netflix/mediaclient/javabridge/NrdProxy;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    .line 78
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/ui/Nrdp;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/NrdController;)Lcom/netflix/mediaclient/javabridge/NrdProxy;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    return-object v0
.end method

.method private initializeNrdLib()V
    .locals 7

    .prologue
    .line 133
    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "Initialize NRD bridge first"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->init(Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "NRD bridge initialization done"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "Start listening for updates from NRDLIb"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    const-string/jumbo v1, "init"

    new-instance v2, Lcom/netflix/mediaclient/service/NrdController$1;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/service/NrdController$1;-><init>(Lcom/netflix/mediaclient/service/NrdController;)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Nrdp;->addEventListener(Ljava/lang/String;Lcom/netflix/mediaclient/javabridge/ui/EventListener;)V

    .line 168
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->connect()V

    .line 170
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->getServerTimeAtAppboot()J

    move-result-wide v0

    .line 174
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 175
    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "setting AppbootTimeListener"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getMSLClient()Lcom/netflix/mediaclient/servicemgr/IMSLClient;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/netflix/mediaclient/servicemgr/IMSLClient;->setAppbootTimeListener(Lcom/netflix/mediaclient/servicemgr/IMSLClient$AppbootTimeUpdateListener;)V

    .line 184
    :cond_0
    :goto_0
    return-void

    .line 178
    :cond_1
    const-string/jumbo v2, "nf_nrdcontroller"

    const-string/jumbo v3, "Setting serverTime: %d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 179
    iget-object v2, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    if-eqz v2, :cond_0

    .line 180
    iget-object v2, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    new-instance v3, Lcom/netflix/mediaclient/javabridge/invoke/android/SetServerTime;

    invoke-direct {v3, v0, v1}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetServerTime;-><init>(J)V

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    goto :goto_0
.end method

.method private loadNrdLib()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 113
    :try_start_0
    invoke-static {}, Lcom/netflix/mediaclient/repository/SecurityRepository;->isLoaded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 114
    const-string/jumbo v1, "nf_nrdcontroller"

    const-string/jumbo v2, "Native libraries failed to load. Probably not enough space left on device."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :goto_0
    return v0

    .line 118
    :cond_0
    const-string/jumbo v1, "nf_nrdcontroller"

    const-string/jumbo v2, "Initializing NrdLib"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NrdController;->initializeNrdLib()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    const/4 v0, 0x1

    goto :goto_0

    .line 121
    :catch_0
    move-exception v1

    .line 122
    const-string/jumbo v2, "nf_nrdcontroller"

    const-string/jumbo v3, "Failed to initiate NRDLib"

    invoke-static {v2, v3, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private postNrdInit()V
    .locals 3

    .prologue
    .line 188
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->getDeviceLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NrdController;->setDeviceLocale(Ljava/util/Locale;)V

    .line 190
    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "Sets IP address and interface"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/mdx/InterfaceChanged;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/javabridge/invoke/mdx/InterfaceChanged;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 192
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->mNrdJsCmdReceiver:Lcom/netflix/mediaclient/service/NrdController$NrdJSCmdReceiver;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController;->mNrdJsCmdReceiver:Lcom/netflix/mediaclient/service/NrdController$NrdJSCmdReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->disconnect()V

    .line 103
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->destroy()V

    .line 104
    iput-object v2, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    .line 106
    :cond_1
    iput-object v2, p0, Lcom/netflix/mediaclient/service/NrdController;->nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    .line 108
    invoke-super {p0}, Lcom/netflix/mediaclient/service/ServiceAgent;->destroy()V

    .line 109
    return-void
.end method

.method protected doInit()V
    .locals 2

    .prologue
    .line 82
    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "NrdController starting doInit"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/NrdController;->loadNrdLib()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->NRD_ERROR:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/NrdController;->initCompleted(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 93
    :cond_0
    return-void
.end method

.method public getNrdp()Lcom/netflix/mediaclient/javabridge/ui/Nrdp;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrdp:Lcom/netflix/mediaclient/javabridge/ui/Nrdp;

    return-object v0
.end method

.method public handleConnectivityChange()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/NrdController;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/javabridge/transport/NativeTransport;->setUpdatedNetworkInterfaces(Landroid/content/Context;)V

    .line 217
    :cond_0
    return-void
.end method

.method public setDeviceLocale(Ljava/util/Locale;)V
    .locals 4

    .prologue
    .line 199
    if-nez p1, :cond_1

    .line 209
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->toUserLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 204
    const-string/jumbo v1, "nf_nrdcontroller"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Sets device language to JNI to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    new-instance v2, Lcom/netflix/mediaclient/javabridge/invoke/android/SetLanguage;

    invoke-direct {v2, v0}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetLanguage;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    goto :goto_0
.end method

.method public updatedServerTime(J)V
    .locals 5

    .prologue
    .line 221
    const-string/jumbo v0, "nf_nrdcontroller"

    const-string/jumbo v1, "updatedServerTime %d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 222
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/netflix/mediaclient/service/NrdController;->nrd:Lcom/netflix/mediaclient/javabridge/NrdProxy;

    new-instance v1, Lcom/netflix/mediaclient/javabridge/invoke/android/SetServerTime;

    invoke-direct {v1, p1, p2}, Lcom/netflix/mediaclient/javabridge/invoke/android/SetServerTime;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    .line 225
    :cond_0
    return-void
.end method
