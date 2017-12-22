.class public Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;
.super Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;
.source "NotificationBuilderJellyBean.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;-><init>()V

    .line 37
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->addBigView(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    return-void
.end method

.method private static addBigPicture(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$BigPictureStyle;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->largeIcon:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p4, :cond_0

    .line 173
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewPicture:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v5, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;

    invoke-direct {v5, p1, p2, p0, p3}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$2;-><init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$BigPictureStyle;Landroid/content/Context;I)V

    move-object v0, p4

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    .line 205
    :goto_0
    return-void

    .line 201
    :cond_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Large picture view was not set"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p2}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 203
    invoke-static {p0, v0, p3}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->sendNotification(Landroid/content/Context;Landroid/app/Notification;I)V

    goto :goto_0
.end method

.method private static addBigView(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V
    .locals 2

    .prologue
    .line 137
    .line 138
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewPicture:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    new-instance v0, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v0, p2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 142
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewSummary:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 145
    :cond_0
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewTitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 148
    :cond_1
    invoke-static {p0, p1, v0, p3, p4}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->addBigPicture(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$BigPictureStyle;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    .line 167
    :goto_0
    return-void

    .line 150
    :cond_2
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewText:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 152
    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0, p2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 153
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 154
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewSummary:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 155
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewSummary:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 157
    :cond_3
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewTitle:Ljava/lang/String;

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 158
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->bigViewTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 160
    :cond_4
    invoke-virtual {v0}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v0

    .line 161
    invoke-static {p0, v0, p3}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->sendNotification(Landroid/content/Context;Landroid/app/Notification;I)V

    goto :goto_0

    .line 164
    :cond_5
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 165
    invoke-static {p0, v0, p3}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->sendNotification(Landroid/content/Context;Landroid/app/Notification;I)V

    goto :goto_0
.end method

.method public static createNotification(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Lcom/netflix/mediaclient/util/gfx/ImageLoader;I)V
    .locals 9

    .prologue
    const/4 v6, 0x0

    .line 50
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getWhen()J

    move-result-wide v0

    .line 51
    const v2, 0x7f090068

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 52
    invoke-virtual {p1, v3}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getTicker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 54
    const v5, 0x7f0201b3

    .line 56
    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->getNotificationOpenedIntent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 59
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->getNotificationCanceledIntent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 61
    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 62
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 63
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 64
    iget-object v3, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 66
    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 67
    invoke-virtual {v2, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 69
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->sound:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilder;->isSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    :try_start_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->sound:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilder;->getSound(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v2, v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->subtext:Ljava/lang/String;

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 79
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getActions()[Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;

    move-result-object v1

    .line 80
    array-length v3, v1

    move v0, v6

    :goto_1
    if-ge v0, v3, :cond_2

    aget-object v4, v1, v0

    .line 82
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;->getPayload()Landroid/net/Uri;

    move-result-object v5

    .line 83
    if-eqz v5, :cond_1

    .line 84
    invoke-virtual {v4}, Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;->getIcon()I

    move-result v7

    iget-object v4, v4, Lcom/netflix/mediaclient/service/pushnotification/Payload$Action;->text:Ljava/lang/String;

    invoke-static {p0, v5, p1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->getNotificationOpenedIntent(Landroid/content/Context;Landroid/net/Uri;Lcom/netflix/mediaclient/service/pushnotification/Payload;)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v2, v7, v4, v5}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 80
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v3, "Failed to get notification sound URL!"

    invoke-static {v1, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 88
    :cond_2
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->largeIcon:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    if-eqz p2, :cond_3

    .line 90
    iget-object v7, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->largeIcon:Ljava/lang/String;

    sget-object v8, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v0, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;

    move-object v1, p1

    move-object v3, p0

    move v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean$1;-><init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;Landroid/content/Context;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    move-object v1, p2

    move-object v2, v7

    move-object v3, v8

    move v4, v6

    move v5, v6

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    .line 133
    :goto_2
    return-void

    .line 128
    :cond_3
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Icon was not set"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    invoke-static {p0, p1, v2, p3, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderJellyBean;->addBigView(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;ILcom/netflix/mediaclient/util/gfx/ImageLoader;)V

    goto :goto_2
.end method
