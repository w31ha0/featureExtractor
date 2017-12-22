.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;
.super Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;
.source "BarkerShowDetailsFrag.java"


# instance fields
.field private badgeContainer:Landroid/view/View;

.field private clickListener:Landroid/view/View$OnClickListener;

.field private delayedClickListener:Landroid/view/View$OnClickListener;

.field private episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

.field private episodePreviewContainer:Landroid/view/View;

.field protected image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field protected progressBarBackground:Landroid/view/View;

.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

.field protected unavailable:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 788
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    .line 789
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;-><init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;Landroid/content/Context;I)V

    .line 777
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView$1;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->clickListener:Landroid/view/View$OnClickListener;

    .line 790
    return-void
.end method

.method static synthetic access$2800(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;)Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;
    .locals 1

    .prologue
    .line 766
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 0

    .prologue
    .line 766
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->playEpisode(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;)V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->expandSynopsis()V

    return-void
.end method

.method private expandSynopsis()V
    .locals 2

    .prologue
    .line 941
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->synopsis:Landroid/widget/TextView;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 942
    return-void
.end method

.method private updateRuntime(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 967
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodeTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 968
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v0

    if-lez v0, :cond_2

    .line 969
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodeTime:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 971
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09014f

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v3

    invoke-interface {v3}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getRuntime()I

    move-result v3

    invoke-static {v3}, Lcom/netflix/mediaclient/util/TimeUtils;->convertSecondsToMinutes(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 972
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "        "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getAvailabilityDateMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 976
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodeTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 981
    :cond_1
    :goto_0
    return-void

    .line 978
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodeTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateSelection(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 3

    .prologue
    .line 866
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->getPlayableBookmarkPosition()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    .line 867
    :goto_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->isCurrentEpisode:Z

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    const v0, 0x7f0f0110

    :goto_1
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 869
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->synopsis:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 870
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 871
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->isCurrentEpisode:Z

    if-eqz v1, :cond_0

    .line 872
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->expandSynopsis()V

    .line 875
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodeTime:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 876
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodeTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 878
    :cond_1
    return-void

    .line 866
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 867
    :cond_3
    const v0, 0x7f0f0014

    goto :goto_1
.end method


# virtual methods
.method protected adjustEpisodeImageHeight()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f100000    # 0.5625f

    .line 991
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1002
    :goto_0
    return-void

    .line 994
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->isDisplayPageRefresh()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodePreviewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodePreviewContainer:Landroid/view/View;

    .line 996
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    .line 999
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNumColumns()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0179

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    .line 1000
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/barker/BarkerUtils;->getDetailsPageContentWidth(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    sub-float v0, v2, v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getNumColumns()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    mul-float/2addr v0, v3

    float-to-int v0, v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method

.method protected adjustEpisodeImageWidth()V
    .locals 2

    .prologue
    .line 985
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper;->isInTest(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 986
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodePreviewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getEpisodeImageWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 988
    :cond_0
    return-void
.end method

.method protected disablePlay()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 836
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->playButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->playButton:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->unavailable:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 841
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->unavailable:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 844
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setEnabled(Z)V

    .line 846
    return-void
.end method

.method protected enablePlay(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 3

    .prologue
    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->playButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 812
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->playButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->unavailable:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 816
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->unavailable:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 818
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setEnabled(Z)V

    .line 819
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodeDetails:Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;

    .line 820
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->delayedClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_2

    .line 821
    new-instance v0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 822
    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->clickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->delayedClickListener:Landroid/view/View$OnClickListener;

    .line 824
    :cond_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->getPressableView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->delayedClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 825
    return-void
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 1006
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->findViews()V

    .line 1007
    const v0, 0x7f1000b0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 1008
    const v0, 0x7f1000bb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->progressBarBackground:Landroid/view/View;

    .line 1009
    const v0, 0x7f1000b2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->unavailable:Landroid/view/View;

    .line 1010
    const v0, 0x7f1000af

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodePreviewContainer:Landroid/view/View;

    .line 1011
    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->badgeContainer:Landroid/view/View;

    .line 1012
    return-void
.end method

.method protected getDefaultSynopsisVisibility()I
    .locals 1

    .prologue
    .line 794
    const/4 v0, 0x0

    return v0
.end method

.method protected getPressableView()Landroid/view/View;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    return-object v0
.end method

.method protected getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
    .locals 1

    .prologue
    .line 832
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v0

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0

    .prologue
    .line 850
    iput-boolean p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->checked:Z

    .line 851
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->updateProgressBar()V

    .line 852
    return-void
.end method

.method protected setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 1

    .prologue
    .line 799
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-nez v0, :cond_0

    .line 808
    :goto_0
    return-void

    .line 803
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 804
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->enablePlay(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    goto :goto_0

    .line 806
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->disablePlay()V

    goto :goto_0
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V
    .locals 0

    .prologue
    .line 856
    invoke-super {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;Z)V

    .line 857
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->updateEpisodeImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 858
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->updateRuntime(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 859
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 860
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->updateProgressBar()V

    .line 861
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->setupPlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 862
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->updateSelection(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V

    .line 863
    return-void
.end method

.method protected updateEpisodeImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 945
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-eqz v0, :cond_1

    .line 946
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getInterestingSmallUrl()Ljava/lang/String;

    move-result-object v2

    .line 947
    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 952
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 953
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    move v7, v6

    .line 948
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 959
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->adjustEpisodeImageWidth()V

    .line 960
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->adjustEpisodeImageHeight()V

    .line 962
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getEpisodeImageWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 964
    :cond_1
    return-void
.end method

.method protected updateProgressBar()V
    .locals 2

    .prologue
    .line 882
    invoke-super {p0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$EpisodeView;->updateProgressBar()V

    .line 884
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->progressBarBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    if-nez v0, :cond_1

    .line 895
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 889
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->progressBarBackground:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 890
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->progressBarBackground:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->image:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 891
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodePreviewContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getEpisodeImageWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 893
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->progressBarBackground:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 2

    .prologue
    .line 918
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->synopsis:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 922
    :cond_1
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 923
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->synopsis:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 928
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getSynopsisWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 929
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->synopsis:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 931
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->synopsis:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView$2;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView$2;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 925
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->synopsis:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->getAvailabilityDateMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 929
    :cond_3
    const/4 v0, 0x5

    goto :goto_2
.end method

.method protected updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;)V
    .locals 3

    .prologue
    .line 898
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 914
    :cond_0
    :goto_0
    return-void

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 903
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->title:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f00bd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 906
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodeNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 908
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->episodeNumber:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/EpisodeDetails;->isNSRE()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 911
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->badgeContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->badgeContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$BarkerEpisodeView;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    iget-object v1, v1, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->barker:Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerHelper$BarkerBars;->getSynopsisWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_0

    .line 908
    :cond_4
    const/4 v0, 0x0

    goto :goto_1
.end method
