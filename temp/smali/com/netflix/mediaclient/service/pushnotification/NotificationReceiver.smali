.class public final Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NotificationReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "nf_push"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 34
    return-void
.end method

.method private createIntentForPushNotificationAgent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 128
    const-class v1, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 129
    const-string/jumbo v1, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    const-string/jumbo v1, "swiped_notification_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 134
    const-string/jumbo v2, "swiped_notification_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    :cond_0
    invoke-static {p2}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->createInstance(Landroid/content/Intent;)Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    move-result-object v1

    .line 138
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/pushnotification/MessageData;->addMessageDataToIntent(Landroid/content/Intent;Lcom/netflix/mediaclient/service/pushnotification/MessageData;)V

    .line 140
    return-object v0
.end method

.method private handleBrowserRedirectNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 113
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "received notification browser redirect"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFICATION_BROWSER_REDIRECT"

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->createIntentForPushNotificationAgent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_1

    .line 117
    const-string/jumbo v1, "target_url"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 118
    if-eqz v1, :cond_0

    .line 119
    const-string/jumbo v2, "target_url"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    :cond_1
    return-void
.end method

.method private handleCanceledNotification(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 103
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "received notification canceled"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string/jumbo v0, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->createIntentForPushNotificationAgent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    :cond_0
    return-void
.end method

.method private handleMdp(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 85
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "received show MDP from notificaton"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->markSocialNotificationAsRead(Landroid/content/Context;Landroid/content/Intent;)V

    .line 87
    const-class v0, Lcom/netflix/mediaclient/ui/details/MovieDetailsActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 88
    const/high16 v0, 0x34000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 90
    return-void
.end method

.method private handlePlay(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 94
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "received play from notification"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->markSocialNotificationAsRead(Landroid/content/Context;Landroid/content/Intent;)V

    .line 96
    const-class v0, Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 97
    const/high16 v0, 0x34000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 98
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 99
    return-void
.end method

.method private handleSdp(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 76
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "received show SDP from notificaton"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->markSocialNotificationAsRead(Landroid/content/Context;Landroid/content/Intent;)V

    .line 78
    const-class v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 79
    const/high16 v0, 0x34000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 80
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method private static markSocialNotificationAsRead(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 154
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "calling service to mark notification as read"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string/jumbo v0, "g"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_MARK_AS_READ"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    const-string/jumbo v2, "g"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-class v0, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 161
    const-string/jumbo v0, "com.netflix.mediaclient.intent.category.PUSH"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Got empty notification ID inside markSocialNotificationAsRead()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 47
    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 69
    const-string/jumbo v0, "nf_push"

    const-string/jumbo v1, "Not supported!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :goto_1
    return-void

    .line 47
    :sswitch_0
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_CANCELED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_BROWSER_REDIRECT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_MOVIE_DETAILS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_SHOW_DETAILS"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_4
    const-string/jumbo v2, "com.netflix.mediaclient.intent.action.NOTIFICATION_PLAY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 49
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->handleCanceledNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 53
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->handleBrowserRedirectNotification(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 57
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->handleMdp(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 61
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->handleSdp(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 65
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/service/pushnotification/NotificationReceiver;->handlePlay(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 47
    :sswitch_data_0
    .sparse-switch
        -0x6b5c8f27 -> :sswitch_1
        -0x3de7ec7a -> :sswitch_3
        -0xef9dfc1 -> :sswitch_0
        0x2820f1da -> :sswitch_4
        0x6e46080d -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
