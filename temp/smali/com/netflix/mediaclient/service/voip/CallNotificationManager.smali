.class Lcom/netflix/mediaclient/service/voip/CallNotificationManager;
.super Ljava/lang/Object;
.source "CallNotificationManager.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "InlinedApi"
    }
.end annotation


# static fields
.field private static final CALL_NOTIFICATION_ACTION_CANCEL:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.CALL_CANCEL"

.field private static final NOTIFICATION_ID:I = 0x14

.field private static final TAG:Ljava/lang/String; = "nf_voip"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    .line 42
    return-void
.end method

.method private createNotification(Z)Landroid/app/Notification;
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    const v1, 0x7f0900ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    const v4, 0x7f0900ed

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0900ee

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 106
    :goto_0
    new-instance v5, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v6, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 107
    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 108
    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 109
    invoke-virtual {v5, v7}, Landroid/support/v4/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const-string/jumbo v6, "call"

    .line 110
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const v6, 0x7f0201be

    .line 111
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 112
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->getLargeIcon()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    const/4 v6, 0x2

    .line 113
    invoke-virtual {v5, v6}, Landroid/support/v4/app/NotificationCompat$Builder;->setPriority(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 114
    invoke-virtual {v5, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v5

    .line 115
    invoke-virtual {v5, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 117
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->createNotificationPendingIntentResume()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 118
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->createNotificationPendingIntentDelete()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0200d4

    .line 119
    invoke-direct {p0}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->createNotificationPendingIntentDelete()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v0, v1, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 120
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0, v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;->setUsesChronometer(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 125
    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 127
    iget-object v1, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v2, 0x14

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 128
    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    const v5, 0x7f0900ef

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private createNotificationPendingIntentDelete()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.CALL_CANCEL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "com.netflix.mediaclient.intent.category.VOIP"

    .line 146
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 143
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private createNotificationPendingIntentResume()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/voip/ContactUsActivity;->createStartIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    const/high16 v3, 0x10000000

    .line 136
    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private getLargeIcon()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02019c

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static getNotificationIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .prologue
    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 152
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.CALL_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.VOIP"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 154
    const/16 v1, 0x3e7

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 155
    return-object v0
.end method

.method public static isDelete(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 159
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.CALL_CANCEL"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method cancelNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 80
    const-string/jumbo v0, "nf_voip"

    const-string/jumbo v1, "Cancel notification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 84
    new-instance v0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$3;

    invoke-direct {v0, p0, p1}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$3;-><init>(Lcom/netflix/mediaclient/service/voip/CallNotificationManager;Lcom/netflix/mediaclient/service/NetflixService;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method showCallingNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->createNotification(Z)Landroid/app/Notification;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$1;-><init>(Lcom/netflix/mediaclient/service/voip/CallNotificationManager;Lcom/netflix/mediaclient/service/NetflixService;Landroid/app/Notification;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 59
    return-void
.end method

.method updateConnectedNotification(Lcom/netflix/mediaclient/service/NetflixService;Landroid/os/Handler;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->mShowNotification:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 68
    invoke-direct {p0, v1}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager;->createNotification(Z)Landroid/app/Notification;

    move-result-object v0

    .line 71
    new-instance v1, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$2;

    invoke-direct {v1, p0, p1, v0}, Lcom/netflix/mediaclient/service/voip/CallNotificationManager$2;-><init>(Lcom/netflix/mediaclient/service/voip/CallNotificationManager;Lcom/netflix/mediaclient/service/NetflixService;Landroid/app/Notification;)V

    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 77
    return-void
.end method
