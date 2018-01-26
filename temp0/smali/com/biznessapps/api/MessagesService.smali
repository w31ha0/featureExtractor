.class public Lcom/biznessapps/api/MessagesService;
.super Landroid/app/Service;
.source "MessagesService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/biznessapps/api/MessagesService$LocalBinder;
    }
.end annotation


# instance fields
.field private final PUSH_NOTIFICATIONS_PERIOD:I

.field private final PUSH_NOTIFICATIONS_PERIOD_DELAY:I

.field private final mBinder:Landroid/os/IBinder;

.field private pushNotificationTimer:Ljava/util/Timer;

.field private tabId:J

.field private tabLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/biznessapps/api/MessagesService;->tabId:J

    .line 31
    const v0, 0x493e0

    iput v0, p0, Lcom/biznessapps/api/MessagesService;->PUSH_NOTIFICATIONS_PERIOD:I

    .line 32
    const/16 v0, 0x7530

    iput v0, p0, Lcom/biznessapps/api/MessagesService;->PUSH_NOTIFICATIONS_PERIOD_DELAY:I

    .line 35
    new-instance v0, Lcom/biznessapps/api/MessagesService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/biznessapps/api/MessagesService$LocalBinder;-><init>(Lcom/biznessapps/api/MessagesService;)V

    iput-object v0, p0, Lcom/biznessapps/api/MessagesService;->mBinder:Landroid/os/IBinder;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/biznessapps/api/MessagesService;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/api/MessagesService;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/biznessapps/api/MessagesService;->checkMessages()V

    return-void
.end method

.method static synthetic access$100(Lcom/biznessapps/api/MessagesService;)Lcom/biznessapps/api/CachingManager;
    .locals 1
    .param p0, "x0"    # Lcom/biznessapps/api/MessagesService;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/biznessapps/api/MessagesService;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/biznessapps/api/MessagesService;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/biznessapps/api/MessagesService;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Ljava/util/List;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/biznessapps/api/MessagesService;->checkMessagesOnNew(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private cacher()Lcom/biznessapps/api/CachingManager;
    .locals 1

    .prologue
    .line 83
    invoke-static {}, Lcom/biznessapps/api/AppCore;->getInstance()Lcom/biznessapps/api/AppCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/biznessapps/api/AppCore;->getCachingManager()Lcom/biznessapps/api/CachingManager;

    move-result-object v0

    return-object v0
.end method

.method private checkMessages()V
    .locals 5

    .prologue
    .line 88
    new-instance v0, Lcom/biznessapps/api/MessagesService$2;

    invoke-direct {v0, p0}, Lcom/biznessapps/api/MessagesService$2;-><init>(Lcom/biznessapps/api/MessagesService;)V

    .line 96
    .local v0, "callback":Lcom/biznessapps/api/AsyncCallback;, "Lcom/biznessapps/api/AsyncCallback<Ljava/lang/String;>;"
    const-string v1, "http://www.biznessapps.com/iphone/messages.php?app_code=%s&version=4"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/biznessapps/api/MessagesService;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/biznessapps/api/CachingManager;->getAppCode()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/biznessapps/api/AppHttpUtils;->executeGetRequest(Ljava/lang/String;Lcom/biznessapps/api/AsyncCallback;)V

    .line 97
    return-void
.end method

.method private checkMessagesOnNew(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/MessageItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/biznessapps/model/MessageItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "newList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MessageItem;>;"
    .local p2, "oldList":Ljava/util/List;, "Ljava/util/List<Lcom/biznessapps/model/MessageItem;>;"
    const/4 v5, 0x0

    .line 101
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 103
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! newList.size()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 104
    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 105
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!! oldList.size()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/biznessapps/model/MessageItem;

    .line 109
    .local v1, "item":Lcom/biznessapps/model/MessageItem;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/biznessapps/model/MessageItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No messages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/biznessapps/api/MessagesService;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/biznessapps/api/CachingManager;->isMessageStored(Lcom/biznessapps/model/MessageItem;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 115
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 116
    sget v2, Lcom/biznessapps/layout/R$string;->push_notification_coming:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/api/MessagesService;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/biznessapps/model/MessageItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/biznessapps/api/MessagesService;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v1    # "item":Lcom/biznessapps/model/MessageItem;
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/biznessapps/api/MessagesService;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/biznessapps/api/CachingManager;->setMessagesList(Ljava/util/List;)V

    .line 137
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 118
    .restart local v0    # "i$":Ljava/util/Iterator;
    .restart local v1    # "item":Lcom/biznessapps/model/MessageItem;
    :cond_3
    sget v2, Lcom/biznessapps/layout/R$string;->push_notification_coming:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/api/MessagesService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/biznessapps/api/MessagesService;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 125
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lcom/biznessapps/model/MessageItem;
    :cond_4
    invoke-direct {p0}, Lcom/biznessapps/api/MessagesService;->cacher()Lcom/biznessapps/api/CachingManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/biznessapps/api/CachingManager;->setMessagesList(Ljava/util/List;)V

    .line 126
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    .line 127
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/MessageItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/MessageItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No messages"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    sget v2, Lcom/biznessapps/layout/R$string;->push_notification_coming:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/api/MessagesService;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    :goto_2
    invoke-direct {p0, v3, v2}, Lcom/biznessapps/api/MessagesService;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/biznessapps/model/MessageItem;

    invoke-virtual {v2}, Lcom/biznessapps/model/MessageItem;->getTitle()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 133
    :cond_6
    sget v2, Lcom/biznessapps/layout/R$string;->push_notification_coming:I

    invoke-virtual {p0, v2}, Lcom/biznessapps/api/MessagesService;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-direct {p0, v2, v3}, Lcom/biznessapps/api/MessagesService;->sendNotification(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private getNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "notificationIcon"    # I
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "body"    # Ljava/lang/String;

    .prologue
    .line 148
    new-instance v1, Landroid/app/Notification;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v1, p2, p3, v3, v4}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 149
    .local v1, "notification":Landroid/app/Notification;
    const/16 v3, 0x10

    iput v3, v1, Landroid/app/Notification;->flags:I

    .line 151
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/biznessapps/api/MessagesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/biznessapps/activities/SingleFragmentActivity;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 152
    .local v2, "notificationIntent":Landroid/content/Intent;
    const-string v3, "TAB_FRAGMENT"

    const-string v4, "messagesviewcontroller"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    const-string v3, "TAB_UNIQUE_ID"

    iget-wide v4, p0, Lcom/biznessapps/api/MessagesService;->tabId:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 154
    const-string v3, "TAB_LABEL"

    iget-object v4, p0, Lcom/biznessapps/api/MessagesService;->tabLabel:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/4 v3, 0x0

    const/high16 v4, 0x8000000

    invoke-static {p1, v3, v2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 158
    .local v0, "contentIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, p1, p3, p4, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 160
    return-object v1
.end method

.method private getUpdatePushNotifcationsTask()Ljava/util/TimerTask;
    .locals 1

    .prologue
    .line 69
    new-instance v0, Lcom/biznessapps/api/MessagesService$1;

    invoke-direct {v0, p0}, Lcom/biznessapps/api/MessagesService$1;-><init>(Lcom/biznessapps/api/MessagesService;)V

    return-object v0
.end method

.method private sendNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "body"    # Ljava/lang/String;

    .prologue
    .line 140
    const/4 v0, 0x1

    .line 141
    .local v0, "HELLO_ID":I
    invoke-virtual {p0}, Lcom/biznessapps/api/MessagesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/biznessapps/layout/R$drawable;->icon_icon:I

    invoke-direct {p0, v3, v4, p1, p2}, Lcom/biznessapps/api/MessagesService;->getNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 142
    .local v1, "notification":Landroid/app/Notification;
    invoke-virtual {p0}, Lcom/biznessapps/api/MessagesService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "notification"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 144
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    invoke-virtual {v2, v0, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 145
    return-void
.end method

.method private startAppService()V
    .locals 6

    .prologue
    .line 63
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/biznessapps/api/MessagesService;->pushNotificationTimer:Ljava/util/Timer;

    .line 64
    iget-object v0, p0, Lcom/biznessapps/api/MessagesService;->pushNotificationTimer:Ljava/util/Timer;

    invoke-direct {p0}, Lcom/biznessapps/api/MessagesService;->getUpdatePushNotifcationsTask()Ljava/util/TimerTask;

    move-result-object v1

    const-wide/16 v2, 0x7530

    const-wide/32 v4, 0x493e0

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 66
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/biznessapps/api/MessagesService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    invoke-direct {p0}, Lcom/biznessapps/api/MessagesService;->startAppService()V

    .line 51
    const-string v0, "TAB_UNIQUE_ID"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/biznessapps/api/MessagesService;->tabId:J

    .line 52
    const-string v0, "TAB_LABEL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/biznessapps/api/MessagesService;->tabLabel:Ljava/lang/String;

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
