.class Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;
.super Ljava/lang/Object;
.source "SignupActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)V
    .locals 0

    .prologue
    .line 935
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 3

    .prologue
    .line 950
    invoke-static {}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->isSignupDisabledDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 961
    :goto_0
    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$000(Lcom/netflix/mediaclient/ui/signup/SignupActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 955
    invoke-static {}, Lcom/netflix/mediaclient/util/ThreadUtils;->assertOnMain()Z

    .line 956
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/SignupActivity$9;->this$0:Lcom/netflix/mediaclient/ui/signup/SignupActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->access$200(Lcom/netflix/mediaclient/ui/signup/SignupActivity;Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/signup/SignupActivity;->setViews(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Z)V

    goto :goto_0

    .line 958
    :cond_1
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "seviceMgr ready but waiting for playBilling setup to finish"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 969
    const-string/jumbo v0, "SignupActivity"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    return-void
.end method
