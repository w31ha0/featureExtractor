.class public Lcom/netflix/mediaclient/ui/barker/BarkerUtils;
.super Ljava/lang/Object;
.source "BarkerUtils.java"


# static fields
.field private static final LARGE_DETAIL_PAGE_THRESHOLD_DP:I = 0x400

.field public static final NUM_CW_VIDEOS_LANDSCAPE:I = 0x3

.field public static final NUM_CW_VIDEOS_PORTRAIT:I = 0x2

.field public static final NUM_LARGE_VIDEOS_LANDSCAPE:I = 0x3

.field public static final NUM_LARGE_VIDEOS_PORTRAIT:I = 0x2

.field public static final NUM_VIDEOS_LANDSCAPE:I = 0x4

.field public static final NUM_VIDEOS_PORTRAIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BarkerUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    return-void
.end method

.method public static getCwGalleryWidthType(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    .line 61
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;->STANDARD:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$LoMoWidthType;

    goto :goto_0
.end method

.method public static getDetailsPageContentWidth(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 35
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isDisplayPageRefresh()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getModalWidth()I

    move-result v0

    .line 39
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidthLegacy(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method private static getDetailsPageContentWidthLegacy(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 44
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInDPs(Landroid/content/Context;)I

    move-result v0

    .line 46
    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    .line 47
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenHeightInPixels(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 52
    :goto_0
    return v0

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    goto :goto_0
.end method

.method public static updateTrackId(Lcom/netflix/mediaclient/ui/details/DetailsActivity;Lcom/netflix/mediaclient/servicemgr/interface_/details/Similarable;Ljava/util/Stack;Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/ui/details/DetailsActivity;",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/Similarable;",
            "Ljava/util/Stack",
            "<",
            "Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;",
            ">;",
            "Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;",
            ")V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    .line 70
    const/4 v1, 0x0

    .line 72
    if-nez p3, :cond_2

    .line 74
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/Similarable;->getSimilarsTrackId()I

    move-result v1

    .line 87
    :cond_0
    :goto_0
    if-lez v1, :cond_1

    .line 88
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;->cloneWithNewTrackId(I)Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->setPlayContext(Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 90
    :cond_1
    return-void

    .line 82
    :cond_2
    invoke-virtual {p2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 83
    invoke-virtual {p3}, Lcom/netflix/mediaclient/ui/barker/details/RelatedTitleState;->getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;

    move-result-object v1

    invoke-interface {v1}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v1

    goto :goto_0
.end method
