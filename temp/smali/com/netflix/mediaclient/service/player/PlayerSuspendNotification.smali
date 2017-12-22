.class public final Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;
.super Ljava/lang/Object;
.source "PlayerSuspendNotification.java"


# static fields
.field private static final NOTIFICATION_ID:I = 0x2

.field private static final PLAYER_SUSPEND_NOTIFICATION_ACTION_DELETE:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBrowseAgent:Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

.field private final mContext:Landroid/content/Context;

.field private final mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

.field private mMovieId:Ljava/lang/String;

.field private final mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

.field private mSecondaryTitle:Ljava/lang/String;

.field private mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/NetflixService;Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;Lcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    .line 55
    iput-object p3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mBrowseAgent:Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    .line 56
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->fetchImageWithLoader(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->show(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private createNotificationPendingIntentDelete()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x8000000

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createNotificationPendingIntentResume()Landroid/app/PendingIntent;
    .locals 5

    .prologue
    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    const-class v4, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v3, 0x20000000

    .line 198
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "playableid"

    iget-object v4, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mMovieId:Ljava/lang/String;

    .line 199
    invoke-static {v4}, Lcom/netflix/mediaclient/util/ParcelUtils;->validateString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 194
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private fetchImageWithLoader(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 123
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Loader url empty"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    if-eqz v0, :cond_1

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mImageLoader:Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v5, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$2;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$2;-><init>(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;)V

    move-object v1, p1

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    goto :goto_0

    .line 147
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "ImageLoader is null!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->show(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static getNotificationIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 212
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 213
    return-object v0
.end method

.method public static isDelete(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 216
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static notifyPlayerSuspendNotificationDelete(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 219
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.PLAYER_DELETE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 220
    return-void
.end method

.method private show(Landroid/graphics/Bitmap;)V
    .locals 7

    .prologue
    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 191
    :goto_0
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0901ac

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v2

    const/16 v3, 0x18

    if-lt v2, v3, :cond_1

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0901ad

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_1
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/app/Notification$Action;

    const v4, 0x7f02021f

    iget-object v5, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    .line 163
    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0901ae

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->createNotificationPendingIntentDelete()Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Landroid/app/Notification$Action;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 162
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 165
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0201b3

    .line 166
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    .line 167
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    .line 168
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 169
    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 170
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->createNotificationPendingIntentResume()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 171
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->createNotificationPendingIntentDelete()Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, -0x1

    .line 173
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 177
    if-eqz p1, :cond_2

    .line 178
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 182
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 183
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 189
    :goto_1
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/service/NetflixService;->requestForegroundForNotification(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 185
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 186
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1
.end method


# virtual methods
.method public cancelNotification()V
    .locals 3

    .prologue
    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mNetflixService:Lcom/netflix/mediaclient/service/NetflixService;

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/service/NetflixService;->requestBackgroundForNotification(IZ)V

    .line 121
    return-void
.end method

.method public showNotification(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 59
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    :goto_0
    return-void

    .line 62
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mMovieId:Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    new-instance v0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification$1;-><init>(Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;Ljava/lang/String;)V

    .line 91
    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mBrowseAgent:Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;

    invoke-interface {v1, p1, v0}, Lcom/netflix/mediaclient/service/ServiceAgent$BrowseAgentInterface;->fetchFalkorVideo(Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method

.method public showNotificationOffline(Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 94
    invoke-static {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmUtils;->getOfflineVideoDetails(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    move-result-object v0

    .line 95
    if-nez v0, :cond_0

    .line 96
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "VideoDetails is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    :goto_0
    return-void

    .line 100
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v1

    .line 101
    if-nez v1, :cond_1

    .line 102
    sget-object v0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Playable is null"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 105
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mMovieId:Ljava/lang/String;

    .line 106
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 107
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->EPISODE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v2, v3, :cond_2

    .line 108
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getParentTitle()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    .line 109
    iget-object v2, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f09010b

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 110
    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getEpisodeNumber()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v7

    const/4 v1, 0x2

    .line 111
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 109
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    .line 116
    :goto_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getBoxshotUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->fetchImageWithLoader(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_2
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mTitle:Ljava/lang/String;

    .line 114
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/netflix/mediaclient/service/player/PlayerSuspendNotification;->mSecondaryTitle:Ljava/lang/String;

    goto :goto_1
.end method
