.class public Lcom/netflix/mediaclient/service/error/action/ResetApplicationAction;
.super Lcom/netflix/mediaclient/service/error/action/BaseAction;
.source "ResetApplicationAction.java"


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/error/action/BaseAction;-><init>(Landroid/app/Activity;)V

    .line 24
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/action/ResetApplicationAction;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->clearApplicationData(Landroid/content/Context;)V

    .line 33
    const-string/jumbo v0, "ErrorManager"

    const-string/jumbo v1, "resetApp"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/action/ResetApplicationAction;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/error/action/ResetApplicationAction;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->finishAllActivities(Landroid/content/Context;)V

    .line 37
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 38
    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/action/ResetApplicationAction;->mActivity:Landroid/app/Activity;

    const-class v2, Lcom/netflix/mediaclient/service/NetflixService;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 39
    iget-object v1, p0, Lcom/netflix/mediaclient/service/error/action/ResetApplicationAction;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->stopService(Landroid/content/Intent;)Z

    .line 40
    return-void
.end method
