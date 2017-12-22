.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$2;
.super Ljava/lang/Object;
.source "VideoDetailsViewGroup_Ab7994.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;)V
    .locals 0

    .prologue
    .line 252
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;

    .line 256
    if-nez v0, :cond_1

    .line 281
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsActivity;->getSecondaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;

    .line 261
    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    .line 275
    :sswitch_0
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showEpisodes()V

    .line 276
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->setFirstTabAsSelected()V

    goto :goto_0

    .line 267
    :sswitch_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showSims()V

    .line 268
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->setSecondTabAsSelected()V

    goto :goto_0

    .line 271
    :sswitch_2
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag_Ab7994;->showTrailers()V

    .line 272
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994$2;->this$0:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;->setSecondTabAsSelected()V

    goto :goto_0

    .line 265
    :sswitch_data_0
    .sparse-switch
        0x7f1000c4 -> :sswitch_0
        0x7f1000c6 -> :sswitch_1
        0x7f10019d -> :sswitch_2
    .end sparse-switch
.end method
