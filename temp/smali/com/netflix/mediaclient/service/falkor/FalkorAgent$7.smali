.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

.field final synthetic val$msg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

.field final synthetic val$sendNotificationToStatusbar:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;ZLcom/netflix/mediaclient/service/pushnotification/MessageData;)V
    .locals 0

    .prologue
    .line 800
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->val$sendNotificationToStatusbar:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->val$msg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationsListFetched(Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 804
    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/netflix/mediaclient/android/app/Status;->getStatusCode()Lcom/netflix/mediaclient/StatusCode;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/StatusCode;->OK:Lcom/netflix/mediaclient/StatusCode;

    if-eq v0, v1, :cond_1

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 809
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$600(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;)Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    move-result-object v1

    .line 810
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v1, :cond_2

    move v0, v2

    .line 811
    :goto_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotifications()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 810
    :goto_2
    invoke-static {v4, v0, v2}, Lcom/netflix/mediaclient/util/IrisUtils;->notifyOthersOfUnreadNotifications(Landroid/content/Context;ZZ)V

    .line 814
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->val$sendNotificationToStatusbar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->access$700(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;Lcom/netflix/model/leafs/social/IrisNotificationSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 816
    invoke-virtual {v1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getType()Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;

    move-result-object v0

    .line 815
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsStaticFactory;->getNotificationByType(Lcom/netflix/model/leafs/social/IrisNotificationSummary$NotificationTypes;)Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;

    move-result-object v0

    .line 817
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->supportsStatusBar()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 819
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;->getSocialNotificationsListSummary()Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getService()Lcom/netflix/mediaclient/service/NetflixService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/NetflixService;->getImageLoader()Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v3

    iget-object v4, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->val$msg:Lcom/netflix/mediaclient/service/pushnotification/MessageData;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$7;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 818
    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/iris/notifications/type/BaseNotification;->sendNotificationToStatusbar(Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Lcom/netflix/mediaclient/util/gfx/ImageLoader;Lcom/netflix/mediaclient/service/pushnotification/MessageData;Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    move v0, v3

    .line 810
    goto :goto_1

    :cond_3
    move v2, v3

    .line 811
    goto :goto_2
.end method
