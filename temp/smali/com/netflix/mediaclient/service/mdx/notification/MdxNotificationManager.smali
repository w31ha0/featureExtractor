.class public final Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;
.super Ljava/lang/Object;
.source "MdxNotificationManager.java"

# interfaces
.implements Lcom/netflix/mediaclient/service/mdx/notification/IMdxNotificationManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_mdxnotification"


# instance fields
.field private final context:Landroid/content/Context;

.field private isEpisode:Z

.field private isPlaying:Z

.field private isPostplay:Z

.field private final mNotificationId:I

.field private mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

.field private mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

.field private notificationManager:Landroid/app/NotificationManager;

.field private notificationPlayer:Landroid/app/Notification;

.field private notificationPostPlayer:Landroid/app/Notification;

.field private playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

.field private supportBigContent:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ZLcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 3

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/4 v0, 0x1

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mNotificationId:I

    .line 54
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

    .line 55
    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    .line 58
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->init()V

    .line 59
    invoke-direct {p0, p3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createRemoteViews(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V

    .line 60
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createBuilders()V

    .line 61
    return-void
.end method

.method private createBuilders()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createPlayerBuilder()V

    .line 109
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createPostPlayerBuilder()V

    .line 110
    return-void
.end method

.method private createNotificationPendingIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x0

    .line 232
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    const/4 v1, 0x0

    .line 235
    invoke-static {}, Lcom/netflix/mediaclient/service/NetflixService;->createShowMdxPlayerBroadcastIntent()Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x8000000

    .line 232
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    goto :goto_0
.end method

.method private createPlayerBuilder()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 121
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f020089

    .line 124
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 126
    return-void
.end method

.method private createPostPlayerBuilder()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 113
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f020089

    .line 116
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 117
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 118
    return-void
.end method

.method private createRemoteViews(Lcom/netflix/mediaclient/service/mdx/MdxAgent;)V
    .locals 4

    .prologue
    .line 103
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPlayerRemoteViews;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    .line 104
    new-instance v0, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    iget-object v3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxPostPlayerRemoteViews;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager$MdxNotificationIntentRetriever;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    .line 105
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->context:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    .line 65
    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->getAndroidVersion()I

    move-result v0

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->supportBigContent:Z

    .line 68
    :cond_0
    return-void
.end method

.method private setPlayerTitles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-nez v0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createNotificationPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 163
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 169
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setTitles(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method

.method private setPostPlayerTitles(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-nez v0, :cond_1

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->createNotificationPendingIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 179
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    if-eqz v0, :cond_2

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 185
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    invoke-virtual {v0, v1, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setTitles(ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_1
.end method

.method private updateNotification()V
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPostplay:Z

    if-eqz v0, :cond_0

    .line 241
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updatePostPlayerNotification()V

    .line 245
    :goto_0
    return-void

    .line 243
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updatePlayerNotification()V

    goto :goto_0
.end method

.method private updatePlayerNotification()V
    .locals 3

    .prologue
    .line 266
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPlaying:Z

    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPlayer:Landroid/app/Notification;

    .line 276
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->supportBigContent:Z

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPlayer:Landroid/app/Notification;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getRemoteViewBigContetnt()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 280
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPlayer:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private updatePostPlayerNotification()V
    .locals 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPlaying:Z

    if-nez v0, :cond_1

    .line 263
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getRemoteView()Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 256
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPostPlayer:Landroid/app/Notification;

    .line 258
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->supportBigContent:Z

    if-eqz v0, :cond_2

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPostPlayer:Landroid/app/Notification;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->getRemoteViewBigContetnt()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 262
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPostPlayer:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method


# virtual methods
.method public cancelNotification()V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationManager:Landroid/app/NotificationManager;

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
    const/4 v1, 0x1

    .line 130
    if-eqz p1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->postPlayerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPostPlayer:Landroid/app/Notification;

    .line 134
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPostPlayer:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    if-eqz v0, :cond_2

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->playerBuilder:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPlayer:Landroid/app/Notification;

    .line 139
    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->notificationPlayer:Landroid/app/Notification;

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    goto :goto_0
.end method

.method public isInPostPlay()Z
    .locals 1

    .prologue
    .line 72
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPostplay:Z

    return v0
.end method

.method public setBoxart(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 190
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-nez v0, :cond_1

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setBoxart(Landroid/graphics/Bitmap;)V

    .line 195
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setBoxart(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public setBoxartNotify(Landroid/graphics/Bitmap;)V
    .locals 0

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 204
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->setBoxart(Landroid/graphics/Bitmap;)V

    .line 205
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updateNotification()V

    goto :goto_0
.end method

.method public setPlayerStateNotify(ZZ)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-nez v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setState(ZZ)V

    .line 215
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updatePlayerNotification()V

    goto :goto_0
.end method

.method public setTitlesNotify(ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 149
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isEpisode:Z

    .line 150
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->setPlayerTitles(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->setPostPlayerTitles(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updateNotification()V

    .line 154
    return-void
.end method

.method public setUpNextStateNotify(ZZZ)V
    .locals 1

    .prologue
    .line 220
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setState(ZZ)V

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->mdxPostPlayerRemoteViews:Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxRemoteViews;->setState(ZZ)V

    .line 223
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->updateNotification()V

    .line 225
    :cond_0
    return-void
.end method

.method public startNotification(Landroid/app/Notification;Lcom/netflix/mediaclient/service/NetflixService;Z)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V

    .line 78
    if-nez p1, :cond_0

    .line 85
    :goto_0
    return-void

    .line 82
    :cond_0
    invoke-virtual {p2, v0, p1}, Lcom/netflix/mediaclient/service/NetflixService;->requestForegroundForNotification(ILandroid/app/Notification;)V

    .line 83
    iput-boolean p3, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPostplay:Z

    .line 84
    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPlaying:Z

    goto :goto_0
.end method

.method public stopNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 89
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->cancelNotification()V

    .line 90
    invoke-virtual {p1, v0, v0}, Lcom/netflix/mediaclient/service/NetflixService;->requestBackgroundForNotification(IZ)V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPlaying:Z

    .line 92
    return-void
.end method

.method public stopPostplayNotification(Lcom/netflix/mediaclient/service/NetflixService;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 96
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPostplay:Z

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p1, v1, v1}, Lcom/netflix/mediaclient/service/NetflixService;->requestBackgroundForNotification(IZ)V

    .line 98
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/notification/MdxNotificationManager;->isPlaying:Z

    .line 100
    :cond_0
    return-void
.end method
