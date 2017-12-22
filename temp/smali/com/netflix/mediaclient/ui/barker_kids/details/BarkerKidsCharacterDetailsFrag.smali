.class public Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;
.super Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;
.source "BarkerKidsCharacterDetailsFrag.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ResourceAsColor"
    }
.end annotation


# static fields
.field private static final EXTRA_CHARACTER_ID:Ljava/lang/String; = "extra_chararcter_id"

.field public static final EXTRA_KIDS_COLOR_ID:Ljava/lang/String; = "extra_kids_color_id"

.field private static final TAG:Ljava/lang/String; = "KidsCharacterDetailsFrag"


# instance fields
.field private characterId:Ljava/lang/String;

.field private kidsCharacterDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;

.field private kidsColorId:I

.field shouldRenderAsSDP:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->isLoading:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->showErrorView()V

    return-void
.end method

.method static synthetic access$1200(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->kidsCharacterDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;)Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->kidsCharacterDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->showErrorView()V

    return-void
.end method

.method static synthetic access$1400(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->showErrorView()V

    return-void
.end method

.method static synthetic access$1500(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->setupDismissClick()V

    return-void
.end method

.method static synthetic access$1602(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->showId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->fetchShowDetailsAndSeasons()V

    return-void
.end method

.method static synthetic access$1802(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->showId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->setupSeasonsSpinnerGroupLocal()V

    return-void
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->fetchShowDetailsAndSeasons()V

    return-void
.end method

.method static synthetic access$2100(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2200(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->setupDetailsPageParallaxScrollListenerLocal()Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2402(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->isLoading:Z

    return p1
.end method

.method static synthetic access$2502(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;J)J
    .locals 1

    .prologue
    .line 56
    iput-wide p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->requestId:J

    return-wide p1
.end method

.method static synthetic access$2600(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->showId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)J
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->requestId:J

    return-wide v0
.end method

.method static synthetic access$2802(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->isLoading:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->showErrorView()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3000(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->showErrorView()V

    return-void
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method static synthetic access$600(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->kidsColorId:I

    return v0
.end method

.method static synthetic access$800(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Lcom/netflix/mediaclient/android/activity/NetflixActivity;
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public static create(Ljava/lang/String;I)Landroid/app/Fragment;
    .locals 4

    .prologue
    .line 69
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;-><init>()V

    .line 70
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string/jumbo v2, "extra_chararcter_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string/jumbo v2, "extra_kids_color_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 74
    const-string/jumbo v2, "extra_show_details"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->setArguments(Landroid/os/Bundle;)V

    .line 77
    return-object v0
.end method

.method private fetchCharacterDetails()V
    .locals 3

    .prologue
    .line 143
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 144
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "Manager is null - can\'t get character details"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->isLoading:Z

    .line 148
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->characterId:Ljava/lang/String;

    new-instance v2, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$FetchCharacterDetailsCallback;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    invoke-interface {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchKidsCharacterDetails(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method private renderAsSDP(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->setupSeasonsSpinnerGroup()V

    .line 553
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 554
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->kidsCharacterDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->updateCharacterDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;)V

    .line 555
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setItemContentType(I)V

    .line 556
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->viewCreatorEpisodes:Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setViewCreator(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 558
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->showViews()V

    .line 559
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 562
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    if-eqz v0, :cond_0

    .line 563
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->start()V

    .line 565
    :cond_0
    return-void
.end method

.method private setupDetailsPageParallaxScrollListenerLocal()Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    instance-of v1, v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    if-nez v1, :cond_1

    .line 197
    :cond_0
    :goto_0
    return-object v0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getNetflixActivity()Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getNetflixActionBar()Lcom/netflix/mediaclient/android/widget/NetflixActionBar;

    move-result-object v1

    .line 171
    if-eqz v1, :cond_0

    .line 175
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/NetflixActionBar;->hidelogo()V

    .line 176
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$CharacterKidsParallax;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 179
    new-instance v1, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$1;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener;->setOnScrollStateChangedListener(Lcom/netflix/mediaclient/ui/details/DetailsPageParallaxScrollListener$IScrollStateChanged;)V

    goto :goto_0
.end method

.method private setupSeasonsSpinnerGroupLocal()V
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v0, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->createSeasonsSelectorGroup()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->spinnerViewGroup:Landroid/view/ViewGroup;

    .line 544
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->addSpinnerToDetailsGroup()V

    .line 546
    :cond_0
    return-void
.end method


# virtual methods
.method protected createSeasonsSelectorGroup()Landroid/view/ViewGroup;
    .locals 3

    .prologue
    .line 568
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->createSeasonsSelectorGroup()Landroid/view/ViewGroup;

    move-result-object v1

    .line 570
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->kidsColorId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->setSpinnerBackground(I)V

    .line 572
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;

    .line 573
    if-eqz v0, :cond_0

    .line 574
    iget v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->kidsColorId:I

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setItemBackgroundColor(I)V

    .line 575
    const v2, 0x7f0f0110

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setDropDownBackgroundColor(I)V

    .line 576
    iget v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->kidsColorId:I

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinnerAdapter;->setDropDownTextColor(I)V

    .line 579
    :cond_0
    return-object v1
.end method

.method protected getNumColumns()I
    .locals 4

    .prologue
    const v0, 0x7f0c0015

    const v1, 0x7f0c0014

    const v2, 0x7f0c0013

    .line 90
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isKidsParity(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 92
    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v3, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 100
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    return v0

    :cond_1
    move v0, v1

    .line 93
    goto :goto_0

    .line 95
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    goto :goto_0

    .line 98
    :cond_3
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v0, :cond_4

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1
.end method

.method protected getRecyclerViewShadowWidth()I
    .locals 3

    .prologue
    .line 152
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 466
    const v0, 0x7f03007e

    return v0
.end method

.method protected initDetailsViewGroup()V
    .locals 2

    .prologue
    .line 157
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeActionBarDummyView()V

    .line 159
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->hideRelatedTitle()V

    .line 160
    return-void
.end method

.method protected initDetailsViewGroupAsHeader()V
    .locals 2

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->initDetailsViewGroup()V

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;->addHeaderView(Landroid/view/View;)V

    .line 139
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->setDetailViewGroupVisibility(I)V

    .line 140
    return-void
.end method

.method public isLoadingData()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->isLoading:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_chararcter_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->characterId:Ljava/lang/String;

    .line 107
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "extra_kids_color_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->kidsColorId:I

    .line 108
    return-void
.end method

.method public onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 2

    .prologue
    .line 112
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "onManagerReady"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->onManagerReady(Lcom/netflix/mediaclient/servicemgr/ServiceManager;Lcom/netflix/mediaclient/android/app/Status;)V

    .line 114
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->fetchCharacterDetails()V

    .line 115
    return-void
.end method

.method public reload()V
    .locals 1

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->fetchShowDetailsAndSeasons()V

    .line 134
    :cond_0
    return-void
.end method

.method protected renderAsMDP(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 3

    .prologue
    .line 471
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->kidsCharacterDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;->getGallery()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;->setItems(Ljava/util/Collection;)V

    .line 474
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    new-instance v1, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$StringProvider;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 475
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    check-cast v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->kidsCharacterDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$KubrickKidsCharacterDetailsViewGroup;->updateCharacterDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/KidsCharacterDetails;)V

    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->heroSlideshow:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$HeroSlideshow;->start()V

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->showViews()V

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->leWrapper:Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/LoadingAndErrorWrapper;->hide(Z)V

    .line 484
    return-void
.end method

.method protected setSpinnerSelection()V
    .locals 2

    .prologue
    .line 527
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->setSeasonIndex()V

    .line 529
    iget v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->currSeasonIndex:I

    if-gez v0, :cond_0

    .line 530
    const-string/jumbo v0, "KidsCharacterDetailsFrag"

    const-string/jumbo v1, "No valid season index found"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    :goto_0
    return-void

    .line 537
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->spinner:Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;

    iget v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->currSeasonIndex:I

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/SeasonsSpinner;->setNonTouchSelection(I)V

    goto :goto_0
.end method

.method protected setupRecyclerViewAdapter()V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag$GalleryAdapter;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    .line 120
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->episodesAdapter:Lcom/netflix/mediaclient/ui/details/EpisodesAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 121
    return-void
.end method

.method protected setupSeasonsSpinnerGroup()V
    .locals 0

    .prologue
    .line 523
    return-void
.end method

.method protected showStandardViews()V
    .locals 2

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->isListVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/gfx/AnimationUtils;->showView(Landroid/view/View;Z)V

    .line 127
    :cond_0
    return-void
.end method

.method protected updateSeasonData(Ljava/util/List;)V
    .locals 1
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
    .line 458
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v0, :cond_0

    .line 459
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->updateSeasonData(Ljava/util/List;)V

    .line 463
    :goto_0
    return-void

    .line 461
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->onLoaded(Lcom/netflix/mediaclient/android/app/Status;)V

    goto :goto_0
.end method

.method protected updateShowDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 1

    .prologue
    .line 449
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->shouldRenderAsSDP:Z

    if-eqz v0, :cond_0

    .line 450
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->renderAsSDP(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 455
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsCharacterDetailsFrag;->renderAsMDP(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    goto :goto_0
.end method
