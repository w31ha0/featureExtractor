.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;
.super Lcom/netflix/mediaclient/ui/details/EpisodesFrag;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/ErrorWrapper$Callback;
.implements Lcom/netflix/mediaclient/servicemgr/ManagerStatusListener;
.implements Lcom/netflix/mediaclient/ui/details/IHandleBackPress;
.implements Lcom/netflix/mediaclient/ui/details/ServiceManagerProvider;
.implements Lcom/netflix/mediaclient/ui/mdx/CastPlayerHelper$CastPlayerDialog;


# static fields
.field protected static final ANIMATE_IN_DURATION_MS:I = 0x1f4

.field private static final SAVED_STATE_SHOW_RELATED:Ljava/lang/String; = "saved_state_show_related"

.field private static final SYNOPSIS_LINES_LANDSCAPE:I = 0x5

.field private static final SYNOPSIS_LINES_MAX:I = 0xa

.field private static final SYNOPSIS_LINES_PORTRAIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BarkerShowDetailsFrag"


# instance fields
.field protected barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

.field private copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

.field private currentEpisodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;",
            ">;"
        }
    .end annotation
.end field

.field private fragBackground:Landroid/view/View;

.field private fromSameActivityType:Z

.field private hasBookmark:Z

.field protected heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

.field private innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

.field private isFromRelated:Z

.field protected parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

.field previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

.field private relatedTitlesHistory:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;",
            ">;"
        }
    .end annotation
.end field

.field private rootContainer:Landroid/view/View;

.field private seasonsDialogAdapter:Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;

.field protected seasonsDialogRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private showRecyclerBackground:Z

.field private showRelated:Z

.field private supressAnimateIn:Z

.field protected viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

.field viewCreatorSims:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;-><init>()V

    .line 110
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    .line 600
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$6;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    .line 608
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$7;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$7;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->viewCreatorSims:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1302(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;I)I
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->currSeasonIndex:I

    return p1
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fetchShowDetailsAndSeasons()V

    return-void
.end method

.method static synthetic access$1502(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Z)Z
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->isFromRelated:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->currSeasonIndex:I

    return v0
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/util/Stack;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRelated:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/util/List;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->currentEpisodes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->currentEpisodes:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3002(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodeId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodeId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4900(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showErrorView()V

    return-void
.end method

.method static synthetic access$5300(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V
    .locals 0

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showErrorView()V

    return-void
.end method

.method static synthetic access$5400(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->hasBookmark:Z

    return v0
.end method

.method static synthetic access$5402(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Z)Z
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->hasBookmark:Z

    return p1
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    return v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    return-object v0
.end method

.method private addCopyrightAsFooter()V
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->create(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;)Lcom/netflix/mediaclient/ui/details/CopyrightView;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    .line 350
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->setGravityAsCenter()V

    .line 352
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->addFooterView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 3

    .prologue
    .line 116
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;-><init>()V

    .line 117
    const/4 v1, 0x1

    const v2, 0x7f0b0117

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    .line 118
    const/4 v1, 0x0

    invoke-static {v0, p0, p1, p2, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method

.method public static create(Z)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;-><init>()V

    .line 123
    const/4 v1, 0x1

    const v2, 0x7f0b0117

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;->setStyle(II)V

    .line 124
    const/4 v1, 0x0

    invoke-static {v0, v3, v3, p0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->applyCreateArgs(Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;Ljava/lang/String;Ljava/lang/String;ZZ)Lcom/netflix/mediaclient/android/fragment/NetflixDialogFrag;

    move-result-object v0

    return-object v0
.end method

.method private invalidateRecyclerView()V
    .locals 2

    .prologue
    .line 672
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 673
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->setupRecyclerViewLayoutManager()V

    .line 674
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->setupRecyclerViewItemDecoration()V

    .line 675
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 676
    return-void
.end method

.method private restorePreviousRelatedTitle()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->titleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showId:Ljava/lang/String;

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget v0, v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->seasonSelectIndex:I

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->currSeasonIndex:I

    .line 207
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fetchShowDetailsAndSeasons()V

    .line 208
    return-void
.end method

.method private setSameActivity()V
    .locals 3

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 214
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_same_activity_type"

    const/4 v2, 0x0

    .line 215
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fromSameActivityType:Z

    .line 218
    :cond_0
    return-void
.end method

.method private setupBackground(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 225
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 230
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "extra_same_activity_type"

    const/4 v2, 0x0

    .line 231
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 234
    if-eqz v0, :cond_2

    .line 235
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/util/api/Api16Util;->setBackgroundDrawableCompat(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 237
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->setupRecyclerShadow()V

    goto :goto_0
.end method

.method private setupRecyclerShadow()V
    .locals 2

    .prologue
    .line 256
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRecyclerBackground:Z

    .line 259
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getRecyclerViewShadowWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 261
    :cond_0
    return-void
.end method

.method private setupSpinnerScroller()V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 424
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    new-instance v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$4;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setOnItemTouchListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    goto :goto_0
.end method

.method private updateTrackId()V
    .locals 4

    .prologue
    .line 695
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    .line 697
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    invoke-static {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->updateTrackId(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lcom/netflix/mediaclient/servicemgr/interface_/details/Similarable;Ljava/util/Stack;Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;)V

    .line 699
    :cond_0
    return-void
.end method


# virtual methods
.method public addEpisodeArguments(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_episode_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_show_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    :cond_0
    return-void
.end method

.method protected animateIn()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const-wide/16 v4, 0x1f4

    const/high16 v2, 0x3f800000    # 1.0f

    .line 483
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->isListVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "Showing recycler view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 489
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 490
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 492
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fromSameActivityType:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRecyclerBackground:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 493
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 494
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 497
    :cond_1
    const/16 v1, 0x1f4

    invoke-virtual {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setAlphaWithAnimation(FI)V

    .line 498
    return-void
.end method

.method protected calculateSpinnerLeftPosition()I
    .locals 2

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    neg-int v0, v0

    return v0
.end method

.method protected createSeasonsSelectorGroup()Landroid/view/ViewGroup;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 394
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->createSeasonsSelectorGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 396
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_1

    .line 397
    if-eqz v1, :cond_0

    .line 398
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getSeasonSpinner()Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 399
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->calculateSpinnerLeftPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 401
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->setupSpinnerScroller()V

    .line 412
    :goto_0
    return-object v1

    .line 403
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->seasonsDialogRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3, v4, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 404
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$3;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$3;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V

    invoke-direct {v0, v2, v3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$OnSeasonSelectedListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->seasonsDialogAdapter:Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;

    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->seasonsDialogRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->seasonsDialogAdapter:Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_0
.end method

.method protected findViews(Landroid/view/View;)V
    .locals 3

    .prologue
    const v2, 0x7f100209

    .line 287
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->findViews(Landroid/view/View;)V

    .line 288
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getBackgroundResource()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-nez v0, :cond_1

    .line 293
    const v0, 0x7f100208

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->seasonsDialogRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 294
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_1
    const v0, 0x7f10020c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    goto :goto_0
.end method

.method protected getBackgroundResource()I
    .locals 1

    .prologue
    .line 301
    const v0, 0x7f0f00fb

    return v0
.end method

.method protected getNumColumns()I
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 594
    const/4 v0, 0x1

    .line 596
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRelated:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getNumberOfSims()I

    move-result v0

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    goto :goto_0
.end method

.method protected getRecyclerViewShadowWidth()I
    .locals 3

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 265
    const/4 v0, 0x0

    .line 267
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_0

    const v0, 0x7f0300ea

    :goto_0
    return v0

    :cond_0
    const v0, 0x7f03007a

    goto :goto_0
.end method

.method public handleBackPressed()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->restorePreviousRelatedTitle()V

    .line 193
    const/4 v0, 0x1

    .line 195
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected initDetailsViewGroup()V
    .locals 2

    .prologue
    .line 331
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BookmarkedVideoDetails;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 332
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 333
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 144
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onCreate(Landroid/os/Bundle;)V

    .line 145
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    .line 146
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, p0, v3, v4}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$1;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    .line 147
    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->supressAnimateIn:Z

    .line 149
    if-eqz p1, :cond_2

    .line 150
    const-string/jumbo v0, "saved_state_show_related"

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRelated:Z

    .line 152
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$RestoreInstanceState;->invoke(Landroid/os/Bundle;Ljava/util/Stack;)V

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->titleId:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showId:Ljava/lang/String;

    .line 162
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v2

    .line 147
    goto :goto_0

    .line 158
    :cond_2
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-nez v0, :cond_0

    .line 160
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->supressAnimateIn:Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 177
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->setSameActivity()V

    .line 180
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x30

    invoke-virtual {v1, v2}, Landroid/view/Window;->setGravity(I)V

    .line 184
    :cond_0
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->setupBackground(Landroid/view/View;)V

    .line 186
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 273
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 274
    const-string/jumbo v0, "saved_state_show_related"

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRelated:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 275
    const-string/jumbo v0, "extra_episode_id"

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodeId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->empty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v6, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showId:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    iget v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->currSeasonIndex:I

    .line 280
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/util/DeviceUtils;->getBasicScreenOrientation(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;-><init>(Ljava/lang/String;Landroid/os/Parcelable;IILcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 279
    invoke-virtual {v6, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->relatedTitlesHistory:Ljava/util/Stack;

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState$SaveInstanceState;->invoke(Landroid/os/Bundle;Ljava/util/Stack;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 4

    .prologue
    .line 166
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->onStart()V

    .line 168
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-nez v0, :cond_0

    .line 169
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a017e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 172
    :cond_0
    return-void
.end method

.method protected setScrollPosition()V
    .locals 2

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->isFromRelated:Z

    if-eqz v0, :cond_0

    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->isFromRelated:Z

    .line 538
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$5;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$5;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->recyclerViewState:Landroid/os/Parcelable;

    if-eqz v0, :cond_1

    .line 549
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->recyclerViewState:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 550
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->previousRelatedTitleState:Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;

    .line 552
    :cond_1
    return-void
.end method

.method protected setupDetailsPageParallaxScrollListener()Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 563
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v1, :cond_1

    .line 578
    :cond_0
    :goto_0
    return-object v0

    .line 567
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    .line 569
    if-eqz v1, :cond_0

    .line 573
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 574
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    .line 576
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    invoke-static {v1, v2, v3, v4, v0}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->createDefault(Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;Landroid/support/v7/widget/RecyclerView;[Landroid/view/View;Landroid/view/View;Landroid/view/View;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    .line 577
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 578
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->parallaxScroller:Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    goto :goto_0
.end method

.method protected setupDismissClick()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    new-instance v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    :cond_0
    return-void
.end method

.method protected setupRecyclerView()V
    .locals 3

    .prologue
    .line 243
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->setupRecyclerView()V

    .line 244
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getBackgroundColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 248
    :cond_1
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setBackgroundColor(I)V

    goto :goto_0

    .line 249
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0f0010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_1
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 338
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-direct {v0, p0, v1, p0, v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodesAdapter;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    .line 339
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 341
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->addCopyrightAsFooter()V

    .line 342
    return-void
.end method

.method protected setupRecyclerViewItemDecoration()V
    .locals 3

    .prologue
    .line 587
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->removeItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 588
    new-instance v0, Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNumColumns()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    .line 589
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->innerGridDecoration:Lcom/netflix/mediaclient/util/ItemDecorationBarkerGrid;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 590
    return-void
.end method

.method protected setupRecyclerViewLayoutManager()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 358
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 390
    :cond_0
    :goto_0
    return-void

    .line 363
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_2

    .line 364
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNumColumns()I

    move-result v0

    .line 365
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 366
    new-instance v2, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$2;

    invoke-direct {v2, p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$2;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 378
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 380
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 386
    :cond_2
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, v2, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 387
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setStackFromEnd(Z)V

    .line 388
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    goto :goto_0
.end method

.method protected setupSeasonsSpinnerGroup()V
    .locals 1

    .prologue
    .line 557
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->createSeasonsSelectorGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    .line 558
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->addSpinnerToDetailsGroup()V

    .line 559
    return-void
.end method

.method public showCurrentSeason()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 702
    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRelated:Z

    .line 705
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->invalidateRecyclerView()V

    .line 707
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->currentEpisodes:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->currentEpisodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->currentEpisodes:Ljava/util/List;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1, v3, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setItems(Ljava/util/Collection;ILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 710
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->setSpinnerSelection()V

    .line 718
    :goto_0
    return-void

    .line 712
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, v3}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setItemContentType(I)V

    .line 713
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setViewCreator(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 714
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->clearData()V

    .line 715
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->postSetSpinnerSelectionRunnable()V

    goto :goto_0
.end method

.method public showRelatedTitles()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 680
    iput-boolean v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRelated:Z

    .line 683
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->invalidateRecyclerView()V

    .line 685
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilars()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 686
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getFooterViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 687
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSimilars()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->viewCreatorSims:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1, v3, v2}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setItems(Ljava/util/Collection;ILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 688
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 689
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    .line 691
    :cond_0
    return-void
.end method

.method protected showStandardViews()V
    .locals 2

    .prologue
    .line 318
    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "showStandardViews()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->postSetSpinnerSelectionRunnable()V

    .line 324
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRelated:Z

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->performClickOnRelatedTitles()V

    .line 327
    :cond_0
    return-void
.end method

.method protected showViews()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 453
    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "animateIn()"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->rootContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->supressAnimateIn:Z

    if-eqz v0, :cond_4

    .line 460
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->isListVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 462
    const-string/jumbo v0, "BarkerShowDetailsFrag"

    const-string/jumbo v1, "Showing recycler view"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 466
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setAlpha(F)V

    .line 468
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fromSameActivityType:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRecyclerBackground:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 469
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->fragBackground:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 473
    :cond_3
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v0

    .line 474
    if-eqz v0, :cond_0

    .line 475
    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->setAlpha(F)V

    goto :goto_0

    .line 478
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->animateIn()V

    goto :goto_0
.end method

.method protected updateSeasonData(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/SeasonDetails;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 532
    :cond_0
    :goto_0
    return-void

    .line 527
    :cond_1
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateSeasonData(Ljava/util/List;)V

    .line 529
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetailsOnLaunch:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->seasonsDialogAdapter:Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentSeasonNumber()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter;->updateSeasonData(Ljava/util/List;I)I

    goto :goto_0
.end method

.method protected updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 3

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/DetailsActivity;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setVideoAndEpisodeIds(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    :cond_0
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 506
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRelated:Z

    if-nez v0, :cond_2

    .line 507
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showCurrentSeason()V

    .line 511
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCopyright()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 513
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->copyrightView:Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/CopyrightView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 516
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->updateTrackId()V

    .line 517
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->setScrollPosition()V

    .line 518
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->setupDismissClick()V

    .line 519
    return-void

    .line 509
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->showRelatedTitles()V

    goto :goto_0
.end method
