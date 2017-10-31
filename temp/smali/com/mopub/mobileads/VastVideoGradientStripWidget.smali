.class public Lcom/mopub/mobileads/VastVideoGradientStripWidget;
.super Landroid/widget/ImageView;
.source "VastVideoGradientStripWidget.java"


# instance fields
.field mForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mHasCompanionAd:Z

.field private mIsVideoComplete:Z

.field private mVisibilityForCompanionAd:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/GradientDrawable$Orientation;Lcom/mopub/common/util/DeviceUtils$ForceOrientation;ZIII)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "gradientOrientation"    # Landroid/graphics/drawable/GradientDrawable$Orientation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "forceOrientation"    # Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "hasCompanionAd"    # Z
    .param p5, "visibilityForCompanionAd"    # I
    .param p6, "layoutVerb"    # I
    .param p7, "layoutAnchor"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 29
    iput-object p3, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 30
    iput p5, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mVisibilityForCompanionAd:I

    .line 31
    iput-boolean p4, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mHasCompanionAd:Z

    .line 33
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    sget v4, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->START_COLOR:I

    aput v4, v2, v3

    const/4 v3, 0x1

    sget v4, Lcom/mopub/mobileads/resource/DrawableConstants$GradientStrip;->END_COLOR:I

    aput v4, v2, v3

    invoke-direct {v0, p2, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 36
    .local v0, "gradientDrawable":Landroid/graphics/drawable/GradientDrawable;
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/high16 v3, 0x42900000    # 72.0f

    .line 40
    invoke-static {v3, p1}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v1, p6, p7}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 43
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->updateVisibility()V

    .line 46
    return-void
.end method

.method private updateVisibility()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x4

    .line 61
    iget-boolean v1, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mIsVideoComplete:Z

    if-eqz v1, :cond_1

    .line 62
    iget-boolean v1, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mHasCompanionAd:Z

    if-eqz v1, :cond_0

    .line 63
    iget v1, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mVisibilityForCompanionAd:I

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    .line 99
    :goto_0
    return-void

    .line 65
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_0

    .line 71
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    sget-object v2, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_PORTRAIT:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    if-ne v1, v2, :cond_2

    .line 72
    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_0

    .line 73
    :cond_2
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    sget-object v2, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_LANDSCAPE:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    if-ne v1, v2, :cond_3

    .line 74
    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 78
    .local v0, "currentOrientation":I
    packed-switch v0, :pswitch_data_0

    .line 94
    const-string v1, "Unrecognized screen orientation: do not show gradient strip widget"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_0

    .line 80
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_0

    .line 83
    :pswitch_1
    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_0

    .line 86
    :pswitch_2
    const-string v1, "Screen orientation undefined: do not show gradient strip widget"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_0

    .line 90
    :pswitch_3
    const-string v1, "Screen orientation is deprecated ORIENTATION_SQUARE: do not show gradient strip widget"

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->setVisibility(I)V

    goto :goto_0

    .line 78
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method notifyVideoComplete()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->mIsVideoComplete:Z

    .line 50
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->updateVisibility()V

    .line 51
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 55
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 57
    invoke-direct {p0}, Lcom/mopub/mobileads/VastVideoGradientStripWidget;->updateVisibility()V

    .line 58
    return-void
.end method