.class Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;
.super Ljava/lang/Object;
.source "OfflineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

.field final synthetic val$isEpisodeFrag:Z


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;Z)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;->val$isEpisodeFrag:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 390
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->isFragmentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 391
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;->val$isEpisodeFrag:Z

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    .line 393
    invoke-static {v2}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->access$600(Lcom/netflix/mediaclient/ui/offline/OfflineFragment;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    sget-object v4, Lcom/netflix/mediaclient/ui/common/PlayContext;->OFFLINE_MY_DOWNLOADS_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    const-string/jumbo v5, ""

    .line 392
    invoke-static/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->show(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;Ljava/lang/String;)V

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/OfflineFragment$4;->this$0:Lcom/netflix/mediaclient/ui/offline/OfflineFragment;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineFragment;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/offline/OfflineUiHelper;->showAvailableDownloadsGenreList(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0
.end method
