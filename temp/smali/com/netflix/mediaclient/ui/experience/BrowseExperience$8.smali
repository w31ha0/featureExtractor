.class final enum Lcom/netflix/mediaclient/ui/experience/BrowseExperience$8;
.super Lcom/netflix/mediaclient/ui/experience/BrowseExperience;
.source "BrowseExperience.java"


# instance fields
.field private final VALID_DETAIL_TYPES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;)V
    .locals 4

    .prologue
    .line 342
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;-><init>(Ljava/lang/String;ILcom/netflix/mediaclient/ui/experience/BrowseExperience$ExperienceMap;Lcom/netflix/mediaclient/ui/experience/BrowseExperience$1;)V

    .line 385
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    new-array v1, v1, [Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    const/4 v2, 0x0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->CHARACTERS:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$8;->VALID_DETAIL_TYPES:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public createLolomoAdapter(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;ZLjava/lang/String;)Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag$ILoLoMoAdapter;
    .locals 2

    .prologue
    .line 357
    if-eqz p2, :cond_0

    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsGenreLoLoMoAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p3, v1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsGenreLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;Z)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsLoLoMoAdapter;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    goto :goto_0
.end method

.method public createRowAdapterProvider(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$IRowAdapterProvider;
    .locals 1

    .prologue
    .line 397
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/lomo/RowAdapterProvider$KidsTabletRowAdapterProvider;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/lomo/RowAdapterCallbacks;Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Z)V

    return-object v0
.end method

.method public createSlidingMenuAdapter(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;)Lcom/netflix/mediaclient/ui/home/SlidingMenuAdapter;
    .locals 1

    .prologue
    .line 382
    new-instance v0, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/ui/kids/lolomo/KidsSlidingMenu;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/support/v4/widget/DrawerLayout;)V

    return-object v0
.end method

.method public getDetailsClassTypeForVideo(Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/netflix/mediaclient/ui/details/DetailsActivity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 389
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$8;->VALID_DETAIL_TYPES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    const-class v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsDetailsActivity;

    .line 392
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLomoRowTitleVisibility(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)I
    .locals 2

    .prologue
    .line 362
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$9;->$SwitchMap$com$netflix$mediaclient$servicemgr$interface_$LoMoType:[I

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 366
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 364
    :pswitch_0
    const/16 v0, 0x8

    goto :goto_0

    .line 362
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getPrefetchLolomoImageUrlList(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 372
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$8;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getPrefetchLolomoImageUrlList(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 377
    sget-object v0, Lcom/netflix/mediaclient/ui/experience/BrowseExperience$8;->STANDARD:Lcom/netflix/mediaclient/ui/experience/BrowseExperience;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getViewImageUrl(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
