.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;
.super Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;
.source "BarkerShowDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V
    .locals 0

    .prologue
    .line 723
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    .line 724
    invoke-direct {p0, p2, p3, p4}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 725
    return-void
.end method

.method private showEpisodesViews()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 750
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 751
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2500(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 752
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2600(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 753
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    sget-object v1, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2700(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 755
    :cond_0
    return-void
.end method


# virtual methods
.method protected onPostItemViewBind(I)V
    .locals 1

    .prologue
    .line 759
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->onPostItemViewBind(I)V

    .line 760
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    if-eqz v0, :cond_0

    .line 761
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->resetDynamicViewsYPosition()V

    .line 763
    :cond_0
    return-void
.end method

.method protected updateEpisodesData(Ljava/util/List;I)V
    .locals 4
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
    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2000(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 730
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->updateEpisodesData(Ljava/util/List;I)V

    .line 731
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2102(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Ljava/util/List;)Ljava/util/List;

    .line 732
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->showEpisodesViews()V

    .line 735
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Z

    move-result v0

    if-nez v0, :cond_0

    move v1, v2

    .line 737
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 738
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 744
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$2400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    add-int/2addr v1, p2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;->scrollToPositionWithOffset(II)V

    .line 747
    :cond_0
    return-void

    .line 737
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method
