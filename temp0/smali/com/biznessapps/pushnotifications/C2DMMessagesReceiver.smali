.class public Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;
.super Landroid/content/BroadcastReceiver;
.source "C2DMMessagesReceiver.java"


# static fields
.field private static final PAYLOAD:Ljava/lang/String; = "payload"

.field private static final RECEIVE_ACTION:Ljava/lang/String; = "com.google.android.c2dm.intent.RECEIVE"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private getNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationIcon"    # I
    .param p3, "titleMessage"    # Ljava/lang/String;
    .param p4, "bodyMessage"    # Ljava/lang/String;

    .prologue
    .line 46
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p2, p3, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 47
    .local v1, "notification":Landroid/app/Notification;
    iget v3, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 49
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/biznessapps/layout/MainController;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v2, "notificationIntent":Landroid/content/Intent;
    const-string v3, "OPEN_MESSAGE_TAB_PROPERTY"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 51
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 53
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, p1, p3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 55
    return-object v1
.end method

.method private sendNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bodyMessage"    # Ljava/lang/String;

    .prologue
    .line 37
    const/4 v0, 0x1

    .line 38
    .local v0, "HELLO_ID":I
    sget v4, Lcom/biznessapps/layout/R$string;->push_notification_coming:I

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 39
    .local v3, "titleMessage":Ljava/lang/String;
    sget v4, Lcom/biznessapps/layout/R$drawable;->icon_icon:I

    invoke-direct {p0, p1, v4, v3, p2}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->getNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 40
    .local v1, "notification":Landroid/app/Notification;
    const-string v4, "notification"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 42
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 30
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 31
    .local v0, "action":Ljava/lang/String;
    const-string v1, "com.google.android.c2dm.intent.RECEIVE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "payload"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/biznessapps/pushnotifications/C2DMMessagesReceiver;->sendNotification(Landroid/content/Context;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method
