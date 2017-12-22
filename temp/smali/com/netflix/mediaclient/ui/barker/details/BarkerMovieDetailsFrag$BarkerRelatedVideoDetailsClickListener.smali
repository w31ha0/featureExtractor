.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;
.super Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsClickListener;
.source "BarkerMovieDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V
    .locals 0

    .prologue
    .line 363
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    .line 364
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    .line 365
    return-void
.end method

.method private saveCurrentTitleState()V
    .locals 7

    .prologue
    .line 393
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$900(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Ljava/util/Stack;

    move-result-object v6

    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$700(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$800(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    .line 394
    invoke-virtual {v4}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v4

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;-><init>(Ljava/lang/String;Landroid/os/Parcelable;IILcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 393
    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    return-void
.end method


# virtual methods
.method protected launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 2

    .prologue
    .line 370
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    .line 371
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$300(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->showLoadingView(Z)V

    .line 372
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->saveCurrentTitleState()V

    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$402(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;Ljava/lang/String;)Ljava/lang/String;

    .line 376
    instance-of v1, p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    .line 377
    if-eqz v1, :cond_0

    move-object v0, p1

    .line 378
    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->startDPTTISession()V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$500(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)V

    .line 381
    if-eqz v1, :cond_1

    .line 382
    check-cast p1, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {p1}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->registerLoadingStatusCallback()V

    .line 389
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerRelatedVideoDetailsClickListener;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->access$602(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;Z)Z

    .line 390
    return-void

    .line 386
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsClickListener;->launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    goto :goto_0
.end method
