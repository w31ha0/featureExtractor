.class Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;
.super Ljava/lang/Object;
.source "NotificationsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

.field final synthetic val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

.field final synthetic val$position:I

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

.field final synthetic val$videoId:Ljava/lang/String;

.field final synthetic val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Ljava/lang/String;Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$requestId:Ljava/lang/String;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    iput-object p5, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iput-object p6, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$videoId:Ljava/lang/String;

    iput p7, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 481
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 482
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->mNotifications:Lcom/netflix/mediaclient/servicemgr/interface_/search/IrisNotificationsList;

    if-eqz v1, :cond_1

    .line 484
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getWasRead()Z

    move-result v1

    if-nez v1, :cond_0

    .line 485
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V

    .line 488
    :cond_0
    new-instance v4, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$requestId:Ljava/lang/String;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$listSummary:Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;

    invoke-virtual {v1}, Lcom/netflix/model/leafs/social/IrisNotificationsListSummary;->getMDPTrackId()I

    move-result v1

    invoke-direct {v4, v0, v1, v2, v2}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Ljava/lang/String;III)V

    .line 489
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$videoType:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$videoId:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-virtual {v3}, Lcom/netflix/model/leafs/social/IrisNotificationSummary;->getVideoTitle()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "SocialNotif"

    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    .line 491
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->viewTitleDetails:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iget v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$3;->val$position:I

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1300(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/model/leafs/social/IrisNotificationSummary;I)V

    .line 495
    :cond_1
    return-void
.end method
