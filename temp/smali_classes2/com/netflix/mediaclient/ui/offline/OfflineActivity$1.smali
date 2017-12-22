.class Lcom/netflix/mediaclient/ui/offline/OfflineActivity$1;
.super Ljava/lang/Object;
.source "OfflineActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineActivity;)V
    .locals 0

    .prologue
    .line 132
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 139
    :cond_0
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const-string/jumbo v0, "nf_offline"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineActivity$1;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 147
    :cond_0
    return-void
.end method
