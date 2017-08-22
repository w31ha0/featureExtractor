.class public Lcom/mopub/mobileads/VastVideoConfig;
.super Ljava/lang/Object;
.source "VastVideoConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private final mAbsoluteTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mClickThroughUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mClickTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mCloseTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mCompleteTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomCloseIconUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCustomCtaText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mCustomSkipText:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDiskMediaFileUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDspCreativeId:Ljava/lang/String;

.field private final mErrorTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mFractionalTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation
.end field

.field private final mImpressionTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mIsForceOrientationSet:Z

.field private mIsRewardedVideo:Z

.field private mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mNetworkMediaFileUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mPauseTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mResumeTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipOffset:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mSkipTrackers:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation
.end field

.field private mSocialActionsCompanionAds:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mVideoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    sget-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->FORCE_LANDSCAPE:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSocialActionsCompanionAds:Ljava/util/Map;

    .line 88
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsRewardedVideo:Z

    .line 89
    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mobileads/VastVideoConfig;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mobileads/VastVideoConfig;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method private addCompanionAdClickTrackersForUrls(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 842
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 844
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 845
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 846
    .local v0, "companionAdClickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 847
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 849
    .end local v0    # "companionAdClickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_0
    return-void
.end method

.method private addCompanionAdViewTrackersForUrls(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 832
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 834
    invoke-virtual {p0}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 835
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 836
    .local v0, "companionAdViewTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    .line 837
    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    .line 839
    .end local v0    # "companionAdViewTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_0
    return-void
.end method

.method private addCompleteTrackersForUrls(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 805
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 807
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/VastVideoConfig;->createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    .line 808
    return-void
.end method

.method private addFractionalTrackersForUrls(Ljava/util/List;F)V
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fraction"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;F)V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 824
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 825
    .local v0, "fractionalTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 826
    .local v1, "url":Ljava/lang/String;
    new-instance v3, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    invoke-direct {v3, v1, p2}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 828
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    .line 829
    return-void
.end method

.method private addStartTrackersForUrls(Ljava/util/List;)V
    .locals 5
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 811
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v0, "startTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAbsoluteProgressTracker;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 815
    .local v1, "url":Ljava/lang/String;
    new-instance v3, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 817
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 818
    return-void
.end method

.method private createVastTrackersForUrls(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 795
    .local p1, "urls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 797
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 798
    .local v0, "trackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 799
    .local v1, "url":Ljava/lang/String;
    new-instance v3, Lcom/mopub/mobileads/VastTracker;

    invoke-direct {v3, v1}, Lcom/mopub/mobileads/VastTracker;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 801
    .end local v1    # "url":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private handleClick(Landroid/content/Context;ILjava/lang/Integer;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentPlayHead"    # I
    .param p3, "requestCode"    # Ljava/lang/Integer;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 526
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 531
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 528
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 536
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 589
    :goto_0
    return-void

    .line 540
    :cond_0
    new-instance v0, Lcom/mopub/common/UrlHandler$Builder;

    invoke-direct {v0}, Lcom/mopub/common/UrlHandler$Builder;-><init>()V

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    .line 541
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withDspCreativeId(Ljava/lang/String;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    sget-object v1, Lcom/mopub/common/UrlAction;->IGNORE_ABOUT_SCHEME:Lcom/mopub/common/UrlAction;

    const/4 v2, 0x6

    new-array v2, v2, [Lcom/mopub/common/UrlAction;

    const/4 v3, 0x0

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_APP_MARKET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_NATIVE_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/mopub/common/UrlAction;->OPEN_IN_APP_BROWSER:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    sget-object v4, Lcom/mopub/common/UrlAction;->HANDLE_SHARE_TWEET:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK_WITH_FALLBACK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    const/4 v3, 0x5

    sget-object v4, Lcom/mopub/common/UrlAction;->FOLLOW_DEEP_LINK:Lcom/mopub/common/UrlAction;

    aput-object v4, v2, v3

    .line 542
    invoke-virtual {v0, v1, v2}, Lcom/mopub/common/UrlHandler$Builder;->withSupportedUrlActions(Lcom/mopub/common/UrlAction;[Lcom/mopub/common/UrlAction;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    new-instance v1, Lcom/mopub/mobileads/VastVideoConfig$1;

    invoke-direct {v1, p0, p1, p3}, Lcom/mopub/mobileads/VastVideoConfig$1;-><init>(Lcom/mopub/mobileads/VastVideoConfig;Landroid/content/Context;Ljava/lang/Integer;)V

    .line 550
    invoke-virtual {v0, v1}, Lcom/mopub/common/UrlHandler$Builder;->withResultActions(Lcom/mopub/common/UrlHandler$ResultActions;)Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 587
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->withoutMoPubBrowser()Lcom/mopub/common/UrlHandler$Builder;

    move-result-object v0

    .line 588
    invoke-virtual {v0}, Lcom/mopub/common/UrlHandler$Builder;->build()Lcom/mopub/common/UrlHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/mopub/common/UrlHandler;->handleUrl(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private hydrateUrls(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "urls"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 777
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 779
    if-nez p1, :cond_1

    .line 780
    const/4 v0, 0x0

    .line 791
    :cond_0
    return-object v0

    .line 783
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 784
    .local v0, "hydratedUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 785
    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    .line 786
    .local v2, "url":Ljava/lang/String;
    if-nez v2, :cond_2

    .line 784
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 789
    :cond_2
    const-string v3, "%%VIDEO_EVENT%%"

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public addAbsoluteTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p1, "absoluteTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAbsoluteProgressTracker;>;"
    const-string v0, "absoluteTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 124
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 125
    return-void
.end method

.method public addClickTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 163
    .local p1, "clickTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "clickTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 165
    return-void
.end method

.method public addCloseTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 153
    .local p1, "closeTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "closeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 155
    return-void
.end method

.method public addCompleteTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p1, "completeTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "completeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    return-void
.end method

.method public addErrorTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p1, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "errorTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 175
    return-void
.end method

.method public addFractionalTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p1, "fractionalTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastFractionalProgressTracker;>;"
    const-string v0, "fractionalTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 115
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 116
    return-void
.end method

.method public addImpressionTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    .local p1, "impressionTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "impressionTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 106
    return-void
.end method

.method public addPauseTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "pauseTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "pauseTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 140
    return-void
.end method

.method public addResumeTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 148
    .local p1, "resumeTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "resumeTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 150
    return-void
.end method

.method public addSkipTrackers(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "skipTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v0, "skipTrackers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 160
    return-void
.end method

.method public addVideoTrackers(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "videoTrackers"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 197
    if-nez p1, :cond_1

    .line 242
    :cond_0
    return-void

    .line 201
    :cond_1
    const-string v6, "urls"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 202
    .local v4, "urls":Lorg/json/JSONArray;
    const-string v6, "events"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 203
    .local v2, "events":Lorg/json/JSONArray;
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 207
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    .line 208
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 209
    .local v1, "eventName":Ljava/lang/String;
    invoke-direct {p0, v1, v4}, Lcom/mopub/mobileads/VastVideoConfig;->hydrateUrls(Ljava/lang/String;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v5

    .line 210
    .local v5, "urlsForEvent":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Lcom/mopub/mobileads/VideoTrackingEvent;->fromString(Ljava/lang/String;)Lcom/mopub/mobileads/VideoTrackingEvent;

    move-result-object v0

    .line 211
    .local v0, "event":Lcom/mopub/mobileads/VideoTrackingEvent;
    if-eqz v1, :cond_2

    if-nez v5, :cond_3

    .line 207
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 215
    :cond_3
    sget-object v6, Lcom/mopub/mobileads/VastVideoConfig$2;->$SwitchMap$com$mopub$mobileads$VideoTrackingEvent:[I

    invoke-virtual {v0}, Lcom/mopub/mobileads/VideoTrackingEvent;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 239
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encountered unknown video tracking event: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_1

    .line 217
    :pswitch_0
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->addStartTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    .line 220
    :pswitch_1
    const/high16 v6, 0x3e800000    # 0.25f

    invoke-direct {p0, v5, v6}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackersForUrls(Ljava/util/List;F)V

    goto :goto_1

    .line 223
    :pswitch_2
    const/high16 v6, 0x3f000000    # 0.5f

    invoke-direct {p0, v5, v6}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackersForUrls(Ljava/util/List;F)V

    goto :goto_1

    .line 226
    :pswitch_3
    const/high16 v6, 0x3f400000    # 0.75f

    invoke-direct {p0, v5, v6}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackersForUrls(Ljava/util/List;F)V

    goto :goto_1

    .line 229
    :pswitch_4
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    .line 232
    :pswitch_5
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->addCompanionAdViewTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    .line 235
    :pswitch_6
    invoke-direct {p0, v5}, Lcom/mopub/mobileads/VastVideoConfig;->addCompanionAdClickTrackersForUrls(Ljava/util/List;)V

    goto :goto_1

    .line 215
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getAbsoluteTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastAbsoluteProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getClickThroughUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getClickTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 358
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCloseTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 348
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCompleteTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCustomCloseIconUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCloseIconUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomCtaText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 410
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCtaText:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 448
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    return-object v0
.end method

.method public getCustomSkipText()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomSkipText:Ljava/lang/String;

    return-object v0
.end method

.method public getDiskMediaFileUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 383
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDiskMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDspCreativeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getFractionalTrackers()Ljava/util/ArrayList;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mopub/mobileads/VastFractionalProgressTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 328
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getNetworkMediaFileUrl()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 378
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPauseTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 333
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRemainingProgressTrackerCount()I
    .locals 1

    .prologue
    const v0, 0x7fffffff

    .line 735
    invoke-virtual {p0, v0, v0}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getResumeTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 338
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSkipOffsetMillis(I)Ljava/lang/Integer;
    .locals 10
    .param p1, "videoDuration"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 747
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 750
    :try_start_0
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    invoke-static {v4}, Lcom/mopub/common/util/Strings;->isAbsoluteTracker(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 751
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    invoke-static {v4}, Lcom/mopub/common/util/Strings;->parseAbsoluteOffset(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    .line 761
    .local v2, "skipOffsetMilliseconds":Ljava/lang/Integer;
    :goto_0
    if-eqz v2, :cond_3

    .line 762
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p1, :cond_2

    .line 772
    .end local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    :goto_1
    return-object v2

    .line 752
    :cond_0
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    invoke-static {v4}, Lcom/mopub/common/util/Strings;->isPercentageTracker(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 753
    iget-object v4, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    const-string v5, "%"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v1, v4, v5

    .line 754
    .local v1, "percentage":F
    int-to-float v4, p1

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 755
    .restart local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    goto :goto_0

    .line 756
    .end local v1    # "percentage":F
    .end local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    :cond_1
    const-string v4, "Invalid VAST skipoffset format: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    aput-object v7, v5, v6

    .line 757
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 756
    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    move-object v2, v3

    .line 758
    goto :goto_1

    .line 765
    .restart local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 768
    .end local v2    # "skipOffsetMilliseconds":Ljava/lang/Integer;
    :catch_0
    move-exception v0

    .line 769
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "Failed to parse skipoffset %s"

    new-array v5, v9, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3
    move-object v2, v3

    .line 772
    goto :goto_1
.end method

.method public getSkipOffsetString()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 459
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    return-object v0
.end method

.method public getSkipTrackers()Ljava/util/List;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSocialActionsCompanionAds()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSocialActionsCompanionAds:Ljava/util/Map;

    return-object v0
.end method

.method public getUntriggeredTrackersBefore(II)Ljava/util/List;
    .locals 10
    .param p1, "currentPositionMillis"    # I
    .param p2, "videoLengthMillis"    # I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;"
        }
    .end annotation

    .prologue
    .line 694
    if-lez p2, :cond_2

    const/4 v8, 0x1

    :goto_0
    invoke-static {v8}, Lcom/mopub/common/Preconditions$NoThrow;->checkArgument(Z)Z

    move-result v8

    if-eqz v8, :cond_7

    if-ltz p1, :cond_7

    .line 695
    int-to-float v8, p1

    int-to-float v9, p2

    div-float v5, v8, v9

    .line 696
    .local v5, "progressFraction":F
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 698
    .local v7, "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    new-instance v0, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    const-string v8, ""

    invoke-direct {v0, v8, p1}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;-><init>(Ljava/lang/String;I)V

    .line 700
    .local v0, "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    iget-object v8, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 701
    .local v1, "absoluteTrackerCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_0

    .line 702
    iget-object v8, p0, Lcom/mopub/mobileads/VastVideoConfig;->mAbsoluteTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;

    .line 703
    .local v6, "tracker":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    invoke-virtual {v6, v0}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->compareTo(Lcom/mopub/mobileads/VastAbsoluteProgressTracker;)I

    move-result v8

    if-lez v8, :cond_3

    .line 711
    .end local v6    # "tracker":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    :cond_0
    new-instance v2, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    const-string v8, ""

    invoke-direct {v2, v8, v5}, Lcom/mopub/mobileads/VastFractionalProgressTracker;-><init>(Ljava/lang/String;F)V

    .line 712
    .local v2, "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    iget-object v8, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 713
    .local v3, "fractionalTrackerCount":I
    const/4 v4, 0x0

    :goto_2
    if-ge v4, v3, :cond_1

    .line 714
    iget-object v8, p0, Lcom/mopub/mobileads/VastVideoConfig;->mFractionalTrackers:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mopub/mobileads/VastFractionalProgressTracker;

    .line 715
    .local v6, "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    invoke-virtual {v6, v2}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->compareTo(Lcom/mopub/mobileads/VastFractionalProgressTracker;)I

    move-result v8

    if-lez v8, :cond_5

    .line 725
    .end local v0    # "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .end local v1    # "absoluteTrackerCount":I
    .end local v2    # "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v3    # "fractionalTrackerCount":I
    .end local v4    # "i":I
    .end local v5    # "progressFraction":F
    .end local v6    # "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v7    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_1
    :goto_3
    return-object v7

    .line 694
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 706
    .restart local v0    # "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .restart local v1    # "absoluteTrackerCount":I
    .restart local v4    # "i":I
    .restart local v5    # "progressFraction":F
    .local v6, "tracker":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .restart local v7    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_3
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastAbsoluteProgressTracker;->isTracked()Z

    move-result v8

    if-nez v8, :cond_4

    .line 707
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 701
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 718
    .restart local v2    # "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .restart local v3    # "fractionalTrackerCount":I
    .local v6, "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    :cond_5
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastFractionalProgressTracker;->isTracked()Z

    move-result v8

    if-nez v8, :cond_6

    .line 719
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 713
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 725
    .end local v0    # "absoluteTest":Lcom/mopub/mobileads/VastAbsoluteProgressTracker;
    .end local v1    # "absoluteTrackerCount":I
    .end local v2    # "fractionalTest":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v3    # "fractionalTrackerCount":I
    .end local v4    # "i":I
    .end local v5    # "progressFraction":F
    .end local v6    # "tracker":Lcom/mopub/mobileads/VastFractionalProgressTracker;
    .end local v7    # "untriggeredTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    goto :goto_3
.end method

.method public getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 1
    .param p1, "orientation"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 388
    packed-switch p1, :pswitch_data_0

    .line 394
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    :goto_0
    return-object v0

    .line 390
    :pswitch_0
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    goto :goto_0

    .line 392
    :pswitch_1
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    goto :goto_0

    .line 388
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 405
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    return-object v0
.end method

.method public getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVideoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;

    return-object v0
.end method

.method public handleClickForResult(Landroid/app/Activity;II)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentPlayHead"    # I
    .param p3, "requestCode"    # I

    .prologue
    .line 499
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->handleClick(Landroid/content/Context;ILjava/lang/Integer;)V

    .line 500
    return-void
.end method

.method public handleClickWithoutResult(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentPlayHead"    # I

    .prologue
    .line 511
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lcom/mopub/mobileads/VastVideoConfig;->handleClick(Landroid/content/Context;ILjava/lang/Integer;)V

    .line 512
    return-void
.end method

.method public handleClose(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentPlayHead"    # I

    .prologue
    const/4 v3, 0x0

    .line 632
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 633
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCloseTrackers:Ljava/util/ArrayList;

    .line 636
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 633
    invoke-static {v0, v3, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 641
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipTrackers:Ljava/util/ArrayList;

    .line 644
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 641
    invoke-static {v0, v3, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 648
    return-void
.end method

.method public handleComplete(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentPlayHead"    # I

    .prologue
    .line 657
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 658
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCompleteTrackers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 661
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 658
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 665
    return-void
.end method

.method public handleError(Landroid/content/Context;Lcom/mopub/mobileads/VastErrorCode;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "errorCode"    # Lcom/mopub/mobileads/VastErrorCode;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "contentPlayHead"    # I

    .prologue
    .line 676
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mErrorTrackers:Ljava/util/ArrayList;

    .line 680
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 677
    invoke-static {v0, p2, v1, v2, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 684
    return-void
.end method

.method public handleImpression(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentPlayHead"    # I

    .prologue
    .line 478
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 479
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mImpressionTrackers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 482
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 479
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 486
    return-void
.end method

.method public handlePause(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentPlayHead"    # I

    .prologue
    .line 615
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 616
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPauseTrackers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 619
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 616
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 623
    return-void
.end method

.method public handleResume(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "contentPlayHead"    # I

    .prologue
    .line 598
    const-string v0, "context cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mResumeTrackers:Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 602
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 599
    invoke-static {v0, v1, v2, v3, p1}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 606
    return-void
.end method

.method public hasCompanionAd()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomForceOrientationSet()Z
    .locals 1

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsForceOrientationSet:Z

    return v0
.end method

.method public isRewardedVideo()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsRewardedVideo:Z

    return v0
.end method

.method public setClickThroughUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "clickThroughUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 245
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mClickThroughUrl:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setCustomCloseIconUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "customCloseIconUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 284
    if-eqz p1, :cond_0

    .line 285
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCloseIconUrl:Ljava/lang/String;

    .line 287
    :cond_0
    return-void
.end method

.method public setCustomCtaText(Ljava/lang/String;)V
    .locals 0
    .param p1, "customCtaText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 272
    if-eqz p1, :cond_0

    .line 273
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomCtaText:Ljava/lang/String;

    .line 275
    :cond_0
    return-void
.end method

.method public setCustomForceOrientation(Lcom/mopub/common/util/DeviceUtils$ForceOrientation;)V
    .locals 1
    .param p1, "customForceOrientation"    # Lcom/mopub/common/util/DeviceUtils$ForceOrientation;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 290
    if-eqz p1, :cond_0

    sget-object v0, Lcom/mopub/common/util/DeviceUtils$ForceOrientation;->UNDEFINED:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    if-eq p1, v0, :cond_0

    .line 291
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomForceOrientation:Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsForceOrientationSet:Z

    .line 294
    :cond_0
    return-void
.end method

.method public setCustomSkipText(Ljava/lang/String;)V
    .locals 0
    .param p1, "customSkipText"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 278
    if-eqz p1, :cond_0

    .line 279
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mCustomSkipText:Ljava/lang/String;

    .line 281
    :cond_0
    return-void
.end method

.method public setDiskMediaFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "diskMediaFileUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 253
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDiskMediaFileUrl:Ljava/lang/String;

    .line 254
    return-void
.end method

.method public setDspCreativeId(Ljava/lang/String;)V
    .locals 0
    .param p1, "dspCreativeId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 96
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mDspCreativeId:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setIsRewardedVideo(Z)V
    .locals 0
    .param p1, "isRewardedVideo"    # Z

    .prologue
    .line 309
    iput-boolean p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mIsRewardedVideo:Z

    .line 310
    return-void
.end method

.method public setNetworkMediaFileUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "networkMediaFileUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 249
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mNetworkMediaFileUrl:Ljava/lang/String;

    .line 250
    return-void
.end method

.method public setSkipOffset(Ljava/lang/String;)V
    .locals 0
    .param p1, "skipOffset"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 297
    if-eqz p1, :cond_0

    .line 298
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSkipOffset:Ljava/lang/String;

    .line 300
    :cond_0
    return-void
.end method

.method public setSocialActionsCompanionAds(Ljava/util/Map;)V
    .locals 0
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "socialActionsCompanionAds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mopub/mobileads/VastCompanionAdConfig;>;"
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mSocialActionsCompanionAds:Ljava/util/Map;

    .line 265
    return-void
.end method

.method public setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V
    .locals 0
    .param p1, "landscapeVastCompanionAdConfig"    # Lcom/mopub/mobileads/VastCompanionAdConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "portraitVastCompanionAdConfig"    # Lcom/mopub/mobileads/VastCompanionAdConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 258
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mLandscapeVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 259
    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoConfig;->mPortraitVastCompanionAdConfig:Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 260
    return-void
.end method

.method public setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V
    .locals 0
    .param p1, "vastIconConfig"    # Lcom/mopub/mobileads/VastIconConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 268
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVastIconConfig:Lcom/mopub/mobileads/VastIconConfig;

    .line 269
    return-void
.end method

.method public setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V
    .locals 0
    .param p1, "videoViewabilityTracker"    # Lcom/mopub/mobileads/VideoViewabilityTracker;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 303
    if-eqz p1, :cond_0

    .line 304
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoConfig;->mVideoViewabilityTracker:Lcom/mopub/mobileads/VideoViewabilityTracker;

    .line 306
    :cond_0
    return-void
.end method
