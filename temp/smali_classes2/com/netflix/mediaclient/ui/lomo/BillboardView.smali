.class public Lcom/netflix/mediaclient/ui/lomo/BillboardView;
.super Landroid/widget/RelativeLayout;
.source "BillboardView.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/RelativeLayout;",
        "Lcom/netflix/mediaclient/ui/lomo/VideoViewGroup$IVideoView",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;",
        ">;"
    }
.end annotation


# static fields
.field public static final MOTION_BB_MAX_LOOPS:I = 0x3

.field public static final MUTE_VOLUME:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "BillboardView"


# instance fields
.field protected addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

.field private awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field protected cta1Button:Landroid/widget/Button;

.field protected cta2Button:Landroid/widget/Button;

.field private dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field protected detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

.field protected episodeBadge:Landroid/widget/TextView;

.field protected impressionParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected info:Landroid/widget/TextView;

.field protected infoButton:Landroid/widget/Button;

.field protected infoPhone:Landroid/widget/TextView;

.field protected infoText:Ljava/lang/String;

.field private infoViewGroup:Landroid/view/View;

.field private infoViewMargin:Landroid/view/View;

.field private infoWrapper:Landroid/view/View;

.field private isTablet:Z

.field private mActionToken:Ljava/lang/String;

.field private mBillBoardHeight:I

.field protected mDetailsClickListener:Landroid/view/View$OnClickListener;

.field private mGUID:Ljava/lang/String;

.field private mImpressionToken:Ljava/lang/String;

.field protected mTitle:Ljava/lang/String;

.field private mTitleDrawable:Lcom/netflix/mediaclient/android/widget/TitleDrawable;

.field private mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

.field private motionBillboardsEnabled:Z

.field private motionStoryArt:Landroid/view/TextureView;

.field private muteButton:Landroid/widget/TextView;

.field private myListButton:Landroid/widget/Button;

.field protected playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

.field private shadowOverlay:Landroid/view/View;

.field private shadowOverlayGradient:Landroid/view/View;

.field protected showArtworkOnly:Z

.field protected storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

.field protected storyArtFrame:Landroid/widget/FrameLayout;

.field protected storyArtUrl:Ljava/lang/String;

.field private synopsis:Landroid/widget/TextView;

.field private synopsisText:Ljava/lang/String;

.field private tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

.field private tvCardUrl:Ljava/lang/String;

.field protected video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 92
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    .line 96
    sget-object v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    .line 587
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mDetailsClickListener:Landroid/view/View$OnClickListener;

    .line 144
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->init()V

    .line 145
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    .line 96
    sget-object v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    .line 587
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mDetailsClickListener:Landroid/view/View$OnClickListener;

    .line 149
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->init()V

    .line 150
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 92
    sget-object v0, Lcom/netflix/mediaclient/ui/common/PlayContext;->EMPTY_CONTEXT:Lcom/netflix/mediaclient/ui/common/PlayContext;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    .line 96
    sget-object v0, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    .line 587
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$1;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mDetailsClickListener:Landroid/view/View$OnClickListener;

    .line 154
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->init()V

    .line 155
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->hideMotionBB()V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMotionBB()V

    return-void
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V
    .locals 0

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMuteButton()V

    return-void
.end method

.method static synthetic access$400(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    return-object v0
.end method

.method static computeHeight(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 2

    .prologue
    .line 267
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shouldShowArtworkOnly(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 268
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getPortraitBillboardHeight(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    .line 269
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getPortraitBillboardPhoneOffset(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    .line 270
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasCTA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getPortraitBillboardCTAOffset(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v1

    add-int/2addr v0, v1

    .line 277
    :cond_0
    :goto_0
    return v0

    .line 275
    :cond_1
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getLandscapeBillboardHeight(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    goto :goto_0
.end method

.method private downloadVideo(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 907
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->motionBillboard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$5;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-virtual {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->fetchAndCacheResource(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 926
    return-void
.end method

.method private generateCallsToAction(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/16 v9, 0x8

    .line 512
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 513
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    .line 514
    :cond_0
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Manager is null/notReady - can\'t reload data"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    :goto_0
    return-void

    .line 518
    :cond_1
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_3

    .line 520
    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 521
    new-instance v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    const-string/jumbo v1, ""

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string/jumbo v3, "play"

    const-string/jumbo v4, ""

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string/jumbo v6, "play"

    iget-object v7, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v7}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-direct/range {v0 .. v7}, Lcom/netflix/model/leafs/originals/BillboardCTA;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v8

    .line 525
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 531
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_4

    .line 532
    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta2Button:Landroid/widget/Button;

    invoke-virtual {p0, v0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V

    .line 533
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 539
    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v11, :cond_5

    .line 540
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/model/leafs/originals/BillboardCTA;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta1Button:Landroid/widget/Button;

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V

    goto :goto_0

    .line 523
    :cond_3
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActions()Ljava/util/List;

    move-result-object v0

    move-object v1, v0

    goto :goto_1

    .line 535
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMyListButton(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    .line 536
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMyListState()V

    .line 537
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta2Button:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 542
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta1Button:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private static getLandscapeBillboardHeight(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 2

    .prologue
    .line 296
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    int-to-float v1, v0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x4018f5c3    # 2.39f

    :goto_0
    div-float v0, v1, v0

    float-to-int v0, v0

    return v0

    :cond_0
    const v0, 0x3fe39581    # 1.778f

    goto :goto_0
.end method

.method public static getPortraitBillboardCTAOffset(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 2

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private static getPortraitBillboardHeight(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 289
    invoke-static {p0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f8ccccd    # 1.1f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 292
    :goto_0
    return v0

    :cond_0
    invoke-static {p0, v1}, Lcom/netflix/mediaclient/ui/lomo/LoMoViewPager;->computeViewPagerWidth(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Z)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_0
.end method

.method public static getPortraitBillboardPhoneOffset(Landroid/content/Context;)I
    .locals 2

    .prologue
    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private hideMotionBB()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 937
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Hiding motion BB"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    .line 939
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 940
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 941
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 942
    return-void
.end method

.method private init()V
    .locals 3

    .prologue
    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setFocusable(Z)V

    .line 160
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 161
    new-instance v1, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    invoke-direct {v1, v0, p0}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    .line 162
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    .line 163
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getLayoutId()I

    move-result v2

    invoke-virtual {v1, v2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 164
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViews()V

    .line 166
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isTablet()Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    .line 169
    :cond_0
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shouldShowArtworkOnly(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    .line 173
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setupViews()V

    .line 175
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->computeHeight(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mBillBoardHeight:I

    .line 177
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateViewVisibility()V

    .line 178
    return-void
.end method

.method private isBillboardType(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;)Z
    .locals 2

    .prologue
    .line 139
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setTonedBackground(Lcom/netflix/model/leafs/originals/BillboardBackground;)V
    .locals 8

    .prologue
    const v7, 0x7f0f00f4

    const/4 v6, 0x0

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    .line 839
    if-eqz p1, :cond_0

    .line 840
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtUrl:Ljava/lang/String;

    .line 841
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getTone()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "light"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 843
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0020

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 844
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 846
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 847
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v3, v3, v3, v6}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 855
    :cond_0
    :goto_0
    return-void

    .line 849
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 850
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v5, v3, v4, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 851
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0110

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 852
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v5, v3, v4, v1}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method private setUpMotionBillboard(Ljava/lang/String;Z)V
    .locals 7

    .prologue
    .line 858
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->isDonePlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 862
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    .line 863
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-nez v0, :cond_1

    .line 864
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    const/4 v3, 0x3

    const/4 v4, 0x0

    sget-object v5, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->motionBillboard:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    new-instance v6, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;

    invoke-direct {v6, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$4;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    move v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/ui/lomo/MotionBillboardMediaPlayerWrapper;-><init>(Landroid/view/TextureView;ZIFLcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper$PlaybackEventsListener;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    .line 894
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->downloadVideo(Ljava/lang/String;)V

    .line 901
    :goto_0
    return-void

    .line 896
    :cond_1
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMotionBB()V

    goto :goto_0

    .line 899
    :cond_2
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->hideMotionBB()V

    goto :goto_0
.end method

.method public static shouldShowArtworkOnly(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 219
    .line 220
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 221
    invoke-virtual {p0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isTablet()Z

    move-result v1

    .line 223
    :goto_0
    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    move v1, v0

    goto :goto_0
.end method

.method private showBillboardError()V
    .locals 3

    .prologue
    const v2, 0x7f090073

    const/16 v1, 0x8

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta1Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta2Button:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoWrapper:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 325
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 326
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 327
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 328
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrGone(Landroid/view/View;Z)V

    .line 329
    return-void

    .line 328
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showListEpisodesButton(Lcom/netflix/model/leafs/originals/BillboardCTA;)V
    .locals 4

    .prologue
    .line 618
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMDPButton()V

    .line 619
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getSequenceNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getTextForCTA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 620
    return-void
.end method

.method private showMDPButton()V
    .locals 2

    .prologue
    .line 583
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 584
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->generateDetailsClickListener()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 585
    return-void
.end method

.method private showMotionBB()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 929
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "Showing motion BB"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 933
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateMuteButton()V

    .line 934
    return-void
.end method

.method private showMyListButton(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 547
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 548
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 550
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 551
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 553
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    .line 555
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getTrackId()I

    move-result v5

    move-object v3, p1

    move-object v4, p2

    .line 554
    invoke-virtual/range {v0 .. v6}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->createAddToMyListWrapper(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Landroid/widget/TextView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IZ)Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    .line 556
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->registerAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 558
    :cond_1
    return-void
.end method

.method private updateAwardsHeadline(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 824
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAwardsHeadline()Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;

    move-result-object v0

    .line 825
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardAwardsHeadline;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 827
    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 832
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 836
    :goto_2
    return-void

    .line 824
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 825
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1

    .line 834
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateDateBadge(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 803
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getDateBadge()Lcom/netflix/model/leafs/originals/BillboardDateBadge;

    move-result-object v0

    .line 804
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardDateBadge;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 806
    :goto_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREShow(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 807
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    iget-object v4, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 810
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v9}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 811
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoWrapper:Landroid/view/View;

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 821
    :goto_2
    return-void

    .line 803
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 804
    :cond_1
    const-string/jumbo v2, ""

    goto :goto_1

    .line 813
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v8}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setVisibility(I)V

    .line 814
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 815
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoWrapper:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 818
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method private updateLogoSize(Lcom/netflix/model/leafs/originals/BillboardSummary;II)V
    .locals 4

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a00de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 782
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0a00df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 783
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v2

    .line 785
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 788
    div-int/lit8 v0, v2, 0x3

    .line 790
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 788
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 793
    mul-int v1, v0, p2

    div-int/2addr v1, p3

    .line 796
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 797
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 798
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 799
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 800
    return-void
.end method

.method private updateMuteButton()V
    .locals 3

    .prologue
    .line 945
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    .line 946
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f090298

    :goto_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 947
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$6;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    :cond_0
    return-void

    .line 946
    :cond_1
    const v0, 0x7f09029a

    goto :goto_0
.end method


# virtual methods
.method addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 759
    invoke-virtual {p2}, Landroid/widget/Button;->requestFocus()Z

    .line 760
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;

    invoke-direct {v1, p0, v0, p3, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$3;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/Playable;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 771
    return-void
.end method

.method addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/widget/Button;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 754
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Landroid/widget/Button;Ljava/lang/String;)V

    .line 755
    return-void
.end method

.method protected addTokenToImpression(Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;)V
    .locals 3

    .prologue
    .line 427
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 428
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->ACTION:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    if-ne p1, v0, :cond_1

    .line 429
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mActionToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_0
    :goto_0
    return-void

    .line 431
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mImpressionToken:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected findViews()V
    .locals 1

    .prologue
    .line 185
    const v0, 0x7f1000e0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewGroup:Landroid/view/View;

    .line 186
    const v0, 0x7f1000e2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewMargin:Landroid/view/View;

    .line 187
    const v0, 0x7f1000e6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    .line 188
    const v0, 0x7f1000dd

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    .line 189
    const v0, 0x7f1000e4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoWrapper:Landroid/view/View;

    .line 190
    const v0, 0x7f1000e5

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->episodeBadge:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f1000e7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->dateBadge:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 192
    const v0, 0x7f1000e1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 193
    const v0, 0x7f1000e8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    .line 194
    const v0, 0x7f1000e3

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    .line 195
    const v0, 0x7f1000da

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    .line 196
    const v0, 0x7f1000db

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    .line 197
    const v0, 0x7f1000dc

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionStoryArt:Landroid/view/TextureView;

    .line 198
    const v0, 0x7f1000ee

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->muteButton:Landroid/widget/TextView;

    .line 199
    const v0, 0x7f1000de

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    .line 200
    const v0, 0x7f1000df

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    .line 201
    const v0, 0x7f1000ea

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta1Button:Landroid/widget/Button;

    .line 202
    const v0, 0x7f1000eb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->cta2Button:Landroid/widget/Button;

    .line 203
    const v0, 0x7f1000ec

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->myListButton:Landroid/widget/Button;

    .line 204
    const v0, 0x7f1000ed

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoButton:Landroid/widget/Button;

    .line 205
    return-void
.end method

.method protected generateDetailsClickListener()Landroid/view/View$OnClickListener;
    .locals 2

    .prologue
    .line 602
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 603
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;

    invoke-direct {v1, p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$2;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Lcom/netflix/mediaclient/servicemgr/ServiceManager;)V

    return-object v1
.end method

.method public getGUID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 774
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    sget-object v1, Lcom/netflix/mediaclient/util/log/UIViewLogUtils;->MISSING_GUID:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 775
    invoke-static {}, Lcom/netflix/mediaclient/util/log/ConsolidatedLoggingUtils;->createGUID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    .line 777
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;
    .locals 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtUrl:Ljava/lang/String;

    .line 302
    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v1, :cond_0

    .line 303
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v1

    .line 304
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v2

    if-nez v2, :cond_1

    .line 315
    :cond_0
    :goto_0
    return-object v0

    .line 312
    :cond_1
    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic getImageUrl(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getInfoText(Lcom/netflix/model/leafs/originals/BillboardSummary;)Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 488
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    .line 489
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090074

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 491
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREEpisodic(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-nez v0, :cond_0

    .line 492
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f09010c

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    .line 494
    :cond_0
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBadgeKeys()Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->episodeBadge:Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->toggleEpisodeBadge(Ljava/util/List;Landroid/widget/TextView;)V

    .line 496
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREShow(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_1

    .line 497
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 501
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 508
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    return-object v0

    .line 492
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    goto :goto_0

    .line 503
    :cond_4
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/service/configuration/persistent/Config_Ab7814;->hasVerticalBillboard(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 504
    iput-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    goto :goto_1
.end method

.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f030029

    return v0
.end method

.method public getPlayContext()Lcom/netflix/mediaclient/ui/common/PlayContext;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    return-object v0
.end method

.method public getTrackId()I
    .locals 3

    .prologue
    .line 572
    const/4 v0, -0x1

    .line 573
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    if-eqz v1, :cond_0

    .line 574
    const-string/jumbo v0, "BillboardView"

    const-string/jumbo v1, "TrackId found in PlayContextImpl"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    invoke-interface {v0}, Lcom/netflix/mediaclient/ui/common/PlayContext;->getTrackId()I

    move-result v0

    .line 579
    :goto_0
    return v0

    .line 577
    :cond_0
    const-string/jumbo v1, "BillboardView"

    const-string/jumbo v2, "TrackId not found!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    .line 244
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 245
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-interface {v0, v1}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->clear(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;)V

    .line 246
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setVisibility(I)V

    .line 247
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->remove(Landroid/view/View;)V

    .line 249
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mediaPlayerWrapper:Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/common/MediaPlayerWrapper;->releaseResources()V

    .line 254
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 255
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    if-eqz v1, :cond_1

    .line 256
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addToListWrapper:Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;

    invoke-virtual {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->unregisterAddToMyListListener(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/AddToListData$StateListener;)V

    .line 258
    :cond_1
    return-void
.end method

.method protected isNSREEpisodic(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .prologue
    .line 135
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->NSRE_EPISODIC:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isBillboardType(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;)Z

    move-result v0

    return v0
.end method

.method protected isNSREShow(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;->NSRE_SHOW:Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isBillboardType(Lcom/netflix/model/leafs/originals/BillboardSummary;Lcom/netflix/mediaclient/ui/lomo/BillboardView$BillboardType;)Z

    move-result v0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    .prologue
    .line 262
    iget v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mBillBoardHeight:I

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-super {p0, p1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 263
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .prologue
    .line 961
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    if-nez v0, :cond_1

    .line 1003
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 966
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 973
    new-instance v1, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;

    invoke-direct {v1, p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$7;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Z)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected recordImpression(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 3

    .prologue
    .line 439
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    .line 440
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "awardCampaign"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getAwardTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "billboardTheme"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardTheme()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    const-string/jumbo v1, "billboardType"

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    return-void
.end method

.method protected setupCTAButton(Lcom/netflix/model/leafs/originals/BillboardCTA;Landroid/widget/Button;)V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 623
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getType()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 665
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 668
    :goto_1
    return-void

    .line 623
    :sswitch_0
    const-string/jumbo v2, "mdp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v3

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "addToPlaylist"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v4

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "details"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "play"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 625
    :pswitch_0
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 626
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMDPButton()V

    goto :goto_1

    .line 629
    :pswitch_1
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 630
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showMyListButton(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;)V

    goto :goto_1

    .line 633
    :pswitch_2
    invoke-virtual {p2, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 634
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showListEpisodesButton(Lcom/netflix/model/leafs/originals/BillboardCTA;)V

    goto :goto_1

    .line 637
    :pswitch_3
    invoke-virtual {p2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 638
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getSequenceNumber()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->getTextForCTA(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 639
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->ignoreBookmark()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "0"

    move-object v6, v0

    .line 640
    :goto_2
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 641
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 642
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-virtual {p0, v0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addPlayableToCTA(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Landroid/widget/Button;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 639
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getBookmarkPosition()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    .line 644
    :cond_2
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "trailer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "recap"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 645
    :cond_3
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 646
    :cond_4
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "season"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 647
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "continue"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    .line 648
    if-eqz v1, :cond_5

    .line 649
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v4, p0, p2, v6, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;Z)V

    invoke-interface {v0, v2, v5, v3, v4}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 651
    :cond_5
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SEASON:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    new-instance v5, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v5, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface/range {v0 .. v5}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodes(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;IILcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 653
    :cond_6
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "episode"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 654
    :cond_7
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchEpisodeDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 656
    :cond_8
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_9

    .line 657
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 659
    :cond_9
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardCTA;->getVideoId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;

    invoke-direct {v2, p0, p2, v6}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$FetchSupplementalsCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;Landroid/widget/Button;Ljava/lang/String;)V

    invoke-interface {v0, v1, v5, v3, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto/16 :goto_1

    .line 623
    :sswitch_data_0
    .sparse-switch
        0x1a5b9 -> :sswitch_0
        0x348b34 -> :sswitch_3
        0x5cd8f242 -> :sswitch_2
        0x700608ee -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected setupViews()V
    .locals 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 211
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setPaddingStart(Landroid/view/View;I)V

    .line 212
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 213
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 214
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 216
    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    move v1, v0

    goto :goto_0
.end method

.method public update(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 10

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 333
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v8

    .line 334
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getBillboardSummary()Lcom/netflix/model/leafs/originals/BillboardSummary;

    move-result-object v9

    .line 336
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackgroundPortrait()Lcom/netflix/model/leafs/originals/BillboardBackgroundPortrait;

    move-result-object v0

    if-nez v0, :cond_1

    .line 340
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showBillboardError()V

    .line 424
    :goto_0
    return-void

    .line 347
    :cond_1
    new-instance v0, Lcom/netflix/mediaclient/ui/common/PlayContextImp;

    invoke-direct {v0, p2, p3}, Lcom/netflix/mediaclient/ui/common/PlayContextImp;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;I)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->playContext:Lcom/netflix/mediaclient/ui/common/PlayContext;

    .line 348
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    .line 350
    invoke-virtual {p0, v7}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setVisibility(I)V

    .line 351
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090060

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v6, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getTitle()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 352
    invoke-virtual {p0, v4}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 353
    invoke-virtual {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->recordImpression(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 354
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getActionToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mActionToken:Ljava/lang/String;

    .line 355
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getImpressionToken()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->mImpressionToken:Ljava/lang/String;

    .line 357
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardBackground;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtUrl:Ljava/lang/String;

    .line 358
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardLogo;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCardUrl:Ljava/lang/String;

    .line 359
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/model/leafs/originals/BillboardLogo;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 360
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getLogo()Lcom/netflix/model/leafs/originals/BillboardLogo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/model/leafs/originals/BillboardLogo;->getWidth()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 361
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getSynopsis()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsisText:Ljava/lang/String;

    .line 362
    invoke-virtual {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getInfoText(Lcom/netflix/model/leafs/originals/BillboardSummary;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    .line 364
    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateDateBadge(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 365
    invoke-direct {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateAwardsHeadline(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    .line 366
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->motionBillboardsEnabled:Z

    if-eqz v2, :cond_2

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 367
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getMotionShouldLoop()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setUpMotionBillboard(Ljava/lang/String;Z)V

    .line 375
    :cond_2
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->detailsListener:Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iget-object v5, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v5}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v5

    invoke-virtual {v2, v3, p1, v5}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;->update(Landroid/view/View;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/android/widget/PressedStateHandler;)V

    .line 376
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->generateDetailsClickListener()Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-boolean v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v2, :cond_5

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v6}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setPressedStateHandlerEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 383
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00db

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v7, v7, v7, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setPadding(IIII)V

    .line 410
    :goto_1
    invoke-virtual {p0, p1, p5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getImageUrl(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Z)Ljava/lang/String;

    move-result-object v2

    .line 411
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->merchStill:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 414
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->IMPRESSION:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->addTokenToImpression(Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;)V

    .line 415
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 418
    const-string/jumbo v0, "BillboardView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Loggin billboard impression for video: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 419
    invoke-virtual {v8}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;->IMPRESSION:Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->impressionParams:Ljava/util/Map;

    invoke-interface {v0, p1, v1, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->logBillboardActivity(Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/servicemgr/BillboardInteractionType;Ljava/util/Map;)V

    .line 421
    :cond_4
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateViewVisibility()V

    .line 422
    invoke-virtual {p0, v9}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateOriginalsLayout(Lcom/netflix/model/leafs/originals/BillboardSummary;)V

    goto/16 :goto_0

    .line 388
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoPhone:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setCutomCroppingEnabled(Z)V

    .line 392
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v2, v7, v7, v7, v7}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setPadding(IIII)V

    .line 393
    invoke-virtual {v9}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBackground()Lcom/netflix/model/leafs/originals/BillboardBackground;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->setTonedBackground(Lcom/netflix/model/leafs/originals/BillboardBackground;)V

    .line 399
    invoke-direct {p0, v9, v0, v1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->updateLogoSize(Lcom/netflix/model/leafs/originals/BillboardSummary;II)V

    .line 400
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCard:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->tvCardUrl:Ljava/lang/String;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    sget-object v5, Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;->DARK_NO_PLACEHOLDER:Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move v7, v6

    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 404
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->info:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 405
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsisText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 407
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->generateCallsToAction(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;)V

    goto/16 :goto_1
.end method

.method public bridge synthetic update(Ljava/lang/Object;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V
    .locals 6

    .prologue
    .line 67
    move-object v1, p1

    check-cast v1, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->update(Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;Lcom/netflix/mediaclient/servicemgr/interface_/trackable/Trackable;IZZ)V

    return-void
.end method

.method protected updateMyListState()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 561
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    .line 562
    if-eqz v0, :cond_0

    .line 563
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v1, v2, :cond_1

    .line 564
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;

    invoke-direct {v2, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-interface {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchMovieDetails(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getBrowse()Lcom/netflix/mediaclient/servicemgr/IBrowseManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->video:Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/Billboard;->getId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView$UpdateMyListCallback;-><init>(Lcom/netflix/mediaclient/ui/lomo/BillboardView;)V

    invoke-interface {v0, v1, v4, v2, v3}, Lcom/netflix/mediaclient/servicemgr/IBrowseManager;->fetchShowDetails(Ljava/lang/String;Ljava/lang/String;ZLcom/netflix/mediaclient/servicemgr/ManagerCallback;)Z

    goto :goto_0
.end method

.method protected updateOriginalsLayout(Lcom/netflix/model/leafs/originals/BillboardSummary;)V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 446
    if-nez p1, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 450
    :cond_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->isOriginal()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isNSREEpisodic(Lcom/netflix/model/leafs/originals/BillboardSummary;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->isCurrentLocaleRTL()Z

    move-result v0

    if-nez v0, :cond_4

    .line 455
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 456
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 460
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewMargin:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 462
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0009

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 463
    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 473
    :cond_2
    :goto_1
    invoke-virtual {p1}, Lcom/netflix/model/leafs/originals/BillboardSummary;->getBillboardType()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "award"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 475
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    .line 476
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a00dc

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-nez v1, :cond_3

    .line 477
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->awardsHeadline:Lcom/netflix/mediaclient/android/widget/AdvancedImageView;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/android/widget/AdvancedImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 480
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 466
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 482
    :cond_5
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method protected updateViewVisibility()V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 227
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->infoViewGroup:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 228
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlay:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->shadowOverlayGradient:Landroid/view/View;

    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->showArtworkOnly:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArt:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->storyArtFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->synopsis:Landroid/widget/TextView;

    iget-boolean v3, p0, Lcom/netflix/mediaclient/ui/lomo/BillboardView;->isTablet:Z

    if-eqz v3, :cond_3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 235
    return-void

    :cond_0
    move v0, v2

    .line 227
    goto :goto_0

    :cond_1
    move v0, v2

    .line 228
    goto :goto_1

    :cond_2
    move v0, v2

    .line 229
    goto :goto_2

    :cond_3
    move v2, v1

    .line 234
    goto :goto_3
.end method
