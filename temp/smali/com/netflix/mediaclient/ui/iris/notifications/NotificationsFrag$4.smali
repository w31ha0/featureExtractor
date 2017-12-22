.class Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;
.super Ljava/lang/Object;
.source "NotificationsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

.field final synthetic val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

.field final synthetic val$position:I

.field final synthetic val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

.field final synthetic val$urlTarget:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/model/leafs/social/IrisNotificationSummary;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 525
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$urlTarget:Ljava/lang/String;

    iput p5, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 529
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->markNotificationAsRead(Lcom/netflix/model/leafs/social/IrisNotificationSummary;)V

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$urlTarget:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/protocol/netflixcom/NetflixComHandlerFactory;->handle(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/content/Intent;)Lcom/netflix/mediaclient/protocol/nflx/NflxHandler$Response;

    .line 535
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->this$0:Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->viewTitleDetails:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$summary:Lcom/netflix/model/leafs/social/IrisNotificationSummary;

    iget v3, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$position:I

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag$4;->val$urlTarget:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;->access$1400(Lcom/netflix/mediaclient/ui/iris/notifications/NotificationsFrag;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/model/leafs/social/IrisNotificationSummary;ILjava/lang/String;)V

    .line 536
    return-void
.end method
