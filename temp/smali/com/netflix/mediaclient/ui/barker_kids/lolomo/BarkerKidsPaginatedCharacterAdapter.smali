.class public Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;
.source "BarkerKidsPaginatedCharacterAdapter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/PaginatedLoMoAdapter;-><init>(Landroid/content/Context;)V

    .line 24
    return-void
.end method


# virtual methods
.method protected computeNumItemsPerPage()I
    .locals 4

    .prologue
    .line 46
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x1

    sget-object v2, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->KUBRICK_KIDS_CHARACTER_ROW:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;ZLcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;)I

    move-result v0

    .line 47
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 48
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0088

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 49
    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/MathUtils;->divideIntsWithRounding(II)I

    move-result v0

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 3

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 55
    return v0
.end method

.method protected getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/Video;",
            ">;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 29
    const-class v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterViewGroup;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterViewGroup;

    .line 30
    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsCharacterViewGroup;-><init>(Landroid/content/Context;)V

    .line 32
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0183

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingTop(Landroid/view/View;I)V

    .line 33
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0182

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingBottom(Landroid/view/View;I)V

    .line 34
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->init(I)V

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsPaginatedCharacterAdapter;->getListViewPos()I

    move-result v4

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup;->updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 37
    return-object v0
.end method
