.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;

.field final synthetic val$episodeNumber:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;I)V
    .locals 0

    .prologue
    .line 706
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;->this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;

    iput p2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;->val$episodeNumber:I

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodeDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 6

    .prologue
    .line 712
    if-nez p1, :cond_0

    .line 734
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonId()Ljava/lang/String;

    move-result-object v1

    .line 721
    iget v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;->val$episodeNumber:I

    div-int/lit8 v0, v0, 0x28

    mul-int/lit8 v3, v0, 0x28

    .line 722
    add-int/lit8 v0, v3, 0x28

    add-int/lit8 v4, v0, -0x1

    .line 725
    iget-object v0, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;->this$1:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    new-instance v5, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1$1;

    invoke-direct {v5, p0}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1$1;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;)V

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method
