.class Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;
.super Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;
.source "UserMessageAreaView.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

.field final synthetic val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

.field final synthetic val$timeout:Ljava/lang/Runnable;

.field final synthetic val$umaCta:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;Ljava/lang/Runnable;Lcom/netflix/mediaclient/ui/home/AccountHandler;Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;)V
    .locals 0

    .prologue
    .line 392
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;->val$timeout:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;->val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    iput-object p4, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;->val$umaCta:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-direct {p0}, Lcom/netflix/mediaclient/servicemgr/SimpleManagerCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAutoLoginTokenCreated(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;->this$0:Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 396
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 397
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;->val$timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 398
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;->val$handler:Lcom/netflix/mediaclient/ui/home/AccountHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/UserMessageAreaView$10;->val$umaCta:Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/webclient/model/leafs/UmaCta;->action()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/home/AccountHandler;->handle(Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;Ljava/lang/String;)V

    .line 400
    :cond_0
    return-void
.end method
