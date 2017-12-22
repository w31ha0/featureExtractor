.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;
.super Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.source "BarkerVideoDetailsViewGroup.java"


# instance fields
.field private actions:Landroid/view/View;

.field private barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

.field protected basicSupplementalInfo:Landroid/widget/TextView;

.field private bookmarkDuration:Landroid/widget/TextView;

.field private bookmarkGroup:Landroid/view/ViewGroup;

.field private bookmarkProgressBar:Landroid/widget/ProgressBar;

.field private certification:Landroid/widget/TextView;

.field private credits:Landroid/view/View;

.field private dataSelectorEpisodes:Landroid/widget/RadioButton;

.field private dataSelectorEpisodesTop:Landroid/view/View;

.field private dataSelectorGroup:Landroid/widget/RadioGroup;

.field private dataSelectorRelated:Landroid/widget/RadioButton;

.field private dataSelectorRelatedTop:Landroid/view/View;

.field private detailFlipper:Landroid/widget/LinearLayout;

.field private detailSpacer:Landroid/view/View;

.field private download:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field private hdIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field protected horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private leftGroup:Landroid/view/View;

.field private myList:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

.field private shadow:Landroid/view/View;

.field protected titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private year:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    .line 73
    return-void
.end method

.method private alignShadow(I)V
    .locals 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->shadow:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 228
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->shadow:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 230
    :cond_0
    return-void
.end method

.method private manageDetailsOrientation()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 149
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->detailFlipper:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->detailSpacer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 150
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->detailFlipper:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->isSynopsisAndCreditsInSameRow()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->detailSpacer:Landroid/view/View;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v3}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->isSynopsisAndCreditsInSameRow()Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 153
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 150
    goto :goto_0

    :cond_2
    move v2, v1

    .line 151
    goto :goto_1
.end method

.method private setYear(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->year:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 267
    :goto_0
    return-void

    .line 264
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getYear()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->year:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->year:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private setupRadioButtons()V
    .locals 2

    .prologue
    .line 386
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup$DataSelectorButtonListener;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;)V

    .line 387
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    if-eqz v1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    :cond_1
    return-void
.end method

.method private updateCertification(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->certification:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 274
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getCertification()Ljava/lang/String;

    move-result-object v0

    .line 275
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->certification:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->certification:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateHD(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->hdIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    if-nez v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 401
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 402
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->hdIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowHdIcon(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/IconFontTextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method private updateMessage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 142
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 146
    :cond_0
    return-void

    .line 144
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateSupplementalInfo(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 286
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 310
    :goto_0
    return-void

    .line 290
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v1, :cond_2

    .line 291
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getSeasonCount()I

    move-result v0

    .line 292
    if-lez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getNumSeasonsLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 301
    :cond_2
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getRuntime()I

    move-result v0

    .line 302
    if-lez v0, :cond_3

    .line 303
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getRuntime()I

    move-result v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/TimeUtils;->getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 307
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected alignHeroImage()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setCenterHorizontally(Z)V

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getDpArtworkHeight(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->requestLayout()V

    .line 223
    return-void
.end method

.method protected alignLeftGroup()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->leftGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->leftGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getBookmarkWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 372
    :cond_0
    return-void
.end method

.method protected alignViews()V
    .locals 3

    .prologue
    .line 210
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->alignViews()V

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->leftGroup:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    float-to-int v0, v0

    .line 213
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->alignHeroImage()V

    .line 214
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->alignShadow(I)V

    .line 215
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->alignLeftGroup()V

    .line 216
    return-void

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->leftGroup:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a017a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method protected calculateImageHeight()I
    .locals 2

    .prologue
    .line 486
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    .line 487
    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public clearHeroImages()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_1

    .line 114
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 116
    :cond_1
    return-void
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViews()V

    .line 79
    const v0, 0x7f1000c4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    .line 80
    const v0, 0x7f1000c6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    .line 81
    const v0, 0x7f1000c5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodesTop:Landroid/view/View;

    .line 82
    const v0, 0x7f1000d5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 83
    const v0, 0x7f1000c7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelatedTop:Landroid/view/View;

    .line 84
    const v0, 0x7f1000ab

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->certification:Landroid/widget/TextView;

    .line 85
    const v0, 0x7f1000ad

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->hdIcon:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 86
    const v0, 0x7f1000ac

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    .line 87
    const v0, 0x7f1000c3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorGroup:Landroid/widget/RadioGroup;

    .line 88
    const v0, 0x7f1000c9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 89
    const v0, 0x7f100266

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->myList:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    .line 90
    const v0, 0x7f10020e

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->download:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 91
    const v0, 0x7f1000aa

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->year:Landroid/widget/TextView;

    .line 92
    const v0, 0x7f1000ce

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->leftGroup:Landroid/view/View;

    .line 93
    const v0, 0x7f1000ca

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->shadow:Landroid/view/View;

    .line 94
    const v0, 0x7f1000d0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->bookmarkGroup:Landroid/view/ViewGroup;

    .line 95
    const v0, 0x7f1000bf

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->bookmarkDuration:Landroid/widget/TextView;

    .line 96
    const v0, 0x7f1000c0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->bookmarkProgressBar:Landroid/widget/ProgressBar;

    .line 98
    const v0, 0x7f1000d3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->credits:Landroid/view/View;

    .line 99
    const v0, 0x7f1003bf

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->actions:Landroid/view/View;

    .line 100
    const v0, 0x7f1000cd

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->detailFlipper:Landroid/widget/LinearLayout;

    .line 101
    const v0, 0x7f1000d2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->detailSpacer:Landroid/view/View;

    .line 102
    return-void
.end method

.method public getAddToMyListButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->myList:Lcom/netflix/mediaclient/android/widget/IconFontTextView;

    return-object v0
.end method

.method public getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->download:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object v0
.end method

.method public getHeroImage2()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg2:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method public getRelatedTitleButton()Landroid/widget/RadioButton;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    return-object v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 120
    const v0, 0x7f030028

    return v0
.end method

.method public hideDataSelector()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorGroup:Landroid/widget/RadioGroup;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorGroup:Landroid/widget/RadioGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 378
    :cond_0
    return-void
.end method

.method public performClickOnRelatedTitles()V
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    invoke-virtual {v0}, Landroid/widget/RadioButton;->performClick()Z

    .line 495
    :cond_0
    return-void
.end method

.method public setBookmarkVisibility(I)V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->bookmarkGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->bookmarkGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 206
    :cond_0
    return-void
.end method

.method protected setEpisodesTextAsSelected()V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodesTop:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0095

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 435
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelatedTop:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 436
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 438
    :cond_1
    return-void
.end method

.method protected setRelatedTextAsSelected()V
    .locals 3

    .prologue
    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0015

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 443
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelatedTop:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorRelated:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 447
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 448
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodesTop:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->dataSelectorEpisodes:Landroid/widget/RadioButton;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTypeface(Landroid/graphics/Typeface;)V

    .line 452
    :cond_1
    return-void
.end method

.method protected updateActions()V
    .locals 3

    .prologue
    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->actions:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->actions:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 159
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->isSynopsisAndCreditsInSameRow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 160
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getBookmarkWidth()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getGutterWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 166
    :cond_0
    :goto_0
    return-void

    .line 162
    :cond_1
    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    goto :goto_0
.end method

.method protected updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V
    .locals 0

    .prologue
    .line 248
    if-nez p1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->updateHD(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    .line 253
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->setYear(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    .line 255
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->updateCertification(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    .line 256
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->updateSupplementalInfo(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    goto :goto_0
.end method

.method protected updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 0

    .prologue
    .line 313
    return-void
.end method

.method public updateBookmark(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->bookmarkProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v0

    if-lez v0, :cond_2

    .line 193
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v1

    div-int/2addr v0, v1

    .line 194
    :goto_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->bookmarkProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->bookmarkDuration:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->bookmarkDuration:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/util/TimeUtils;->getFormattedTime(ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :cond_1
    return-void

    .line 193
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateBookmarkTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 178
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/netflix/mediaclient/ui/details/AbsEpisodeView;->createTitleText(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 188
    :cond_0
    return-void

    .line 182
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09010d

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSeasonAbbrSeqLabel()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x1

    .line 183
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getEpisodeNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method protected updateCredits(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 2

    .prologue
    .line 170
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCredits(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 172
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->credits:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->credits:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getCreditsWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 175
    :cond_0
    return-void
.end method

.method public updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 1

    .prologue
    .line 125
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 126
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    move-object v0, p1

    .line 128
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;)V

    .line 130
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->setupRadioButtons()V

    .line 131
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->setEpisodesTextAsSelected()V

    .line 133
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->updateActions()V

    .line 135
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->manageDetailsOrientation()V

    .line 137
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->updateMessage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 138
    return-void
.end method

.method protected updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 318
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    const/4 v0, 0x0

    .line 323
    instance-of v1, p1, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    if-eqz v1, :cond_2

    move-object v0, p1

    .line 324
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;

    .line 325
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/KubrickVideo;->getKubrickStoryImgUrl()Ljava/lang/String;

    move-result-object v0

    .line 327
    :cond_2
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 328
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getStoryUrl()Ljava/lang/String;

    move-result-object v2

    .line 331
    :goto_1
    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 336
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v4, p3

    move v7, v6

    .line 331
    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    .line 341
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setTag(Ljava/lang/Object;)V

    .line 342
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0

    :cond_3
    move-object v2, v0

    goto :goto_1
.end method

.method protected updateImage(Ljava/lang/String;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)V
    .locals 9

    .prologue
    const/4 v6, 0x1

    .line 346
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 354
    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 359
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    move-object v2, p1

    move-object v4, p3

    move v7, v6

    move-object v8, p4

    .line 354
    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    .line 364
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, p1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setTag(Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    goto :goto_0
.end method

.method protected updateRelatedTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 234
    return-void
.end method

.method protected updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    .line 456
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->title:Landroid/widget/TextView;

    if-nez v0, :cond_1

    .line 481
    :cond_0
    :goto_0
    return-void

    .line 460
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitleImgUrl()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/netflix/mediaclient/util/AndroidUtils;->canDisplayTransparentWebpImages()Z

    move-result v0

    if-nez v0, :cond_3

    .line 464
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    goto :goto_0

    .line 469
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->title:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v9}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 471
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->heroImage:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 472
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    sget-object v8, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    move v7, v6

    .line 471
    invoke-interface/range {v0 .. v8}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZILandroid/graphics/Bitmap$Config;)V

    .line 475
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 477
    invoke-virtual {v0, v9, v9, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 478
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->titleImg:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method
