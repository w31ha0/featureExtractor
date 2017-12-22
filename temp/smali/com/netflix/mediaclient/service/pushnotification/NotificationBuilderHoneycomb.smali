.class public Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;
.super Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilder;
.source "NotificationBuilderHoneycomb.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilder;-><init>()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Landroid/app/Notification$Builder;I)V
    .locals 0

    .prologue
    .line 30
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;->send(Landroid/content/Context;Landroid/app/Notification$Builder;I)V

    return-void
.end method

.method public static createNotification(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;Lcom/netflix/mediaclient/util/gfx/ImageLoader;I)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 53
    invoke-virtual {p1}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getWhen()J

    move-result-wide v0

    .line 54
    const v2, 0x7f090068

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {p1, v2}, Lcom/netflix/mediaclient/service/pushnotification/Payload;->getTicker(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 57
    const v5, 0x7f0201b3

    .line 59
    new-instance v6, Landroid/app/Notification$Builder;

    invoke-direct {v6, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;->getNotificationOpenedIntent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 61
    invoke-static {p0, p1}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;->getNotificationCanceledIntent(Landroid/content/Context;Lcom/netflix/mediaclient/service/pushnotification/Payload;)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 62
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 63
    const/4 v4, 0x1

    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 64
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 65
    iget-object v2, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->text:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 67
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 68
    invoke-virtual {v6, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 70
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->sound:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilder;->isSoundEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->sound:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilder;->getSound(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v6, v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;I)Landroid/app/Notification$Builder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :cond_0
    :goto_0
    iget-object v0, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->largeIcon:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    .line 80
    iget-object v1, p1, Lcom/netflix/mediaclient/service/pushnotification/Payload;->largeIcon:Ljava/lang/String;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v5, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;

    invoke-direct {v5, p1, v6, p0, p3}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb$1;-><init>(Lcom/netflix/mediaclient/service/pushnotification/Payload;Landroid/app/Notification$Builder;Landroid/content/Context;I)V

    move-object v0, p2

    move v4, v3

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->getImg(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;IILcom/netflix/mediaclient/util/gfx/ImageLoader$ImageLoaderListener;)V

    .line 109
    :goto_1
    return-void

    .line 73
    :catch_0
    move-exception v0

    .line 74
    const-string/jumbo v1, "nf_push"

    const-string/jumbo v2, "Failed to get notification sound URL!"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 105
    :cond_1
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Icon was not set"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    invoke-static {p0, v6, p3}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;->send(Landroid/content/Context;Landroid/app/Notification$Builder;I)V

    goto :goto_1
.end method

.method private static send(Landroid/content/Context;Landroid/app/Notification$Builder;I)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 116
    invoke-static {p0, v0, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationBuilderHoneycomb;->sendNotification(Landroid/content/Context;Landroid/app/Notification;I)V

    .line 117
    return-void
.end method
