.class Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;
.super Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;
.source "BarkerKidsMovieDetailsFrag.java"


# instance fields
.field private pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag;

    .line 124
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;-><init>(Landroid/content/Context;)V

    .line 125
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;->setupViews()V

    .line 126
    return-void
.end method

.method private setupViews()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 146
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;->getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    .line 147
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;->getHeroImage2()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setPressedStateHandlerEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;->pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;->pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    .line 149
    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;->onCWClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    .line 148
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected calculateImageHeight()I
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v0

    .line 136
    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 141
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerVideoDetailsViewGroup;->findViews()V

    .line 142
    const v0, 0x7f1001f2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsMovieDetailsFrag$BarkerKidsMovieDetailsViewGroup;->pressableCWImgGroup:Lcom/netflix/mediaclient/android/widget/PressAnimationFrameLayout;

    .line 143
    return-void
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 130
    const v0, 0x7f030080

    return v0
.end method

.method protected setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 0

    .prologue
    .line 157
    return-void
.end method
