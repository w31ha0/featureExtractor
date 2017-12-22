.class public Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;
.super Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;
.source "SlidingMenuNotificationsFrag.java"


# static fields
.field private static final BUNDLE_EXTRA_SHOW_NOTIFICATIONS:Ljava/lang/String; = "extra_show_notifications"

.field public static MAX_NUM_NOTIFICATIONS:I = 0x0

.field private static final MAX_NUM_NOTIFICATIONS_DEFAULT:I = 0x2

.field private static final MAX_NUM_NOTIFICATIONS_X_LARGE:I = 0x2


# instance fields
.field private showNotifications:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const/4 v0, 0x2

    sput v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->MAX_NUM_NOTIFICATIONS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;-><init>()V

    return-void
.end method

.method public static getCurrentMaxNotificationsNum()I
    .locals 1

    .prologue
    .line 49
    sget v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->MAX_NUM_NOTIFICATIONS:I

    return v0
.end method

.method private hasUnreadNotifications()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 94
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-nez v0, :cond_0

    move v0, v1

    .line 107
    :goto_0
    return v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    .line 101
    invoke-virtual {v0}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 107
    goto :goto_0
.end method


# virtual methods
.method protected canLoadMultiplePages()Z
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method protected getNumNotificationsPerPage()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->MAX_NUM_NOTIFICATIONS:I

    return v0
.end method

.method protected getRowLayoutResourceId()I
    .locals 1

    .prologue
    .line 69
    const v0, 0x7f030083

    return v0
.end method

.method protected isListViewStatic()Z
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x1

    return v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 23
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->onAttach(Landroid/app/Activity;)V

    .line 25
    invoke-static {p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenSizeCategory(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->MAX_NUM_NOTIFICATIONS:I

    .line 28
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 32
    if-eqz p1, :cond_0

    .line 33
    const-string/jumbo v0, "extra_show_notifications"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->showNotifications:Z

    .line 35
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->onCreate(Landroid/os/Bundle;)V

    .line 36
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 41
    const-string/jumbo v0, "extra_show_notifications"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->showNotifications:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 42
    return-void
.end method

.method refreshNotificationsListStatus()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->refreshNotificationsListStatus()V

    .line 86
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->hasUnreadNotifications()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->showNotifications:Z

    if-nez v0, :cond_0

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->mAreNotificationsPresent:Z

    .line 91
    :goto_0
    return-void

    .line 89
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/SlidingMenuNotificationsFrag;->showNotifications:Z

    goto :goto_0
.end method

.method protected shouldShowPlayButtonFromNotifications()Z
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method protected shouldWaitForTTIComplete()Z
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    return v0
.end method
