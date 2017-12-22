.class Lcom/netflix/mediaclient/ui/settings/AboutActivity$1;
.super Ljava/lang/Object;
.source "AboutActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/settings/AboutActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/settings/AboutActivity;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/settings/AboutActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/AboutActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/AboutActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 72
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 76
    const-string/jumbo v0, "nf_AboutActivity"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/settings/AboutActivity$1;->this$0:Lcom/netflix/mediaclient/ui/settings/AboutActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/settings/AboutActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/settings/AboutFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/settings/AboutFragment;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 78
    return-void
.end method
