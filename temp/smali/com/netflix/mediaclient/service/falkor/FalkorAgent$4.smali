.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent;)V
    .locals 0

    .prologue
    .line 692
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowDetailsFetched(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 5

    .prologue
    .line 697
    if-nez p1, :cond_0

    .line 736
    :goto_0
    return-void

    .line 704
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v0

    .line 705
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeNumber()I

    move-result v1

    .line 706
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;->this$0:Lcom/netflix/mediaclient/service/falkor/FalkorAgent;

    const/4 v3, 0x0

    new-instance v4, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;

    invoke-direct {v4, p0, v1}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;-><init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4;I)V

    invoke-virtual {v2, v0, v3, v4}, Lcom/netflix/mediaclient/service/falkor/FalkorAgent;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/browse/BrowseAgentCallback;)V

    goto :goto_0
.end method
