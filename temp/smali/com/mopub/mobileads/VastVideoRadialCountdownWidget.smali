.class public Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;
.super Landroid/widget/ImageView;
.source "VastVideoRadialCountdownWidget.java"


# instance fields
.field private mLastProgressMilliseconds:I

.field private mRadialCountdownDrawable:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x41800000    # 16.0f

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 21
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v6

    long-to-int v5, v6

    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setId(I)V

    .line 23
    const/high16 v5, 0x42340000    # 45.0f

    invoke-static {v5, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 24
    .local v3, "sideLength":I
    invoke-static {v8, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v4

    .line 25
    .local v4, "topMargin":I
    invoke-static {v8, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v2

    .line 26
    .local v2, "rightMargin":I
    const/high16 v5, 0x40a00000    # 5.0f

    invoke-static {v5, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v1

    .line 28
    .local v1, "padding":I
    new-instance v5, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    invoke-direct {v5, p1}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->mRadialCountdownDrawable:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    .line 29
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->mRadialCountdownDrawable:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    invoke-virtual {p0, v5}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    invoke-virtual {p0, v1, v1, v1, v1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setPadding(IIII)V

    .line 32
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 35
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0, v9, v4, v2, v9}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 36
    const/16 v5, 0xb

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    return-void
.end method


# virtual methods
.method public calibrateAndMakeVisible(I)V
    .locals 1
    .param p1, "initialCountdownMilliseconds"    # I

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->mRadialCountdownDrawable:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    invoke-virtual {v0, p1}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->setInitialCountdown(I)V

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 43
    return-void
.end method

.method public getImageViewDrawable()Lcom/mopub/mobileads/resource/RadialCountdownDrawable;
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->mRadialCountdownDrawable:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    return-object v0
.end method

.method public setImageViewDrawable(Lcom/mopub/mobileads/resource/RadialCountdownDrawable;)V
    .locals 0
    .param p1, "drawable"    # Lcom/mopub/mobileads/resource/RadialCountdownDrawable;
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->mRadialCountdownDrawable:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    .line 77
    return-void
.end method

.method public updateCountdownProgress(II)V
    .locals 2
    .param p1, "initialCountdownMilliseconds"    # I
    .param p2, "currentProgressMilliseconds"    # I

    .prologue
    .line 50
    iget v1, p0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->mLastProgressMilliseconds:I

    if-lt p2, v1, :cond_0

    .line 51
    sub-int v0, p1, p2

    .line 56
    .local v0, "millisecondsUntilSkippable":I
    if-gez v0, :cond_1

    .line 57
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->setVisibility(I)V

    .line 63
    .end local v0    # "millisecondsUntilSkippable":I
    :cond_0
    :goto_0
    return-void

    .line 59
    .restart local v0    # "millisecondsUntilSkippable":I
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->mRadialCountdownDrawable:Lcom/mopub/mobileads/resource/RadialCountdownDrawable;

    invoke-virtual {v1, p2}, Lcom/mopub/mobileads/resource/RadialCountdownDrawable;->updateCountdownProgress(I)V

    .line 60
    iput p2, p0, Lcom/mopub/mobileads/VastVideoRadialCountdownWidget;->mLastProgressMilliseconds:I

    goto :goto_0
.end method
