.class Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;
.super Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;
.source "BarkerKidsShowDetailsFrag.java"


# instance fields
.field private pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 448
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    .line 449
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    .line 450
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->setupViews()V

    .line 451
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 483
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    .line 484
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->getHeroImage2()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    .line 486
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->onCWClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    .line 485
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 487
    return-void
.end method


# virtual methods
.method protected calculateImageHeight()I
    .locals 2

    .prologue
    .line 460
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    .line 461
    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 478
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViews()V

    .line 479
    const v0, 0x7f1001f2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    .line 480
    return-void
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 455
    const v0, 0x7f030080

    return v0
.end method

.method protected setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 494
    return-void
.end method

.method public updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 2

    .prologue
    .line 466
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 467
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 469
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 474
    :goto_0
    return-void

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsShowDetailsViewGroup;->basicSupplementalInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    goto :goto_0
.end method
