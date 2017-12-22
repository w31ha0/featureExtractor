.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;
.super Landroid/content/BroadcastReceiver;
.source "EpisodesFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V
    .locals 0

    .prologue
    .line 1010
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1013
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$300(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1019
    const-string/jumbo v1, "com.netflix.mediaclient.intent.action.BA_EPISODE_REFRESH"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1020
    const-string/jumbo v0, "curSeasonNumber"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1021
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getSelectedItemPosition()I

    move-result v1

    .line 1022
    if-ne v0, v1, :cond_0

    .line 1028
    const-string/jumbo v0, "curEpisodeNumber"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 1033
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-static {v2, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->access$400(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;I)V

    .line 1034
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;

    .line 1035
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$6;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateSeasonDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;)V

    goto :goto_0
.end method
