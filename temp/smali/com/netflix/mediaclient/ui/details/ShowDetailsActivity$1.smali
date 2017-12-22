.class Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity$1;
.super Ljava/lang/Object;
.source "ShowDetailsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 98
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getVideoId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getEpisodeId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 100
    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setCancelable(Z)V

    .line 101
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity$1;->this$0:Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->showDialog(Landroid/app/DialogFragment;)Z

    .line 102
    return v3
.end method
