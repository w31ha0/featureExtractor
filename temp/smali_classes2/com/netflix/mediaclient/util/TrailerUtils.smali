.class public final Lcom/netflix/mediaclient/util/TrailerUtils;
.super Ljava/lang/Object;
.source "TrailerUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static generateAdapterForTrailers(Landroid/view/View;)Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 58
    new-instance v1, Lcom/netflix/mediaclient/util/TrailerUtils$2;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/util/TrailerUtils$2;-><init>(Landroid/view/View;I)V

    return-object v1
.end method

.method public static generateGridViewLayoutManagerForTrailers(Landroid/content/Context;Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;)Landroid/support/v7/widget/GridLayoutManager;
    .locals 3

    .prologue
    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 37
    new-instance v1, Landroid/support/v7/widget/GridLayoutManager;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 38
    new-instance v2, Lcom/netflix/mediaclient/util/TrailerUtils$1;

    invoke-direct {v2, p1, v0}, Lcom/netflix/mediaclient/util/TrailerUtils$1;-><init>(Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/GridLayoutManager;->setSpanSizeLookup(Landroid/support/v7/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 52
    return-object v1
.end method

.method public static final shouldShowTrailers(Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;)Z
    .locals 1

    .prologue
    .line 22
    if-eqz p0, :cond_0

    .line 23
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->isOriginal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getTrailers()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/MovieDetails;->getTrailers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 22
    :goto_0
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final shouldShowTrailers(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z
    .locals 1

    .prologue
    .line 29
    if-eqz p0, :cond_0

    .line 30
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isOriginal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {p0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getDefaultTrailer()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 29
    :goto_0
    return v0

    .line 31
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
