.class Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;
.super Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;
.source "NotificationsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 662
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 665
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/servicemgr/LoggingManagerCallback;->onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 667
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0, p2}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1500(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/android/app/Status;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 668
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 669
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNumNotificationsPerPage()I

    move-result v2

    if-ne v0, v2, :cond_2

    const/4 v0, 0x1

    .line 668
    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1602(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Z)Z

    .line 671
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 672
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 673
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->refreshNotificationsListStatus()V

    .line 676
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1700(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1700(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;)Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;

    move-result-object v0

    const-string/jumbo v1, "loadMoreNotifications.onNotificationsListFetched"

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$NotificationsListAdapter;->notifyDataSetChanged(Ljava/lang/String;)V

    .line 680
    :cond_1
    return-void

    .line 669
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
