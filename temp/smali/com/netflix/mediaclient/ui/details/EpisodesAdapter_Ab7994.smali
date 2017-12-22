.class public Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;
.super Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;
.source "EpisodesAdapter_Ab7994.java"


# instance fields
.field private episodeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 14
    return-void
.end method


# virtual methods
.method public getEpisodeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;->episodeList:Ljava/util/List;

    return-object v0
.end method

.method protected updateEpisodesData(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 18
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;->episodeListFrag:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->isShowingEpisodes()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 20
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;->episodeList:Ljava/util/List;

    .line 21
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateEpisodesData(Ljava/util/List;I)V

    .line 27
    :cond_0
    :goto_0
    return-void

    .line 24
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter_Ab7994;->episodeList:Ljava/util/List;

    .line 25
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateEpisodesData(Ljava/util/List;I)V

    goto :goto_0
.end method
