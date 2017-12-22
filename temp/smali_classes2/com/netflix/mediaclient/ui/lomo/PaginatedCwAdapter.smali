.class public Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;
.super Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;
.source "PaginatedCwAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PaginatedCwAdapter"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method protected computeNumItemsPerPage()I
    .locals 2

    .prologue
    .line 54
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/CWTestUtil;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeStandardNumVideosPerPage(Landroid/content/Context;Z)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected computeNumVideosToFetchPerBatch(I)I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;->CONTINUE_WATCHING:Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LomoConfig;->computeNumVideosToFetchPerBatch(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/interface_/LoMoType;)I

    move-result v0

    return v0
.end method

.method public getRowHeightInPx()I
    .locals 4

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/CWTestUtil;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/lomo/BasePaginatedAdapter;->getRowHeightInPx()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a010d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 37
    :goto_0
    const-string/jumbo v1, "PaginatedCwAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Computed view height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    return v0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    iget v1, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;->numItemsPerPage:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 34
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;->activity:Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a010a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected getView(Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;Ljava/util/List;IILcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/servicemgr/interface_/CWVideo;",
            ">;II",
            "Lcom/netflix/mediaclient/servicemgr/interface_/BasicLoMo;",
            ")",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 43
    const-class v0, Lcom/netflix/mediaclient/ui/lomo/CwViewGroup;

    invoke-virtual {p1, v0}, Lcom/netflix/mediaclient/android/widget/ObjectRecycler$ViewRecycler;->pop(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/CwViewGroup;

    .line 44
    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/CwViewGroup;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/lomo/CwViewGroup;-><init>(Landroid/content/Context;)V

    .line 46
    invoke-virtual {v0, p3}, Lcom/netflix/mediaclient/ui/lomo/CwViewGroup;->init(I)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/PaginatedCwAdapter;->getListViewPos()I

    move-result v4

    move-object v1, p2

    move v2, p3

    move v3, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/CwViewGroup;->updateDataThenViews(Ljava/util/List;IIILcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;)V

    .line 49
    return-object v0
.end method
