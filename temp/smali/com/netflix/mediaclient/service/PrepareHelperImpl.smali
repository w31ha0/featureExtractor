.class public Lcom/netflix/mediaclient/service/PrepareHelperImpl;
.super Ljava/lang/Object;
.source "PrepareHelperImpl.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/interface_/PrepareHelper;


# static fields
.field private static final MAX_PENDING_REQUESTS_FOR_TTR:I = 0x14

.field private static final TAG:Ljava/lang/String; = "nf_prepareHelperImpl"

.field private static final TTR_TIME_OUT_MS:J = 0x2710L


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCurrentNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

.field private final mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

.field private final mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

.field private mTtrDone:Z

.field private mTtrPendingRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mTtrReceiver:Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;

.field private mTtrTimeOutHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/INetflixService;Lcom/netflix/mediaclient/service/player/PlayerAgent;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    .line 59
    iput-object p3, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->updateCurrentNetworkType()V

    .line 61
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/PrepareHelperImpl;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->processTtrPendingRequests()V

    return-void
.end method

.method private processTtrPendingRequests()V
    .locals 4

    .prologue
    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrDone:Z

    .line 162
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->unregisterReceiver()V

    .line 163
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->removeTtrTimeOutHandler()V

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrPendingRequests:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrPendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;

    .line 166
    iget-object v2, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mVideo:Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    iget-object v3, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPrefetchSource:Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;->mPlayContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-virtual {p0, v2, v3, v0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->playerPrepare(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrPendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrPendingRequests:Ljava/util/List;

    .line 171
    :cond_1
    return-void
.end method

.method private removeTtrTimeOutHandler()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrTimeOutHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrTimeOutHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 136
    iput-object v1, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrTimeOutHandler:Landroid/os/Handler;

    .line 138
    :cond_0
    return-void
.end method

.method private runTimerForTtrTimeOutIfNotRunning()V
    .locals 4

    .prologue
    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrTimeOutHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 149
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrTimeOutHandler:Landroid/os/Handler;

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrTimeOutHandler:Landroid/os/Handler;

    new-instance v1, Lcom/netflix/mediaclient/service/PrepareHelperImpl$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl$1;-><init>(Lcom/netflix/mediaclient/service/PrepareHelperImpl;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 157
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrReceiver:Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrReceiver:Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrReceiver:Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;

    .line 131
    :cond_0
    return-void
.end method

.method private updateCurrentNetworkType()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ConnectivityUtils;->getCurrentNetType(Landroid/content/Context;)Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mCurrentNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    .line 124
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->unregisterReceiver()V

    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->removeTtrTimeOutHandler()V

    .line 73
    return-void
.end method

.method public handleConnectivityChange()V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->updateCurrentNetworkType()V

    .line 120
    return-void
.end method

.method public init()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrReceiver:Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;

    if-nez v0, :cond_0

    .line 65
    new-instance v0, Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;

    invoke-direct {v0, p0, v5}, Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;-><init>(Lcom/netflix/mediaclient/service/PrepareHelperImpl;Lcom/netflix/mediaclient/service/PrepareHelperImpl$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrReceiver:Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;

    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrReceiver:Lcom/netflix/mediaclient/service/PrepareHelperImpl$TtrBroadcastReceiver;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string/jumbo v4, "com.netflix.mediaclient.intent.action.HOME_TTR_DONE"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v5, v2}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 68
    :cond_0
    return-void
.end method

.method public playerPrepare(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    .prologue
    .line 78
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mCurrentNetType:Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;

    invoke-virtual {p2, v0}, Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;->shouldSkipOnNetwork(Lcom/netflix/mediaclient/util/ConnectivityUtils$NetType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    :try_start_0
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/servicemgr/PlayerPrepareRequest;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/servicemgr/PlayerPrefetchSource;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrDone:Z

    if-nez v1, :cond_4

    .line 89
    iget-object v1, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrPendingRequests:Ljava/util/List;

    if-nez v1, :cond_2

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrPendingRequests:Ljava/util/List;

    .line 92
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrPendingRequests:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrPendingRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_3

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mTtrPendingRequests:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 97
    :cond_3
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->runTimerForTtrTimeOutIfNotRunning()V

    goto :goto_0

    .line 100
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 101
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getConfiguration()Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->isDisableCastFaststart()Z

    move-result v0

    if-nez v0, :cond_5

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mService:Lcom/netflix/mediaclient/servicemgr/INetflixService;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/INetflixService;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    .line 111
    if-eqz v0, :cond_5

    .line 112
    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IMdx;->prefetchVideo(Ljava/util/List;)V

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/PrepareHelperImpl;->mPlayerAgent:Lcom/netflix/mediaclient/service/player/PlayerAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/player/PlayerAgent;->getNrdpPlayer()Lcom/netflix/mediaclient/servicemgr/IPlayer;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer;->prepare(Ljava/util/List;)V

    goto :goto_0

    .line 84
    :catch_0
    move-exception v0

    goto :goto_0
.end method
