.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;
.super Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;
.source "BarkerShowDetailsFrag.java"


# instance fields
.field protected nowPlaying:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 1023
    const v0, 0x7f030025

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Landroid/content/Context;I)V

    .line 1024
    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 1026
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    .line 1027
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Landroid/content/Context;I)V

    .line 1028
    return-void
.end method


# virtual methods
.method protected adjustEpisodeImageHeight()V
    .locals 0

    .prologue
    .line 1060
    return-void
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 1064
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->findViews()V

    .line 1065
    const v0, 0x7f1000bc

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->nowPlaying:Landroid/widget/TextView;

    .line 1066
    return-void
.end method

.method protected setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 2

    .prologue
    .line 1038
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->isCurrentEpisode:Z

    if-eqz v0, :cond_0

    .line 1039
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->disablePlay()V

    .line 1040
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->nowPlaying:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1045
    :goto_0
    return-void

    .line 1042
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 1043
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->nowPlaying:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V
    .locals 2

    .prologue
    .line 1032
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$3200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 1033
    invoke-super {p0, p1, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V

    .line 1034
    return-void
.end method

.method protected updateProgressBar()V
    .locals 2

    .prologue
    .line 1049
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->updateProgressBar()V

    .line 1051
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->isCurrentEpisode:Z

    if-eqz v0, :cond_0

    .line 1052
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1053
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerPlayerDialogEpisodesView;->progressBarBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1055
    :cond_0
    return-void
.end method
