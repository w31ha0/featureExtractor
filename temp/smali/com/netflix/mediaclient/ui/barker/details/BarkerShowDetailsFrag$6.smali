.class Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$6;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 4

    .prologue
    .line 604
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$600(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f030024

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Landroid/content/Context;I)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$6;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Landroid/content/Context;)V

    goto :goto_0
.end method
