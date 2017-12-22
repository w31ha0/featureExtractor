.class Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity$1;
.super Ljava/lang/Object;
.source "GalleryLomoActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;)V
    .locals 0

    .prologue
    .line 97
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 101
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isUserLoggedIn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/GalleryLoMoFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 107
    :cond_1
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    const-string/jumbo v0, "nf_gallery_lomo"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity$1;->this$0:Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/lomo/GalleryLomoActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 115
    :cond_0
    return-void
.end method
