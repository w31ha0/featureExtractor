.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994$1;
.super Ljava/lang/Object;
.source "EpisodesFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->access$200(Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;)Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView_Ab7994;->playEpisode(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 309
    return-void
.end method
