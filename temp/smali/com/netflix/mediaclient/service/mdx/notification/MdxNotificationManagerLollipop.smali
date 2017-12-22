.class public final Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;
.super Ljava/lang/Object;
.source "MdxNotificationManagerLollipop.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdxnotification"


# instance fields
.field private boxart:Landroid/graphics/Bitmap;

.field private builder:Landroid/app/Notification$Builder;

.field private final builderFactory:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;

.field private final context:Landroid/content/Context;

.field private isEpisode:Z

.field private isPlaying:Z

.field private isPostplay:Z

.field private final mNotificationId:I

.field private mainTitle:Ljava/lang/String;

.field private final mdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

.field private final mediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

.field private notification:Landroid/app/Notification;

.field private notificationManager:Landroid/app/NotificationManager;

.field private runningServiceNotificationId:I

.field private secondTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/netflix/mediaclient/service/mdx/MdxAgent;Lcom/netflix/mediaclient/service/mdx/MediaSessionController;)V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->mNotificationId:I

    .line 43
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;-><init>(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builderFactory:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;

    .line 66
    const-string/jumbo v0, "nf_mdxnotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "is episode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isEpisode:Z

    .line 68
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->context:Landroid/content/Context;

    .line 69
    iput-object p3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->mdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    .line 70
    iput-object p4, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->mediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    .line 72
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->init()V

    .line 73
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->createInitialBuilder()V

    .line 74
    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Lcom/netflix/mediaclient/service/mdx/MdxAgent;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->mdxAgent:Lcom/netflix/mediaclient/service/mdx/MdxAgent;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/app/Notification$MediaStyle;
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->getStyle()Landroid/app/Notification$MediaStyle;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->context:Landroid/content/Context;

    return-object v0
.end method

.method private createInitialBuilder()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builderFactory:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;

    invoke-virtual {v0, v1, v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->getBuilder(ZZ)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    .line 120
    return-void
.end method

.method private createNotificationPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    .line 238
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 241
    invoke-static {}, Lcom/netflix/mediaclient/service/NetflixService;->createShowMdxPlayerBroadcastIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 238
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method private getDefaultBoxArt()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0201d5

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getStyle()Landroid/app/Notification$MediaStyle;
    .locals 3

    .prologue
    .line 338
    new-instance v0, Landroid/app/Notification$MediaStyle;

    invoke-direct {v0}, Landroid/app/Notification$MediaStyle;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/app/Notification$MediaStyle;->setShowActionsInCompactView([I)Landroid/app/Notification$MediaStyle;

    move-result-object v0

    .line 340
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->mediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->mediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->getMediaSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 341
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->mediaSessionController:Lcom/netflix/mediaclient/service/mdx/MediaSessionController;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/MediaSessionController;->getMediaSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$MediaStyle;->setMediaSession(Landroid/media/session/MediaSession$Token;)Landroid/app/Notification$MediaStyle;

    .line 346
    :goto_0
    return-object v0

    .line 343
    :cond_0
    const-string/jumbo v1, "SPY-7597 - Got null mediaSessionController for MdxNotificationManagerLollipop"

    .line 344
    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/netflix/mediaclient/service/logging/error/ErrorLoggingManager;->logHandledException(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 338
    nop

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method private init()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->context:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notificationManager:Landroid/app/NotificationManager;

    .line 78
    return-void
.end method

.method private notifyChange()V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->boxart:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    .line 159
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->getDefaultBoxArt()Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->boxart:Landroid/graphics/Bitmap;

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->boxart:Landroid/graphics/Bitmap;

    if-nez v0, :cond_4

    .line 163
    const-string/jumbo v0, "nf_mdxnotification"

    const-string/jumbo v1, "We failed to decode resource!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->mainTitle:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->mainTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 172
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->secondTitle:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->secondTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 174
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isPostplay:Z

    if-eqz v0, :cond_5

    .line 175
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09012f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 176
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 182
    :goto_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    const v1, 0x7f0201b3

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 183
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notification:Landroid/app/Notification;

    .line 184
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->boxart:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->createSquaredBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1

    .line 178
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_2
.end method

.method private setPlayerTitles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    if-nez v0, :cond_0

    .line 200
    :goto_0
    return-void

    .line 192
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->mainTitle:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->secondTitle:Ljava/lang/String;

    .line 195
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isEpisode:Z

    if-eqz v0, :cond_1

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0
.end method

.method private updateNotification(ZZZ)V
    .locals 0

    .prologue
    .line 246
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->updatePlayerNotification(ZZZ)V

    .line 247
    return-void
.end method

.method private updatePlayerNotification(ZZZ)V
    .locals 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isPlaying:Z

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 256
    :cond_1
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isPostplay:Z

    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builderFactory:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;

    invoke-virtual {v0, p3, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->getBuilder(ZZ)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    .line 258
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->createNotificationPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 259
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notifyChange()V

    goto :goto_0
.end method


# virtual methods
.method public cancelNotification()V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public getNotification(Z)Landroid/util/Pair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isPostplay:Z

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builderFactory:Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop$BuilderFactory;->getBuilder(ZZ)Landroid/app/Notification$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->builder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notification:Landroid/app/Notification;

    .line 131
    :cond_0
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notification:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public isInPostPlay()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isPostplay:Z

    return v0
.end method

.method public setBoxart(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 209
    :goto_0
    return-void

    .line 208
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->boxart:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public setBoxartNotify(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 213
    if-nez p1, :cond_0

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->setBoxart(Landroid/graphics/Bitmap;)V

    .line 218
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notifyChange()V

    goto :goto_0
.end method

.method public setPlayerStateNotify(ZZ)V
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->updatePlayerNotification(ZZZ)V

    .line 224
    return-void
.end method

.method public setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 140
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isEpisode:Z

    .line 141
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->setPlayerTitles(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->notifyChange()V

    .line 143
    return-void
.end method

.method public setUpNextStateNotify(ZZZ)V
    .locals 0

    .prologue
    .line 228
    if-eqz p3, :cond_0

    .line 229
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->updateNotification(ZZZ)V

    .line 231
    :cond_0
    return-void
.end method

.method public startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 87
    if-nez p1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->runningServiceNotificationId:I

    if-eq v1, v0, :cond_1

    .line 94
    invoke-virtual {p2, v1, p1}, Lcom/netflix/mediaclient/service/NetflixService;->requestForegroundForNotification(ILandroid/app/Notification;)V

    .line 95
    iput v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->runningServiceNotificationId:I

    .line 97
    :cond_1
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isPostplay:Z

    .line 98
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isPlaying:Z

    goto :goto_0
.end method

.method public stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->cancelNotification()V

    .line 104
    invoke-virtual {p1, v1, v1}, Lcom/netflix/mediaclient/service/NetflixService;->requestBackgroundForNotification(IZ)V

    .line 105
    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->runningServiceNotificationId:I

    .line 106
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isPlaying:Z

    .line 107
    return-void
.end method

.method public stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isPostplay:Z

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1, v2, v2}, Lcom/netflix/mediaclient/service/NetflixService;->requestBackgroundForNotification(IZ)V

    .line 113
    iput v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->runningServiceNotificationId:I

    .line 114
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManagerLollipop;->isPlaying:Z

    .line 116
    :cond_0
    return-void
.end method
