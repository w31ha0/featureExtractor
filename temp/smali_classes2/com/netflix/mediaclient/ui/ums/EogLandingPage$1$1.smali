.class Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1;
.super Ljava/lang/Object;
.source "EogLandingPage.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1;->this$0:Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 118
    const-string/jumbo v0, "eog_landing"

    const-string/jumbo v1, "Get autologin token..."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    new-instance v0, Lcom/netflix/mediaclient/ui/home/AccountHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1;->this$0:Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/home/AccountHandler;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 121
    new-instance v1, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;

    sget-object v2, Lcom/netflix/mediaclient/util/VolleyUtils;->TIMEOUT_ERROR:Lcom/android/volley/VolleyError;

    invoke-direct {v1, v2}, Lcom/netflix/mediaclient/android/app/NetworkErrorStatus;-><init>(Lcom/android/volley/VolleyError;)V

    .line 122
    new-instance v2, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1$1;-><init>(Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1;Lcom/netflix/mediaclient/ui/home/AccountHandler;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 128
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1;->this$0:Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getHandler()Landroid/os/Handler;

    move-result-object v1

    const-wide/16 v4, 0x2710

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    new-instance v1, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1$2;

    invoke-direct {v1, p0, v2, v0}, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1$2;-><init>(Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1;Ljava/lang/Runnable;Lcom/netflix/mediaclient/ui/home/AccountHandler;)V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1$1;->this$0:Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/ums/EogLandingPage$1;->val$context:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v2, v3, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAutoLoginToken(JLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 139
    return-void
.end method
