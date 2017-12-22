.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$4;
.super Ljava/lang/Object;
.source "CastPlayerPostPlayFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 157
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Showing episodes dialog"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    if-nez v0, :cond_0

    .line 160
    invoke-static {}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "currentVideo is null - can\'t show episodes"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->access$200(Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getTopLevelId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->createEpisodes(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setCancelable(Z)V

    .line 167
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag$4;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/mdx/CastPlayerPostPlayFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->showDialog(Landroid/app/DialogFragment;)Z

    goto :goto_0
.end method
