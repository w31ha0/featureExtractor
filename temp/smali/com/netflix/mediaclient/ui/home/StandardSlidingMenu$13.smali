.class final Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;
.super Ljava/lang/Object;
.source "StandardSlidingMenu.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 805
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 809
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Get autologin token..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    .line 812
    const-string/jumbo v0, "StandardSlidingMenu"

    const-string/jumbo v1, "Service is not available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    :goto_0
    return-void

    .line 816
    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/home/AccountHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/home/AccountHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 817
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    sget-object v2, Lcom/netflix/mediaclient/util/VolleyUtils;->TIMEOUT_ERROR:Lcom/android/volley/VolleyError;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    .line 818
    new-instance v2, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13$1;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;Lcom/netflix/mediaclient/ui/home/AccountHandler;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 825
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 827
    new-instance v1, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13$2;

    invoke-direct {v1, p0, v2, v0}, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13$2;-><init>(Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;Ljava/lang/Runnable;Lcom/netflix/mediaclient/ui/home/AccountHandler;)V

    .line 836
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/home/StandardSlidingMenu$13;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v2, v3, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAutoLoginToken(JLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method
