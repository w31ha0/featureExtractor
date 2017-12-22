.class Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1$1;
.super Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;
.source "FalkorAgent.java"


# instance fields
.field final synthetic this$2:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1$1;->this$2:Lcom/netflix/mediaclient/service/falkor/FalkorAgent$4$1;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/browse/SimpleBrowseAgentCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEpisodesFetched(Ljava/util/List;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;",
            "Lcom/netflix/mediaclient/android/app/Status;",
            ")V"
        }
    .end annotation

    .prologue
    .line 732
    return-void
.end method
