.class public Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;
.super Ljava/lang/Object;
.source "ChannelIdManager.java"


# static fields
.field public static final INTENT_CHANNELID_INQUIRY:Ljava/lang/String; = "com.netflix.partner.activation.intent.action.CHANNEL_ID_REQUEST"

.field public static final INTENT_CHANNELID_RESPONSE:Ljava/lang/String; = "com.netflix.partner.activation.intent.action.CHANNEL_ID_RESPONSE"

.field public static final INTENT_CHANNEL_ID_EXTRA_VALUE:Ljava/lang/String; = "channelId"

.field private static MAX_APP_LAUNCH_TRIES:I = 0x0

.field private static MAX_PER_APP_LAUNCH_TRIES:I = 0x0

.field private static final PERMISSION_CHANNEL_INQUIRY:Ljava/lang/String; = "com.netflix.partner.activation.permission.CHANNEL_ID"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppLaunchCheckCount:I

.field private mChannelId:Ljava/lang/String;

.field private mChannelIdReceiver:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentCheckCount:I

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 21
    const-class v0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->TAG:Ljava/lang/String;

    .line 22
    sput v1, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->MAX_PER_APP_LAUNCH_TRIES:I

    .line 23
    sput v1, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->MAX_APP_LAUNCH_TRIES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mContext:Landroid/content/Context;

    .line 42
    iput-object p2, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mHandler:Landroid/os/Handler;

    .line 44
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "channelIdValue"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getStringPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mChannelId:Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "channelIdAppLaunches"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->getIntPref(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mAppLaunchCheckCount:I

    .line 47
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mAppLaunchCheckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mAppLaunchCheckCount:I

    .line 48
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "channelIdAppLaunches"

    iget v2, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mAppLaunchCheckCount:I

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/util/PreferenceUtils;->putIntPref(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 50
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->shouldRequestChannelId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "need to request channelId"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->registerChannelIdReceiver()V

    .line 53
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mCurrentCheckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mCurrentCheckCount:I

    .line 54
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->requestActivationApkForChannelId()V

    .line 56
    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mChannelId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mChannelId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private haveTriedForManyAppLaunches()Z
    .locals 2

    .prologue
    .line 108
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mAppLaunchCheckCount:I

    sget v1, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->MAX_APP_LAUNCH_TRIES:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private haveTriedForManyTimes()Z
    .locals 2

    .prologue
    .line 112
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mCurrentCheckCount:I

    sget v1, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->MAX_PER_APP_LAUNCH_TRIES:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private registerChannelIdReceiver()V
    .locals 5

    .prologue
    .line 80
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;-><init>(Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mChannelIdReceiver:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;

    .line 81
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.netflix.partner.activation.intent.action.CHANNEL_ID_RESPONSE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mChannelIdReceiver:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;

    const-string/jumbo v3, "com.netflix.partner.activation.permission.CHANNEL_ID"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 84
    return-void
.end method

.method private requestActivationApkForChannelId()V
    .locals 5

    .prologue
    .line 116
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "inquiring for channelId appLaunchCount: %d(%d), currentCheckCount: %d(%d)"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mAppLaunchCheckCount:I

    .line 117
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->MAX_APP_LAUNCH_TRIES:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mCurrentCheckCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget v4, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->MAX_PER_APP_LAUNCH_TRIES:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 116
    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.partner.activation.intent.action.CHANNEL_ID_REQUEST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 122
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.netflix.partner.activation.permission.CHANNEL_ID"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 123
    return-void
.end method

.method private requestChannelIdIfNeeded()V
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->shouldRequestChannelId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    iget v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mCurrentCheckCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mCurrentCheckCount:I

    .line 75
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->requestActivationApkForChannelId()V

    .line 77
    :cond_0
    return-void
.end method

.method private shouldRequestChannelId()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 93
    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mChannelId:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 97
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->haveTriedForManyAppLaunches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 101
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->haveTriedForManyTimes()Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private unregisterChannelIdReceiver()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mChannelIdReceiver:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mChannelIdReceiver:Lcom/netflix/mediaclient/service/configuration/ChannelIdManager$ChannelIdReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->unregisterChannelIdReceiver()V

    .line 70
    return-void
.end method

.method public requestChannelId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "requestChannelId %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mChannelId:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 64
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->requestChannelIdIfNeeded()V

    .line 65
    iget-object v0, p0, Lcom/netflix/mediaclient/service/configuration/ChannelIdManager;->mChannelId:Ljava/lang/String;

    return-object v0
.end method
