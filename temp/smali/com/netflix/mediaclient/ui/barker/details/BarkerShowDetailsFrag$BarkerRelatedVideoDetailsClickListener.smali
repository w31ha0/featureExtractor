.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;
.super Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsClickListener;
.source "BarkerShowDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V
    .locals 0

    .prologue
    .line 637
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    .line 638
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    .line 639
    return-void
.end method

.method private saveCurrentTitleState()V
    .locals 7

    .prologue
    .line 663
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$1900(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/util/Stack;

    move-result-object v6

    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$1600(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$1700(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    .line 664
    invoke-static {v3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$1800(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)I

    move-result v3

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;-><init>(Ljava/lang/String;Landroid/os/Parcelable;IILcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 663
    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    return-void
.end method


# virtual methods
.method protected launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 644
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_0

    .line 645
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$1000(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 646
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->saveCurrentTitleState()V

    .line 648
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->stop(Z)V

    .line 649
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$1100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->clearHeroImages()V

    .line 652
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$1202(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Ljava/lang/String;)Ljava/lang/String;

    .line 653
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$1302(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;I)I

    .line 654
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$1400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V

    .line 659
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->access$1502(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Z)Z

    .line 660
    return-void

    .line 656
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsClickListener;->launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0
.end method
