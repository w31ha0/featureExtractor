.class Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$8;
.super Ljava/lang/Object;
.source "UserMessageAreaView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

.field final synthetic val$umaCta:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$8;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$8;->val$umaCta:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 356
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 359
    new-instance v1, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;

    invoke-direct {v1}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;-><init>()V

    .line 360
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$8;->val$umaCta:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->trackingInfo()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/service/logging/client/model/DataContext;->setTrackingInfo(Ljava/lang/String;)V

    .line 361
    sget-object v2, Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;->notifyUms:Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;->umsAlert:Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v1, v4}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandStarted(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/UIViewLogging$UIViewCommandName;Lcom/netflix/mediaclient/servicemgr/IClientLogging$ModalView;Lcom/netflix/mediaclient/service/logging/client/model/DataContext;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$8;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->access$000(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;)Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaAlert;->messageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$8;->val$umaCta:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->callback()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->recordUserMessageImpression(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->consumeUmaAlert()V

    .line 367
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$8;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->dismiss(Z)V

    .line 369
    invoke-static {v0}, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->reportUIViewCommandEnded(Landroid/content/Context;)V

    .line 374
    :cond_0
    return-void

    .line 371
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Expected to UMA view to run in a NetflixActivity, found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$8;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
