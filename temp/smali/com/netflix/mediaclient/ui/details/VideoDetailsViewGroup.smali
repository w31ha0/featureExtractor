.class public Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;
.super Landroid/widget/LinearLayout;
.source "VideoDetailsViewGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoDetailsViewGroup"

.field public static final UPDATE_CAPABILITIES_BADGES:Ljava/lang/String; = "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

.field private static final mCapabilityBadgesMap:Ljava/util/EnumMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumMap",
            "<",
            "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private actionBarDummyView:Landroid/view/View;

.field protected actionButtonsCreated:Z

.field protected addToMyList:Landroid/widget/TextView;

.field protected addToMyListGroup:Landroid/view/View;

.field protected addToMyListLabel:Landroid/widget/TextView;

.field protected backgroundImg:Landroid/widget/ImageView;

.field private badgesPadding:I

.field protected basicInfo:Landroid/widget/TextView;

.field protected basicInfoBadges:Landroid/widget/TextView;

.field protected copyright:Landroid/view/ViewGroup;

.field protected creators:Landroid/widget/TextView;

.field protected details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

.field protected episodeBadge:Landroid/widget/TextView;

.field protected episodeTitle:Landroid/widget/TextView;

.field protected footerViewGroup:Landroid/view/ViewGroup;

.field protected horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

.field protected imgGroup:Landroid/view/ViewGroup;

.field protected infoContainer:Landroid/view/View;

.field protected mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

.field private mThumbsToMatchPercentageAnimator:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

.field protected matchPercentage:Landroid/widget/TextView;

.field protected myListMdp:Landroid/view/ViewStub;

.field protected myListSdp:Landroid/view/ViewStub;

.field protected onCWClickListener:Landroid/view/View$OnClickListener;

.field protected play:Landroid/view/View;

.field private final ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field protected relatedTitle:Landroid/widget/TextView;

.field protected starring:Landroid/widget/TextView;

.field protected supplemental:Landroid/widget/TextView;

.field protected synopsis:Landroid/widget/TextView;

.field protected title:Landroid/widget/TextView;

.field private final updateCapabilityBadges:Landroid/content/BroadcastReceiver;

.field protected userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

.field protected videoActionsContainer:Landroid/widget/LinearLayout;

.field private videoId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 108
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;

    const-class v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-direct {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mCapabilityBadgesMap:Ljava/util/EnumMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 166
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 833
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 853
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCapabilityBadges:Landroid/content/BroadcastReceiver;

    .line 167
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->init()V

    .line 168
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 171
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 833
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 853
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCapabilityBadges:Landroid/content/BroadcastReceiver;

    .line 172
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->init()V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 833
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$5;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 853
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$6;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCapabilityBadges:Landroid/content/BroadcastReceiver;

    .line 177
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->init()V

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;IZ)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateMatchPercentage(IZ)V

    return-void
.end method

.method private addIconFontBadges(Ljava/lang/String;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 805
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfoBadges:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 806
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfoBadges:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->badgesPadding:I

    :goto_0
    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 807
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfoBadges:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 809
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfoBadges:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->INFO:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    .line 811
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 806
    goto :goto_0
.end method

.method private createCapabilitiesMap(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/EnumMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;",
            "Lcom/netflix/mediaclient/android/activity/NetflixActivity;",
            ")",
            "Ljava/util/EnumMap",
            "<",
            "Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 775
    const/4 v1, 0x0

    .line 777
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/MdxUtils;->isCurrentMdxTargetAvailable(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 778
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->getMdx()Lcom/netflix/mediaclient/servicemgr/IMdx;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/IMdx;->getCurrentTargetCapabilities()Lcom/netflix/mediaclient/ui/mdx/MdxTargetCapabilities;

    move-result-object v0

    .line 779
    if-eqz v0, :cond_5

    .line 784
    :goto_0
    if-nez v0, :cond_0

    .line 785
    invoke-virtual {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getLocalCapabilities(Lcom/netflix/mediaclient/servicemgr/ServiceManager;)Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;

    move-result-object v0

    .line 788
    :cond_0
    new-instance v1, Ljava/util/EnumMap;

    const-class v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-direct {v1, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 789
    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->_5dot1:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShow5dot1Icon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowDolbyVisionIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 792
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->DOLBY_VISION:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    :cond_1
    :goto_1
    return-object v1

    .line 793
    :cond_2
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowHdr10Icon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 794
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->HDR10:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 795
    :cond_3
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowUhdIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 796
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->UHD:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 797
    :cond_4
    invoke-static {v0, p1}, Lcom/netflix/mediaclient/util/DeviceUtils;->shouldShowHdIcon(Lcom/netflix/mediaclient/ui/details/DeviceCapabilityProvider;Lcom/netflix/mediaclient/servicemgr/interface_/FeatureEnabledProvider;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 798
    sget-object v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;->HD:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$SupportedCapabilities;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method private getBadgesPadding()I
    .locals 2

    .prologue
    .line 759
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0140

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getIfValidOrFallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 744
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    move-object p1, p2

    goto :goto_0
.end method

.method private getInterBadgePadding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 763
    const-string/jumbo v0, "  "

    return-object v0
.end method

.method private hasWatched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z
    .locals 1

    .prologue
    .line 736
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->hasWatched()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 185
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getlayoutId()I

    move-result v1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 186
    invoke-virtual {p0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setOrientation(I)V

    .line 189
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/ViewUtils;->createActionBarDummyView(Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionBarDummyView:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionBarDummyView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addView(Landroid/view/View;I)V

    .line 192
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViews()V

    .line 194
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->matchPercentage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 196
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->matchPercentage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->MATCH:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getSectionTextColor(Landroid/content/Context;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 200
    :goto_0
    new-instance v0, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->matchPercentage:Landroid/widget/TextView;

    const v2, 0x7f090252

    const v3, 0x7f090253

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    sget-object v5, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTIONS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v4, v5}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getSectionTextColor(Landroid/content/Context;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)I

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;-><init>(Landroid/widget/TextView;III)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mThumbsToMatchPercentageAnimator:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    .line 203
    :cond_0
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getBadgesPadding()I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->badgesPadding:I

    .line 205
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setImgLayoutListener()V

    .line 207
    new-instance v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$2;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->onCWClickListener:Landroid/view/View$OnClickListener;

    .line 216
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->infoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->shouldPadInfo(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->infoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 218
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0109

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 219
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->infoContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 220
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 222
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 225
    :cond_1
    return-void

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->matchPercentage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->showKidsExperience()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0f001a

    :goto_1
    invoke-static {v2, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0f001b

    goto :goto_1
.end method

.method private isNSREShow(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z
    .locals 2

    .prologue
    .line 730
    instance-of v0, p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->SHOW:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    .line 731
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 732
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isNSRE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 730
    :goto_0
    return v0

    .line 732
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setImgLayoutListener()V
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$3;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 403
    return-void
.end method

.method private showCurrentEpisodeDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z
    .locals 1

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->isNSREShow(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->hasWatched(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static updateButtonLayout(Landroid/view/View;I)V
    .locals 3

    .prologue
    .line 325
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 326
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 327
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 328
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, p1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    :cond_0
    return-void
.end method

.method private updateMatchPercentage(IZ)V
    .locals 3

    .prologue
    .line 631
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->matchPercentage:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mThumbsToMatchPercentageAnimator:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mThumbsToMatchPercentageAnimator:Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getMatchPercentage()I

    move-result v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    invoke-interface {v2}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isNewForPvr()Z

    move-result v2

    invoke-virtual {v0, p1, v1, v2, p2}, Lcom/netflix/android/widgetry/widget/ThumbsToMatchPercentageAnimator;->update(IIZZ)V

    .line 634
    :cond_0
    return-void
.end method

.method private updatePlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->play:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 529
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->play:Landroid/view/View;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 531
    :cond_0
    return-void

    .line 529
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected alignViews()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->calculateImageHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 419
    return-void
.end method

.method protected calculateImageHeight()I
    .locals 2

    .prologue
    .line 422
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    .line 423
    if-gtz v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/DeviceUtils;->getScreenWidthInPixels(Landroid/content/Context;)I

    move-result v0

    .line 427
    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x3f100000    # 0.5625f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 433
    return v0
.end method

.method protected createActionButtons(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 238
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionButtonsCreated:Z

    if-nez v0, :cond_2

    .line 240
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->myListMdp:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->myListSdp:Landroid/view/ViewStub;

    if-nez v0, :cond_3

    :cond_0
    move-object v1, p0

    .line 246
    :goto_0
    const v0, 0x7f1003bf

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoActionsContainer:Landroid/widget/LinearLayout;

    .line 247
    const v0, 0x7f100265

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListGroup:Landroid/view/View;

    .line 248
    const v0, 0x7f100266

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyList:Landroid/widget/TextView;

    .line 249
    const v0, 0x7f100267

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListLabel:Landroid/widget/TextView;

    .line 250
    const v0, 0x7f10020e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    .line 251
    const v0, 0x7f1003c0

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/android/widgetry/widget/UserRatingButton;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    .line 252
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    if-eqz v0, :cond_1

    .line 253
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->isLight()Z

    move-result v0

    if-nez v0, :cond_5

    move v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setDark(Z)V

    .line 254
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->isThemed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 255
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-static {}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->getTheme()Lcom/netflix/mediaclient/ui/user_theme/Theme;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netflix/mediaclient/ui/user_theme/Theme;->getTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setIconColor(I)V

    .line 259
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/l10n/LocalizationUtils;->setRtlLayoutDirectionIfApplicable(Landroid/view/View;)V

    .line 260
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateVideoActionsLayout()V

    .line 261
    iput-boolean v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionButtonsCreated:Z

    .line 263
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyList:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTIONS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    .line 264
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListLabel:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->ACTION_LABEL:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    .line 266
    :cond_2
    return-void

    .line 243
    :cond_3
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->myListMdp:Landroid/view/ViewStub;

    .line 244
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto/16 :goto_0

    .line 243
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->myListSdp:Landroid/view/ViewStub;

    goto :goto_2

    .line 253
    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected findViews()V
    .locals 2

    .prologue
    const v1, 0x7f1000a9

    .line 270
    const v0, 0x7f1003d7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->myListMdp:Landroid/view/ViewStub;

    .line 271
    const v0, 0x7f1003d4

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->myListSdp:Landroid/view/ViewStub;

    .line 273
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->matchPercentage:Landroid/widget/TextView;

    .line 274
    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->matchPercentage:Landroid/widget/TextView;

    .line 275
    const v0, 0x7f1003ca

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfo:Landroid/widget/TextView;

    .line 276
    const v0, 0x7f1000c1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeBadge:Landroid/widget/TextView;

    .line 277
    const v0, 0x7f1000c2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    .line 278
    const v0, 0x7f1000cf

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    .line 279
    const v0, 0x7f1000d1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->synopsis:Landroid/widget/TextView;

    .line 280
    const v0, 0x7f10021c

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    .line 281
    const v0, 0x7f10021d

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    .line 282
    const v0, 0x7f1000c8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    .line 283
    const v0, 0x7f1000d6

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    .line 284
    const v0, 0x7f1003d1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->imgGroup:Landroid/view/ViewGroup;

    .line 285
    const v0, 0x7f1001f0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->backgroundImg:Landroid/widget/ImageView;

    .line 287
    const v0, 0x7f1000d9

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    .line 288
    const v0, 0x7f1003cb

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfoBadges:Landroid/widget/TextView;

    .line 289
    const v0, 0x7f1000d8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->footerViewGroup:Landroid/view/ViewGroup;

    .line 291
    const v0, 0x7f1003c2

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    .line 292
    const v0, 0x7f1000d7

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->play:Landroid/view/View;

    .line 293
    const v0, 0x7f1003c8

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->infoContainer:Landroid/view/View;

    .line 294
    return-void
.end method

.method public getAddToMyListButton()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyList:Landroid/widget/TextView;

    return-object v0
.end method

.method public getAddToMyListButtonLabel()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListLabel:Landroid/widget/TextView;

    return-object v0
.end method

.method public getBackgroundImage()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->backgroundImg:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getDownloadButton()Lcom/netflix/mediaclient/ui/offline/DownloadButton;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    return-object v0
.end method

.method public getFooterViewGroup()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->footerViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getHeroImage()Lcom/netflix/mediaclient/android/widget/AdvancedImageView;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    return-object v0
.end method

.method protected getlayoutId()I
    .locals 1

    .prologue
    .line 181
    const v0, 0x7f030122

    return v0
.end method

.method public hideRelatedTitle()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    .line 815
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 817
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.falkor.ACTION_NOTIFY_OF_RATINGS_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 820
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCapabilityBadges:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "com.netflix.mediaclient.intent.action.UPDATE_CAPABILITIES_BADGES"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 823
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 827
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 829
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->ratingsUpdateBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 830
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCapabilityBadges:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 831
    return-void
.end method

.method public refreshImagesIfNecessary()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->refreshImageIfNecessary()V

    .line 480
    :cond_0
    return-void
.end method

.method public removeActionBarDummyView()V
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionBarDummyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionBarDummyView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->removeView(Landroid/view/View;)V

    .line 472
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->actionBarDummyView:Landroid/view/View;

    .line 474
    :cond_0
    return-void
.end method

.method public setCopyright(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 3

    .prologue
    .line 560
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 561
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getCopyright()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 564
    new-instance v0, Lcom/netflix/mediaclient/ui/details/CopyrightView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    invoke-direct {v0, p1, v1, v2}, Lcom/netflix/mediaclient/ui/details/CopyrightView;-><init>(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Landroid/content/Context;Landroid/view/ViewGroup;)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 566
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->copyright:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public setMyListVisibility(I)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListGroup:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListGroup:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateVideoActionsLayout()V

    .line 337
    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .prologue
    .line 868
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 869
    return-void
.end method

.method public setupDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .prologue
    .line 377
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->shouldRenderDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 379
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    .line 380
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateVideoActionsLayout()V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/ViewUtils;->setVisibleOrInvisible(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 4

    .prologue
    .line 749
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isPreRelease()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    :goto_0
    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->requestFocus()Z

    .line 754
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    new-instance v1, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->getPressedStateHandler()Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->onCWClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {v1, v2, v3}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;-><init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/TopCropImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected shouldRenderDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 346
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-eq v0, v2, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v1

    .line 350
    :cond_1
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 351
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 354
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isReady()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 355
    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    if-eqz v2, :cond_2

    .line 360
    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getServiceManager()Lcom/netflix/mediaclient/servicemgr/ServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/servicemgr/ServiceManager;->isOfflineFeatureAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 361
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v0

    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/Playable;->isAvailableOffline()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 359
    goto :goto_0

    :cond_2
    move v0, v1

    .line 361
    goto :goto_1
.end method

.method public showRelatedTitle()V
    .locals 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 438
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    :cond_0
    return-void
.end method

.method protected updateBadges(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V
    .locals 5

    .prologue
    .line 646
    const-string/jumbo v2, ""

    .line 647
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->createCapabilitiesMap(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)Ljava/util/EnumMap;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Ljava/util/EnumMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 649
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mCapabilityBadgesMap:Ljava/util/EnumMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getInterBadgePadding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    move-object v2, v0

    .line 652
    goto :goto_0

    .line 653
    :cond_0
    invoke-direct {p0, v2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addIconFontBadges(Ljava/lang/String;)V

    .line 654
    return-void

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method

.method protected updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->isAvailableToStream()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfo:Landroid/widget/TextView;

    invoke-interface {p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;->getBasicInfoString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->basicInfo:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->INFO:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    .line 643
    :cond_0
    return-void
.end method

.method protected updateCredits(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 672
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 673
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;->getStarringText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 674
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 675
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 681
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->CREDITS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    .line 684
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 685
    invoke-interface {p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;->getCreatorsText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 686
    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 687
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 694
    :goto_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->CREDITS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    .line 696
    :cond_1
    return-void

    .line 677
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 690
    :cond_3
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 492
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoId:Ljava/lang/String;

    .line 493
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->details:Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;

    .line 495
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;->MOVIE:Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    if-ne v0, v3, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->createActionButtons(Z)V

    .line 497
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 498
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090060

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Object;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 500
    invoke-virtual {p0, p1, v0, v3}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateRelatedTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 502
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 504
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateBasicInfo(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 505
    invoke-virtual {p0, p1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateBadges(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 507
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateRating(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 508
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 510
    invoke-virtual {p0, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateCredits(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$DetailsStringProvider;)V

    .line 512
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updatePlayButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    .line 514
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 515
    :goto_1
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showCurrentEpisodeDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 516
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateNSREFields(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V

    .line 525
    :cond_0
    :goto_2
    return-void

    :cond_1
    move v0, v2

    .line 495
    goto :goto_0

    :cond_2
    move v1, v2

    .line 514
    goto :goto_1

    .line 518
    :cond_3
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeBadge:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 519
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeBadge:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    :cond_4
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 521
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    :cond_5
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method

.method public updateDownloadButtonIfExists(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->shouldRenderDownloadButton(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setEnabled(Z)V

    .line 369
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getPlayable()Lcom/netflix/mediaclient/servicemgr/interface_/Playable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v0, v3}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-virtual {v1, v2, v0}, Lcom/netflix/mediaclient/ui/offline/DownloadButton;->setStateFromPlayable(Lcom/netflix/mediaclient/servicemgr/interface_/Playable;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 370
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateVideoActionsLayout()V

    .line 372
    :cond_0
    return-void
.end method

.method protected updateImage(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 708
    invoke-static {p2}, Lcom/netflix/mediaclient/util/DeviceUtils;->isTabletByContext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 710
    :goto_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showCurrentEpisodeDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 711
    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 712
    invoke-interface {v0}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeHorzDispUrl()Ljava/lang/String;

    move-result-object v0

    .line 714
    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getIfValidOrFallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 717
    :goto_1
    invoke-static {p2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->getImageLoader(Landroid/content/Context;)Lcom/netflix/mediaclient/util/gfx/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->horzDispImg:Lcom/netflix/mediaclient/android/widget/TopCropImageView;

    sget-object v3, Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;->boxArt:Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;

    .line 722
    invoke-static {}, Lcom/netflix/mediaclient/ui/experience/BrowseExperience;->getImageLoaderConfig()Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;

    move-result-object v5

    move-object v4, p3

    move v7, v6

    .line 717
    invoke-interface/range {v0 .. v7}, Lcom/netflix/mediaclient/util/gfx/ImageLoader;->showImg(Lcom/netflix/mediaclient/android/widget/AdvancedImageView;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/IClientLogging$AssetType;Ljava/lang/String;Lcom/netflix/mediaclient/util/gfx/ImageLoader$StaticImgConfig;ZI)V

    .line 726
    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->setupImageClicks(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;Lcom/netflix/mediaclient/android/activity/NetflixActivity;)V

    .line 727
    return-void

    .line 708
    :cond_0
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getStoryUrl()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_1
    move-object v2, v1

    goto :goto_1
.end method

.method public updateNSREFields(Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 534
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeTitle()Ljava/lang/String;

    move-result-object v0

    .line 536
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeBadges()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeBadge:Landroid/widget/TextView;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils;->toggleEpisodeBadge(Ljava/util/List;Landroid/widget/TextView;)V

    .line 538
    if-eqz v0, :cond_1

    .line 539
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09010c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 540
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 542
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 555
    :goto_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 556
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 557
    return-void

    .line 547
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->episodeTitle:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getSupplementalMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 548
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->supplemental:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 551
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->starring:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 552
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->creators:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public updateRating(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 573
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    if-eqz v0, :cond_0

    .line 574
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/common/PlayContextProvider;

    .line 575
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/util/AndroidUtils;->getContextAs(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/mediaclient/android/activity/NetflixActivity;

    .line 576
    invoke-static {v1}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 577
    const v2, 0x7f10018d

    invoke-virtual {v1, v2}, Lcom/netflix/mediaclient/android/activity/NetflixActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout;

    .line 578
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getUserThumbRating()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setRating(I)V

    .line 579
    iget-object v3, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    new-instance v4, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;

    invoke-direct {v4, p0, v1, v0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;-><init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    invoke-virtual {v3, v2, v4, v5, v5}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->setOnRateListener(Landroid/support/design/widget/CoordinatorLayout;Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;ZI)V

    .line 621
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getUserThumbRating()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateMatchPercentage(IZ)V

    .line 624
    :cond_0
    return-void
.end method

.method protected updateRelatedTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 6

    .prologue
    .line 449
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090198

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->relatedTitle:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->TITLE:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    .line 454
    :cond_0
    return-void
.end method

.method public updateSynopsis(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 3

    .prologue
    .line 657
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getSynopsis()Ljava/lang/String;

    move-result-object v0

    .line 658
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->synopsis:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 659
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->showCurrentEpisodeDetails(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 660
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;

    .line 661
    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/ShowDetails;->getCurrentEpisodeSynopsis()Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-direct {p0, v1, v0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getIfValidOrFallback(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 665
    :cond_0
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->synopsis:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 667
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->synopsis:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->SYNOPSIS:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    .line 669
    :cond_1
    return-void

    .line 665
    :cond_2
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    goto :goto_0
.end method

.method protected updateTitle(Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 2

    .prologue
    .line 699
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->title:Landroid/widget/TextView;

    sget-object v1, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;->TITLE:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->manageSectionTextColor(Landroid/widget/TextView;Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$Section;)V

    .line 704
    :cond_0
    return-void
.end method

.method protected updateVideoActionsLayout()V
    .locals 4

    .prologue
    .line 300
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoActionsContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    .line 301
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoActionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 302
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "At least 3 buttons expected in the video actions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 308
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    .line 309
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0205

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 307
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 311
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0206

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 306
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 314
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoActionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 315
    iget-object v2, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->videoActionsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->mMovieDownloadButton:Lcom/netflix/mediaclient/ui/offline/DownloadButton;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateButtonLayout(Landroid/view/View;I)V

    .line 319
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->userRatingButton:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateButtonLayout(Landroid/view/View;I)V

    .line 320
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->addToMyListGroup:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;->updateButtonLayout(Landroid/view/View;I)V

    .line 322
    :cond_2
    return-void
.end method
