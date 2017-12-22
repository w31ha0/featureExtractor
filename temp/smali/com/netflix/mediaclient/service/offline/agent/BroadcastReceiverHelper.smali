.class Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;
.super Ljava/lang/Object;
.source "BroadcastReceiverHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_offlineBroadcast"


# instance fields
.field private final mCommonBroadcastListener:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

.field private final mContext:Landroid/content/Context;

.field private mIsRegistered:Z

.field private final mPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserAgentBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$1;-><init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$3;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$3;-><init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mUserAgentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 138
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mContext:Landroid/content/Context;

    .line 139
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mWorkHandler:Landroid/os/Handler;

    .line 140
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mCommonBroadcastListener:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->onPlayerIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;)Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mCommonBroadcastListener:Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$BroadcastHelperListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->onUserAgentIntentReceived(Landroid/content/Intent;)V

    return-void
.end method

.method private onPlayerIntentReceived(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 52
    invoke-static {p1}, Lcom/netflix/mediaclient/util/IntentUtils;->getIntentActionOrNull(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 53
    if-nez v0, :cond_1

    .line 95
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    const-string/jumbo v1, "playbackType"

    .line 56
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;->fromValue(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;

    move-result-object v1

    .line 62
    if-eqz v1, :cond_0

    .line 65
    iget-object v2, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mWorkHandler:Landroid/os/Handler;

    new-instance v3, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;

    invoke-direct {v3, p0, v0, v1}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$2;-><init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IPlayer$PlaybackType;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private onUserAgentIntentReceived(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 106
    invoke-static {p1}, Lcom/netflix/mediaclient/util/IntentUtils;->getIntentActionOrNull(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 107
    if-nez v0, :cond_0

    .line 133
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mWorkHandler:Landroid/os/Handler;

    new-instance v2, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper$4;-><init>(Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 160
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mUserAgentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/IntentUtils;->unregisterSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mIsRegistered:Z

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mWorkHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public init()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 145
    iput-boolean v4, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mIsRegistered:Z

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mPlayerBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-array v2, v6, [Ljava/lang/String;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_START"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.LOCAL_PLAYER_PLAY_STOP"

    aput-object v3, v2, v4

    invoke-static {v0, v1, v7, v2}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 150
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/offline/agent/BroadcastReceiverHelper;->mUserAgentBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_ACTIVE"

    aput-object v3, v2, v5

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.NOTIFY_USER_ACCOUNT_DEACTIVE"

    aput-object v3, v2, v4

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.ACCOUNT_DATA_FETCHED"

    aput-object v3, v2, v6

    invoke-static {v0, v1, v7, v2}, Lcom/netflix/mediaclient/util/IntentUtils;->registerSafelyLocalBroadcastReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 154
    return-void
.end method
