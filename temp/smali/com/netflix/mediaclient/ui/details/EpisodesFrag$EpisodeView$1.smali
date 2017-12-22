.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;
.super Ljava/lang/Object;
.source "EpisodesFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView$1;->this$1:Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->access$000(Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;)Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->playEpisode(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 237
    return-void
.end method
