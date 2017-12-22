.class Lcom/netflix/mediaclient/ui/player/PlayerActivity$1;
.super Ljava/lang/Object;
.source "PlayerActivity.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/player/PlayerActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/player/PlayerActivity;)V
    .locals 0

    .prologue
    .line 230
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 234
    return-void
.end method

.method public onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 238
    const-string/jumbo v0, "PlayerActivity"

    const-string/jumbo v1, "NetflixService is NOT available!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/player/PlayerActivity$1;->this$0:Lcom/netflix/mediaclient/ui/player/PlayerActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/player/PlayerActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;

    invoke-virtual {v0, p1, p2}, Lcom/netflix/mediaclient/android/fragment/NetflixFrag;->onManagerUnavailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 240
    return-void
.end method
