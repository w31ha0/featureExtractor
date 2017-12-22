.class Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;
.super Ljava/lang/Object;
.source "BarkerVideoDetailsViewGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 409
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1000c6

    if-ne v0, v1, :cond_1

    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;

    .line 411
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    .line 412
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRelatedTitles()V

    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->setRelatedTextAsSelected()V

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 416
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1000c4

    if-ne v0, v1, :cond_0

    .line 417
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;

    .line 418
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsActivity;->getPrimaryFrag()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    .line 419
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showCurrentSeason()V

    .line 421
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->setEpisodesTextAsSelected()V

    goto :goto_0
.end method
