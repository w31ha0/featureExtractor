.class public Lcom/mopub/mobileads/VastXmlManagerAggregator;
.super Landroid/os/AsyncTask;
.source "VastXmlManagerAggregator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;,
        Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lcom/mopub/mobileads/VastVideoConfig;",
        ">;"
    }
.end annotation


# static fields
.field public static final ADS_BY_AD_SLOT_ID:Ljava/lang/String; = "adsBy"

.field private static final AREA_WEIGHT:D = 30.0

.field private static final ASPECT_RATIO_WEIGHT:D = 70.0

.field static final MAX_TIMES_TO_FOLLOW_VAST_REDIRECT:I = 0xa

.field private static final MINIMUM_COMPANION_AD_HEIGHT:I = 0xfa

.field private static final MINIMUM_COMPANION_AD_WIDTH:I = 0x12c

.field private static final MOPUB:Ljava/lang/String; = "MoPub"

.field public static final SOCIAL_ACTIONS_AD_SLOT_ID:Ljava/lang/String; = "socialActions"

.field private static final VIDEO_MIME_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mScreenAreaDp:I

.field private final mScreenAspectRatio:D

.field private mTimesFollowedVastRedirect:I

.field private final mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 75
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "video/mp4"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "video/3gpp"

    aput-object v2, v0, v1

    .line 76
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->VIDEO_MIME_TYPES:Ljava/util/List;

    .line 75
    return-void
.end method

.method constructor <init>(Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;DILandroid/content/Context;)V
    .locals 2
    .param p1, "vastXmlManagerAggregatorListener"    # Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "screenAspectRatio"    # D
    .param p4, "screenAreaDp"    # I
    .param p5, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 97
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 98
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 99
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    .line 101
    iput-wide p2, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    .line 102
    iput p4, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAreaDp:I

    .line 103
    invoke-virtual {p5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method private calculateFitness(II)D
    .locals 16
    .param p1, "widthDp"    # I
    .param p2, "heightDp"    # I

    .prologue
    .line 766
    move/from16 v0, p1

    int-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    div-double v8, v10, v12

    .line 767
    .local v8, "mediaAspectRatio":D
    mul-int v6, p1, p2

    .line 768
    .local v6, "mediaAreaDp":I
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAspectRatio:D

    div-double v4, v8, v10

    .line 769
    .local v4, "aspectRatioRatio":D
    int-to-double v10, v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mScreenAreaDp:I

    int-to-double v12, v7

    div-double v2, v10, v12

    .line 770
    .local v2, "areaRatio":D
    const-wide v10, 0x4051800000000000L    # 70.0

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    .line 771
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    .line 770
    return-wide v10
.end method

.method private evaluateInLineXmlManager(Lcom/mopub/mobileads/VastInLineXmlManager;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 7
    .param p1, "vastInLineXmlManager"    # Lcom/mopub/mobileads/VastInLineXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/VastInLineXmlManager;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 300
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 303
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getLinearXmlManagers()Ljava/util/List;

    move-result-object v3

    .line 305
    .local v3, "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastLinearXmlManager;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastLinearXmlManager;

    .line 306
    .local v2, "linearXmlManager":Lcom/mopub/mobileads/VastLinearXmlManager;
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastLinearXmlManager;->getMediaXmlManagers()Ljava/util/List;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, "bestMediaFileUrl":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 309
    new-instance v4, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-direct {v4}, Lcom/mopub/mobileads/VastVideoConfig;-><init>()V

    .line 310
    .local v4, "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 311
    invoke-direct {p0, v2, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 316
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastLinearXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/VastVideoConfig;->setClickThroughUrl(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v4, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object v1

    .line 321
    .local v1, "companionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    sget-object v5, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 322
    invoke-virtual {p0, v1, v5}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v5

    sget-object v6, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 324
    invoke-virtual {p0, v1, v6}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v6

    .line 321
    invoke-virtual {v4, v5, v6}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    .line 327
    invoke-virtual {p0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getSocialActionsCompanionAds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v5

    .line 326
    invoke-virtual {v4, v5}, Lcom/mopub/mobileads/VastVideoConfig;->setSocialActionsCompanionAds(Ljava/util/Map;)V

    .line 328
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastInLineXmlManager;->getErrorTrackers()Ljava/util/List;

    move-result-object v5

    invoke-interface {p2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 329
    invoke-virtual {v4, p2}, Lcom/mopub/mobileads/VastVideoConfig;->addErrorTrackers(Ljava/util/List;)V

    .line 330
    invoke-direct {p0, p1, v4}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 336
    .end local v0    # "bestMediaFileUrl":Ljava/lang/String;
    .end local v1    # "companionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    .end local v2    # "linearXmlManager":Lcom/mopub/mobileads/VastLinearXmlManager;
    .end local v4    # "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    :goto_0
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private evaluateWrapperRedirect(Lcom/mopub/mobileads/VastWrapperXmlManager;Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .param p1, "vastWrapperXmlManager"    # Lcom/mopub/mobileads/VastWrapperXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/mopub/mobileads/VastWrapperXmlManager;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "wrapperErrorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const/4 v3, 0x0

    .line 374
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getVastAdTagURI()Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "vastAdTagUri":Ljava/lang/String;
    if-nez v1, :cond_1

    move-object v2, v3

    .line 390
    :cond_0
    :goto_0
    return-object v2

    .line 379
    :cond_1
    const/4 v2, 0x0

    .line 381
    .local v2, "vastRedirectXml":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->followVastRedirect(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    const-string v4, "Failed to follow VAST redirect"

    invoke-static {v4, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 384
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 385
    sget-object v4, Lcom/mopub/mobileads/VastErrorCode;->WRAPPER_TIMEOUT:Lcom/mopub/mobileads/VastErrorCode;

    iget-object v5, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {p2, v4, v3, v3, v5}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_0
.end method

.method private fireErrorTrackerIfNoAds(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManager;Landroid/content/Context;)Z
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "xmlManager"    # Lcom/mopub/mobileads/VastXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastAdXmlManager;",
            ">;",
            "Lcom/mopub/mobileads/VastXmlManager;",
            "Landroid/content/Context;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p1, "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAdXmlManager;>;"
    const/4 v2, 0x0

    .line 474
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/mopub/mobileads/VastXmlManager;->getErrorTracker()Lcom/mopub/mobileads/VastTracker;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 477
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastXmlManager;->getErrorTracker()Lcom/mopub/mobileads/VastTracker;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iget v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    if-lez v0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->NO_ADS_VAST_RESPONSE:Lcom/mopub/mobileads/VastErrorCode;

    .line 476
    :goto_0
    invoke-static {v1, v0, v2, v2, p3}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 482
    const/4 v0, 0x1

    .line 484
    :goto_1
    return v0

    .line 477
    :cond_0
    sget-object v0, Lcom/mopub/mobileads/VastErrorCode;->UNDEFINED_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    goto :goto_0

    .line 484
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private followVastRedirect(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "redirectUrl"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 802
    iget v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    const/16 v4, 0xa

    if-ge v3, v4, :cond_2

    .line 803
    iget v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    .line 805
    const/4 v2, 0x0

    .line 806
    .local v2, "urlConnection":Ljava/net/HttpURLConnection;
    const/4 v0, 0x0

    .line 808
    .local v0, "inputStream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {p1}, Lcom/mopub/common/MoPubHttpUrlConnection;->getHttpUrlConnection(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    .line 809
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .local v1, "inputStream":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v1}, Lcom/mopub/common/util/Strings;->fromStream(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v3

    .line 813
    invoke-static {v1}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 814
    if-eqz v2, :cond_0

    .line 815
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 820
    .end local v1    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_0
    :goto_0
    return-object v3

    .line 813
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    :catchall_0
    move-exception v3

    :goto_1
    invoke-static {v0}, Lcom/mopub/common/util/Streams;->closeStream(Ljava/io/Closeable;)V

    .line 814
    if-eqz v2, :cond_1

    .line 815
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw v3

    .line 820
    .end local v0    # "inputStream":Ljava/io/InputStream;
    .end local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 813
    .restart local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v2    # "urlConnection":Ljava/net/HttpURLConnection;
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "inputStream":Ljava/io/InputStream;
    .restart local v0    # "inputStream":Ljava/io/InputStream;
    goto :goto_1
.end method

.method static isValidSequenceNumber(Ljava/lang/String;)Z
    .locals 4
    .param p0, "sequence"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 785
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 794
    :cond_0
    :goto_0
    return v2

    .line 789
    :cond_1
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 790
    .local v1, "sequenceInt":I
    const/4 v3, 0x2

    if-lt v1, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    .line 791
    .end local v1    # "sequenceInt":I
    :catch_0
    move-exception v0

    .line 794
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method private populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1
    .param p1, "linearXmlManager"    # Lcom/mopub/mobileads/VastLinearXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 403
    const-string v0, "linearXmlManager cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 404
    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 406
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getAbsoluteProgressTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addAbsoluteTrackers(Ljava/util/List;)V

    .line 408
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getFractionalProgressTrackers()Ljava/util/List;

    move-result-object v0

    .line 407
    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addFractionalTrackers(Ljava/util/List;)V

    .line 409
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getPauseTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addPauseTrackers(Ljava/util/List;)V

    .line 410
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getResumeTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addResumeTrackers(Ljava/util/List;)V

    .line 411
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoCompleteTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCompleteTrackers(Ljava/util/List;)V

    .line 412
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoCloseTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addCloseTrackers(Ljava/util/List;)V

    .line 413
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getVideoSkipTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addSkipTrackers(Ljava/util/List;)V

    .line 414
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addClickTrackers(Ljava/util/List;)V

    .line 417
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getSkipOffsetString()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 418
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getSkipOffset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setSkipOffset(Ljava/lang/String;)V

    .line 422
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVastIconConfig()Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    if-nez v0, :cond_1

    .line 423
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastLinearXmlManager;->getIconXmlManagers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestIcon(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setVastIconConfig(Lcom/mopub/mobileads/VastIconConfig;)V

    .line 425
    :cond_1
    return-void
.end method

.method private populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 1
    .param p1, "xmlManager"    # Lcom/mopub/mobileads/VastXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 438
    const-string v0, "xmlManager cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 439
    const-string v0, "vastVideoConfig cannot be null"

    invoke-static {p2, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getMoPubImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 443
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 444
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomCtaText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCtaText(Ljava/lang/String;)V

    .line 446
    :cond_0
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 447
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomSkipText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomSkipText(Ljava/lang/String;)V

    .line 449
    :cond_1
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 450
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomCloseIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomCloseIconUrl(Ljava/lang/String;)V

    .line 452
    :cond_2
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->isCustomForceOrientationSet()Z

    move-result v0

    if-nez v0, :cond_3

    .line 453
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastXmlManager;->getCustomForceOrientation()Lcom/mopub/common/util/DeviceUtils$ForceOrientation;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/mopub/mobileads/VastVideoConfig;->setCustomForceOrientation(Lcom/mopub/common/util/DeviceUtils$ForceOrientation;)V

    .line 455
    :cond_3
    return-void
.end method

.method private populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 6
    .param p1, "vastInLineXmlManager"    # Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 342
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 343
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 345
    invoke-virtual {p2}, Lcom/mopub/mobileads/VastVideoConfig;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 362
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;->getVastExtensionParentXmlManager()Lcom/mopub/mobileads/VastExtensionParentXmlManager;

    move-result-object v0

    .line 351
    .local v0, "vastExtensionParentXmlManager":Lcom/mopub/mobileads/VastExtensionParentXmlManager;
    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0}, Lcom/mopub/mobileads/VastExtensionParentXmlManager;->getVastExtensionXmlManagers()Ljava/util/List;

    move-result-object v2

    .line 354
    .local v2, "vastExtensionXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastExtensionXmlManager;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mopub/mobileads/VastExtensionXmlManager;

    .line 355
    .local v1, "vastExtensionXmlManager":Lcom/mopub/mobileads/VastExtensionXmlManager;
    const-string v4, "MoPub"

    invoke-virtual {v1}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 357
    invoke-virtual {v1}, Lcom/mopub/mobileads/VastExtensionXmlManager;->getVideoViewabilityTracker()Lcom/mopub/mobileads/VideoViewabilityTracker;

    move-result-object v3

    .line 356
    invoke-virtual {p2, v3}, Lcom/mopub/mobileads/VastVideoConfig;->setVideoViewabilityTracker(Lcom/mopub/mobileads/VideoViewabilityTracker;)V

    goto :goto_0
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 5
    .param p1, "strings"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 115
    if-eqz p1, :cond_0

    array-length v3, p1

    if-eqz v3, :cond_0

    aget-object v3, p1, v4

    if-nez v3, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-object v2

    .line 120
    :cond_1
    const/4 v3, 0x0

    :try_start_0
    aget-object v1, p1, v3

    .line 121
    .local v1, "vastXml":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v1, v3}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 122
    .end local v1    # "vastXml":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Unable to generate VastVideoConfig."

    invoke-static {v3, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # [Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->doInBackground([Ljava/lang/String;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v0

    return-object v0
.end method

.method evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;
    .locals 24
    .param p1, "vastXml"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastTracker;",
            ">;)",
            "Lcom/mopub/mobileads/VastVideoConfig;"
        }
    .end annotation

    .prologue
    .line 166
    .local p2, "errorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    const-string v20, "vastXml cannot be null"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    const-string v20, "errorTrackers cannot be null"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 169
    new-instance v19, Lcom/mopub/mobileads/VastXmlManager;

    invoke-direct/range {v19 .. v19}, Lcom/mopub/mobileads/VastXmlManager;-><init>()V

    .line 171
    .local v19, "xmlManager":Lcom/mopub/mobileads/VastXmlManager;
    :try_start_0
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastXmlManager;->parseVastXml(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    invoke-virtual/range {v19 .. v19}, Lcom/mopub/mobileads/VastXmlManager;->getAdXmlManagers()Ljava/util/List;

    move-result-object v13

    .line 182
    .local v13, "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAdXmlManager;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v13, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->fireErrorTrackerIfNoAds(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManager;Landroid/content/Context;)Z

    move-result v20

    if-eqz v20, :cond_0

    .line 183
    const/16 v16, 0x0

    .line 281
    .end local v13    # "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAdXmlManager;>;"
    :goto_0
    return-object v16

    .line 172
    :catch_0
    move-exception v7

    .line 173
    .local v7, "e":Ljava/lang/Exception;
    const-string v20, "Failed to parse VAST XML"

    move-object/from16 v0, v20

    invoke-static {v0, v7}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 174
    sget-object v20, Lcom/mopub/mobileads/VastErrorCode;->XML_PARSING_ERROR:Lcom/mopub/mobileads/VastErrorCode;

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mopub/network/TrackingRequest;->makeVastTrackingHttpRequest(Ljava/util/List;Lcom/mopub/mobileads/VastErrorCode;Ljava/lang/Integer;Ljava/lang/String;Landroid/content/Context;)V

    .line 176
    const/16 v16, 0x0

    goto :goto_0

    .line 186
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v13    # "vastAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastAdXmlManager;>;"
    :cond_0
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_8

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mopub/mobileads/VastAdXmlManager;

    .line 187
    .local v12, "vastAdXmlManager":Lcom/mopub/mobileads/VastAdXmlManager;
    invoke-virtual {v12}, Lcom/mopub/mobileads/VastAdXmlManager;->getSequence()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->isValidSequenceNumber(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 193
    invoke-virtual {v12}, Lcom/mopub/mobileads/VastAdXmlManager;->getInLineXmlManager()Lcom/mopub/mobileads/VastInLineXmlManager;

    move-result-object v14

    .line 194
    .local v14, "vastInLineXmlManager":Lcom/mopub/mobileads/VastInLineXmlManager;
    if-eqz v14, :cond_2

    .line 195
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v14, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateInLineXmlManager(Lcom/mopub/mobileads/VastInLineXmlManager;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v16

    .line 198
    .local v16, "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    if-eqz v16, :cond_2

    .line 199
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_0

    .line 206
    .end local v16    # "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    :cond_2
    invoke-virtual {v12}, Lcom/mopub/mobileads/VastAdXmlManager;->getWrapperXmlManager()Lcom/mopub/mobileads/VastWrapperXmlManager;

    move-result-object v17

    .line 207
    .local v17, "vastWrapperXmlManager":Lcom/mopub/mobileads/VastWrapperXmlManager;
    if-eqz v17, :cond_1

    .line 208
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 209
    .local v18, "wrapperErrorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getErrorTrackers()Ljava/util/List;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateWrapperRedirect(Lcom/mopub/mobileads/VastWrapperXmlManager;Ljava/util/List;)Ljava/lang/String;

    move-result-object v15

    .line 212
    .local v15, "vastRedirectXml":Ljava/lang/String;
    if-eqz v15, :cond_1

    .line 216
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->evaluateVastXmlManager(Ljava/lang/String;Ljava/util/List;)Lcom/mopub/mobileads/VastVideoConfig;

    move-result-object v16

    .line 223
    .restart local v16    # "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    if-eqz v16, :cond_1

    .line 230
    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getImpressionTrackers()Ljava/util/List;

    move-result-object v20

    .line 229
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->addImpressionTrackers(Ljava/util/List;)V

    .line 232
    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getLinearXmlManagers()Ljava/util/List;

    move-result-object v10

    .line 233
    .local v10, "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastLinearXmlManager;>;"
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_3

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mopub/mobileads/VastLinearXmlManager;

    .line 234
    .local v9, "linearXmlManager":Lcom/mopub/mobileads/VastLinearXmlManager;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v9, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateLinearTrackersAndIcon(Lcom/mopub/mobileads/VastLinearXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto :goto_1

    .line 236
    .end local v9    # "linearXmlManager":Lcom/mopub/mobileads/VastLinearXmlManager;
    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateVideoViewabilityTracker(Lcom/mopub/mobileads/VastBaseInLineWrapperXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 239
    invoke-virtual/range {v17 .. v17}, Lcom/mopub/mobileads/VastWrapperXmlManager;->getCompanionAdXmlManagers()Ljava/util/List;

    move-result-object v6

    .line 242
    .local v6, "companionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    invoke-virtual/range {v16 .. v16}, Lcom/mopub/mobileads/VastVideoConfig;->hasCompanionAd()Z

    move-result v20

    if-nez v20, :cond_6

    .line 243
    sget-object v20, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 244
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v20

    sget-object v21, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v21

    .line 243
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/mopub/mobileads/VastVideoConfig;->setVastCompanionAd(Lcom/mopub/mobileads/VastCompanionAdConfig;Lcom/mopub/mobileads/VastCompanionAdConfig;)V

    .line 270
    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/mopub/mobileads/VastVideoConfig;->getSocialActionsCompanionAds()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->isEmpty()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 272
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getSocialActionsCompanionAds(Ljava/util/List;)Ljava/util/Map;

    move-result-object v20

    .line 271
    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->setSocialActionsCompanionAds(Ljava/util/Map;)V

    .line 275
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->populateMoPubCustomElements(Lcom/mopub/mobileads/VastXmlManager;Lcom/mopub/mobileads/VastVideoConfig;)V

    goto/16 :goto_0

    .line 250
    :cond_6
    const/16 v20, 0x2

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v8

    .line 252
    .local v8, "landscapeCompanionAd":Lcom/mopub/mobileads/VastCompanionAdConfig;
    const/16 v20, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/VastVideoConfig;->getVastCompanionAd(I)Lcom/mopub/mobileads/VastCompanionAdConfig;

    move-result-object v11

    .line 254
    .local v11, "portraitCompanionAd":Lcom/mopub/mobileads/VastCompanionAdConfig;
    if-eqz v8, :cond_4

    if-eqz v11, :cond_4

    .line 255
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_7
    :goto_2
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_4

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 256
    .local v5, "companionAdXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->hasResources()Z

    move-result v21

    if-nez v21, :cond_7

    .line 258
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v21

    .line 257
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 260
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v21

    .line 259
    move-object/from16 v0, v21

    invoke-virtual {v8, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    .line 262
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v21

    .line 261
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addClickTrackers(Ljava/util/List;)V

    .line 264
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v21

    .line 263
    move-object/from16 v0, v21

    invoke-virtual {v11, v0}, Lcom/mopub/mobileads/VastCompanionAdConfig;->addCreativeViewTrackers(Ljava/util/List;)V

    goto :goto_2

    .line 281
    .end local v5    # "companionAdXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    .end local v6    # "companionAdXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    .end local v8    # "landscapeCompanionAd":Lcom/mopub/mobileads/VastCompanionAdConfig;
    .end local v10    # "linearXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastLinearXmlManager;>;"
    .end local v11    # "portraitCompanionAd":Lcom/mopub/mobileads/VastCompanionAdConfig;
    .end local v12    # "vastAdXmlManager":Lcom/mopub/mobileads/VastAdXmlManager;
    .end local v14    # "vastInLineXmlManager":Lcom/mopub/mobileads/VastInLineXmlManager;
    .end local v15    # "vastRedirectXml":Ljava/lang/String;
    .end local v16    # "vastVideoConfig":Lcom/mopub/mobileads/VastVideoConfig;
    .end local v17    # "vastWrapperXmlManager":Lcom/mopub/mobileads/VastWrapperXmlManager;
    .end local v18    # "wrapperErrorTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_8
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method getBestCompanionAd(Ljava/util/List;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Lcom/mopub/mobileads/VastCompanionAdConfig;
    .locals 25
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "orientation"    # Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastCompanionAdXmlManager;",
            ">;",
            "Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;",
            ")",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;"
        }
    .end annotation

    .prologue
    .line 527
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    const-string v4, "managers cannot be null"

    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 528
    const-string v4, "orientation cannot be null"

    move-object/from16 v0, p2

    invoke-static {v0, v4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 530
    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 532
    .local v18, "companionXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    const-wide/high16 v12, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 533
    .local v12, "bestCompanionFitness":D
    const/4 v11, 0x0

    .line 534
    .local v11, "bestCompanionXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    const/4 v7, 0x0

    .line 535
    .local v7, "bestVastResource":Lcom/mopub/mobileads/VastResource;
    const/4 v14, 0x0

    .line 538
    .local v14, "bestVastScaledDimensions":Landroid/graphics/Point;
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v5

    array-length v6, v5

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    aget-object v20, v5, v4

    .line 540
    .local v20, "type":Lcom/mopub/mobileads/VastResource$Type;
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 541
    .local v24, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    :cond_0
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 542
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 544
    .local v15, "companionXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    invoke-virtual {v15}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v23

    .line 545
    .local v23, "width":Ljava/lang/Integer;
    invoke-virtual {v15}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v19

    .line 546
    .local v19, "height":Ljava/lang/Integer;
    if-eqz v23, :cond_0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0x12c

    if-lt v8, v9, :cond_0

    if-eqz v19, :cond_0

    .line 547
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/16 v9, 0xfa

    if-lt v8, v9, :cond_0

    .line 551
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    invoke-virtual {v0, v8, v9, v1, v2}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->getScaledDimensions(IILcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Landroid/graphics/Point;

    move-result-object v22

    .line 553
    .local v22, "vastScaledDimensions":Landroid/graphics/Point;
    invoke-virtual {v15}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v8

    move-object/from16 v0, v22

    iget v9, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v22

    iget v10, v0, Landroid/graphics/Point;->y:I

    .line 552
    move-object/from16 v0, v20

    invoke-static {v8, v0, v9, v10}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v21

    .line 555
    .local v21, "vastResource":Lcom/mopub/mobileads/VastResource;
    if-eqz v21, :cond_0

    .line 560
    sget-object v8, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->PORTRAIT:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    move-object/from16 v0, p2

    if-ne v8, v0, :cond_1

    .line 561
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v16

    .line 565
    .local v16, "companionFitness":D
    :goto_2
    cmpg-double v8, v16, v12

    if-gez v8, :cond_0

    .line 566
    move-wide/from16 v12, v16

    .line 567
    move-object v11, v15

    .line 568
    move-object/from16 v7, v21

    .line 569
    move-object/from16 v14, v22

    goto :goto_1

    .line 563
    .end local v16    # "companionFitness":D
    :cond_1
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v16

    .restart local v16    # "companionFitness":D
    goto :goto_2

    .line 572
    .end local v15    # "companionXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    .end local v16    # "companionFitness":D
    .end local v19    # "height":Ljava/lang/Integer;
    .end local v21    # "vastResource":Lcom/mopub/mobileads/VastResource;
    .end local v22    # "vastScaledDimensions":Landroid/graphics/Point;
    .end local v23    # "width":Ljava/lang/Integer;
    :cond_2
    if-eqz v11, :cond_4

    .line 577
    .end local v20    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .end local v24    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    :cond_3
    if-eqz v11, :cond_5

    .line 578
    new-instance v4, Lcom/mopub/mobileads/VastCompanionAdConfig;

    iget v5, v14, Landroid/graphics/Point;->x:I

    iget v6, v14, Landroid/graphics/Point;->y:I

    .line 582
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v8

    .line 583
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v9

    .line 584
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v10

    invoke-direct/range {v4 .. v10}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 587
    :goto_3
    return-object v4

    .line 538
    .restart local v20    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .restart local v24    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 587
    .end local v20    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .end local v24    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    :cond_5
    const/4 v4, 0x0

    goto :goto_3
.end method

.method getBestIcon(Ljava/util/List;)Lcom/mopub/mobileads/VastIconConfig;
    .locals 16
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastIconXmlManager;",
            ">;)",
            "Lcom/mopub/mobileads/VastIconConfig;"
        }
    .end annotation

    .prologue
    .line 716
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    const-string v1, "managers cannot be null"

    move-object/from16 v0, p1

    invoke-static {v0, v1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 720
    .local v12, "iconXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    invoke-static {}, Lcom/mopub/mobileads/VastResource$Type;->values()[Lcom/mopub/mobileads/VastResource$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v13, v2, v1

    .line 721
    .local v13, "type":Lcom/mopub/mobileads/VastResource$Type;
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .line 722
    .local v15, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    :cond_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 723
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/mopub/mobileads/VastIconXmlManager;

    .line 725
    .local v11, "iconXmlManager":Lcom/mopub/mobileads/VastIconXmlManager;
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v14

    .line 726
    .local v14, "width":Ljava/lang/Integer;
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v10

    .line 729
    .local v10, "height":Ljava/lang/Integer;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_0

    if-eqz v10, :cond_0

    .line 730
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/16 v5, 0x12c

    if-gt v4, v5, :cond_0

    .line 735
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v4

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 734
    invoke-static {v4, v13, v5, v7}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v6

    .line 737
    .local v6, "vastResource":Lcom/mopub/mobileads/VastResource;
    if-eqz v6, :cond_0

    .line 741
    new-instance v1, Lcom/mopub/mobileads/VastIconConfig;

    .line 742
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 743
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 744
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getOffsetMS()Ljava/lang/Integer;

    move-result-object v4

    .line 745
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getDurationMS()Ljava/lang/Integer;

    move-result-object v5

    .line 747
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getClickTrackingUris()Ljava/util/List;

    move-result-object v7

    .line 748
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getClickThroughUri()Ljava/lang/String;

    move-result-object v8

    .line 749
    invoke-virtual {v11}, Lcom/mopub/mobileads/VastIconXmlManager;->getViewTrackingUris()Ljava/util/List;

    move-result-object v9

    invoke-direct/range {v1 .. v9}, Lcom/mopub/mobileads/VastIconConfig;-><init>(IILjava/lang/Integer;Ljava/lang/Integer;Lcom/mopub/mobileads/VastResource;Ljava/util/List;Ljava/lang/String;Ljava/util/List;)V

    .line 753
    .end local v6    # "vastResource":Lcom/mopub/mobileads/VastResource;
    .end local v10    # "height":Ljava/lang/Integer;
    .end local v11    # "iconXmlManager":Lcom/mopub/mobileads/VastIconXmlManager;
    .end local v13    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .end local v14    # "width":Ljava/lang/Integer;
    .end local v15    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    :goto_1
    return-object v1

    .line 720
    .restart local v13    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .restart local v15    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 753
    .end local v13    # "type":Lcom/mopub/mobileads/VastResource$Type;
    .end local v15    # "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastIconXmlManager;>;"
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method getBestMediaFileUrl(Ljava/util/List;)Ljava/lang/String;
    .locals 14
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastMediaXmlManager;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 490
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastMediaXmlManager;>;"
    const-string v12, "managers cannot be null"

    invoke-static {p1, v12}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 492
    .local v10, "mediaXmlManagers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastMediaXmlManager;>;"
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 493
    .local v2, "bestMediaFitness":D
    const/4 v0, 0x0

    .line 495
    .local v0, "bestMediaFileUrl":Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .line 496
    .local v11, "xmlManagerIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/mopub/mobileads/VastMediaXmlManager;>;"
    :cond_0
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 497
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mopub/mobileads/VastMediaXmlManager;

    .line 499
    .local v9, "mediaXmlManager":Lcom/mopub/mobileads/VastMediaXmlManager;
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastMediaXmlManager;->getType()Ljava/lang/String;

    move-result-object v6

    .line 500
    .local v6, "mediaType":Ljava/lang/String;
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastMediaXmlManager;->getMediaUrl()Ljava/lang/String;

    move-result-object v7

    .line 501
    .local v7, "mediaUrl":Ljava/lang/String;
    sget-object v12, Lcom/mopub/mobileads/VastXmlManagerAggregator;->VIDEO_MIME_TYPES:Ljava/util/List;

    invoke-interface {v12, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1

    if-nez v7, :cond_2

    .line 502
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastMediaXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v8

    .line 507
    .local v8, "mediaWidth":Ljava/lang/Integer;
    invoke-virtual {v9}, Lcom/mopub/mobileads/VastMediaXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v1

    .line 508
    .local v1, "mediaHeight":Ljava/lang/Integer;
    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lez v12, :cond_0

    .line 512
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-direct {p0, v12, v13}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->calculateFitness(II)D

    move-result-wide v4

    .line 513
    .local v4, "mediaFitness":D
    cmpg-double v12, v4, v2

    if-gez v12, :cond_0

    .line 514
    move-wide v2, v4

    .line 515
    move-object v0, v7

    goto :goto_0

    .line 519
    .end local v1    # "mediaHeight":Ljava/lang/Integer;
    .end local v4    # "mediaFitness":D
    .end local v6    # "mediaType":Ljava/lang/String;
    .end local v7    # "mediaUrl":Ljava/lang/String;
    .end local v8    # "mediaWidth":Ljava/lang/Integer;
    .end local v9    # "mediaXmlManager":Lcom/mopub/mobileads/VastMediaXmlManager;
    :cond_3
    return-object v0
.end method

.method getScaledDimensions(IILcom/mopub/mobileads/VastResource$Type;Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;)Landroid/graphics/Point;
    .locals 14
    .param p1, "widthDp"    # I
    .param p2, "heightDp"    # I
    .param p3, "type"    # Lcom/mopub/mobileads/VastResource$Type;
    .param p4, "orientation"    # Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 659
    new-instance v1, Landroid/graphics/Point;

    move/from16 v0, p2

    invoke-direct {v1, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    .line 660
    .local v1, "defaultPoint":Landroid/graphics/Point;
    iget-object v12, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    const-string v13, "window"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/WindowManager;

    .line 661
    invoke-interface {v12}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 662
    .local v2, "display":Landroid/view/Display;
    invoke-virtual {v2}, Landroid/view/Display;->getWidth()I

    move-result v10

    .line 663
    .local v10, "x":I
    invoke-virtual {v2}, Landroid/view/Display;->getHeight()I

    move-result v11

    .line 665
    .local v11, "y":I
    int-to-float v12, p1

    iget-object v13, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v8

    .line 666
    .local v8, "widthPx":I
    move/from16 v0, p2

    int-to-float v12, v0

    iget-object v13, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/mopub/common/util/Dips;->dipsToIntPixels(FLandroid/content/Context;)I

    move-result v3

    .line 669
    .local v3, "heightPx":I
    sget-object v12, Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;->LANDSCAPE:Lcom/mopub/mobileads/VastXmlManagerAggregator$CompanionOrientation;

    move-object/from16 v0, p4

    if-ne v12, v0, :cond_1

    .line 670
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 671
    .local v7, "screenWidthPx":I
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 678
    .local v6, "screenHeightPx":I
    :goto_0
    add-int/lit8 v12, v7, -0x10

    if-gt v8, v12, :cond_2

    add-int/lit8 v12, v6, -0x10

    if-gt v3, v12, :cond_2

    .line 710
    .end local v1    # "defaultPoint":Landroid/graphics/Point;
    :cond_0
    :goto_1
    return-object v1

    .line 673
    .end local v6    # "screenHeightPx":I
    .end local v7    # "screenWidthPx":I
    .restart local v1    # "defaultPoint":Landroid/graphics/Point;
    :cond_1
    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 674
    .restart local v7    # "screenWidthPx":I
    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v6

    .restart local v6    # "screenHeightPx":I
    goto :goto_0

    .line 683
    :cond_2
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    .line 684
    .local v5, "point":Landroid/graphics/Point;
    sget-object v12, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    move-object/from16 v0, p3

    if-ne v12, v0, :cond_3

    .line 685
    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, v5, Landroid/graphics/Point;->x:I

    .line 686
    invoke-static {v6, v3}, Ljava/lang/Math;->min(II)I

    move-result v12

    iput v12, v5, Landroid/graphics/Point;->y:I

    .line 700
    :goto_2
    iget v12, v5, Landroid/graphics/Point;->x:I

    add-int/lit8 v12, v12, -0x10

    iput v12, v5, Landroid/graphics/Point;->x:I

    .line 701
    iget v12, v5, Landroid/graphics/Point;->y:I

    add-int/lit8 v12, v12, -0x10

    iput v12, v5, Landroid/graphics/Point;->y:I

    .line 703
    iget v12, v5, Landroid/graphics/Point;->x:I

    if-ltz v12, :cond_0

    iget v12, v5, Landroid/graphics/Point;->y:I

    if-ltz v12, :cond_0

    .line 707
    iget v12, v5, Landroid/graphics/Point;->x:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v12

    iput v12, v5, Landroid/graphics/Point;->x:I

    .line 708
    iget v12, v5, Landroid/graphics/Point;->y:I

    int-to-float v12, v12

    iget-object v13, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/mopub/common/util/Dips;->pixelsToIntDips(FLandroid/content/Context;)I

    move-result v12

    iput v12, v5, Landroid/graphics/Point;->y:I

    move-object v1, v5

    .line 710
    goto :goto_1

    .line 688
    :cond_3
    int-to-float v12, v8

    int-to-float v13, v7

    div-float v9, v12, v13

    .line 689
    .local v9, "widthRatio":F
    int-to-float v12, v3

    int-to-float v13, v6

    div-float v4, v12, v13

    .line 691
    .local v4, "heightRatio":F
    cmpl-float v12, v9, v4

    if-ltz v12, :cond_4

    .line 692
    iput v7, v5, Landroid/graphics/Point;->x:I

    .line 693
    int-to-float v12, v3

    div-float/2addr v12, v9

    float-to-int v12, v12

    iput v12, v5, Landroid/graphics/Point;->y:I

    goto :goto_2

    .line 695
    :cond_4
    int-to-float v12, v8

    div-float/2addr v12, v4

    float-to-int v12, v12

    iput v12, v5, Landroid/graphics/Point;->x:I

    .line 696
    iput v6, v5, Landroid/graphics/Point;->y:I

    goto :goto_2
.end method

.method getSocialActionsCompanionAds(Ljava/util/List;)Ljava/util/Map;
    .locals 13
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/VastCompanionAdXmlManager;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mopub/mobileads/VastCompanionAdConfig;",
            ">;"
        }
    .end annotation

    .prologue
    .line 594
    .local p1, "managers":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastCompanionAdXmlManager;>;"
    const-string v0, "managers cannot be null"

    invoke-static {p1, v0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 596
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 599
    .local v10, "socialActionsCompanionAds":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/mopub/mobileads/VastCompanionAdConfig;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mopub/mobileads/VastCompanionAdXmlManager;

    .line 600
    .local v8, "companionXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getWidth()Ljava/lang/Integer;

    move-result-object v11

    .line 601
    .local v11, "width":Ljava/lang/Integer;
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getHeight()Ljava/lang/Integer;

    move-result-object v9

    .line 602
    .local v9, "height":Ljava/lang/Integer;
    if-eqz v11, :cond_0

    if-eqz v9, :cond_0

    .line 606
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getAdSlotId()Ljava/lang/String;

    move-result-object v7

    .line 607
    .local v7, "adSlotId":Ljava/lang/String;
    const-string v0, "adsBy"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 609
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x4b

    if-gt v0, v1, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    .line 623
    :cond_1
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getResourceXmlManager()Lcom/mopub/mobileads/VastResourceXmlManager;

    move-result-object v0

    sget-object v1, Lcom/mopub/mobileads/VastResource$Type;->HTML_RESOURCE:Lcom/mopub/mobileads/VastResource$Type;

    .line 624
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 622
    invoke-static {v0, v1, v2, v4}, Lcom/mopub/mobileads/VastResource;->fromVastResourceXmlManager(Lcom/mopub/mobileads/VastResourceXmlManager;Lcom/mopub/mobileads/VastResource$Type;II)Lcom/mopub/mobileads/VastResource;

    move-result-object v3

    .line 625
    .local v3, "vastResource":Lcom/mopub/mobileads/VastResource;
    if-eqz v3, :cond_0

    .line 629
    new-instance v0, Lcom/mopub/mobileads/VastCompanionAdConfig;

    .line 631
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 632
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 634
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v4

    .line 635
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getClickTrackers()Ljava/util/List;

    move-result-object v5

    .line 636
    invoke-virtual {v8}, Lcom/mopub/mobileads/VastCompanionAdXmlManager;->getCompanionCreativeViewTrackers()Ljava/util/List;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mobileads/VastCompanionAdConfig;-><init>(IILcom/mopub/mobileads/VastResource;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 629
    invoke-interface {v10, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 612
    .end local v3    # "vastResource":Lcom/mopub/mobileads/VastResource;
    :cond_2
    const-string v0, "socialActions"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x96

    if-gt v0, v1, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_1

    goto/16 :goto_0

    .line 639
    .end local v7    # "adSlotId":Ljava/lang/String;
    .end local v8    # "companionXmlManager":Lcom/mopub/mobileads/VastCompanionAdXmlManager;
    .end local v9    # "height":Ljava/lang/Integer;
    .end local v11    # "width":Ljava/lang/Integer;
    :cond_3
    return-object v10
.end method

.method protected onCancelled()V
    .locals 2

    .prologue
    .line 138
    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    .line 139
    .local v0, "listener":Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 142
    :cond_0
    return-void
.end method

.method protected onPostExecute(Lcom/mopub/mobileads/VastVideoConfig;)V
    .locals 2
    .param p1, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 130
    iget-object v1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mVastXmlManagerAggregatorListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;

    .line 131
    .local v0, "listener":Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;
    if-eqz v0, :cond_0

    .line 132
    invoke-interface {v0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator$VastXmlManagerAggregatorListener;->onAggregationComplete(Lcom/mopub/mobileads/VastVideoConfig;)V

    .line 134
    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 43
    check-cast p1, Lcom/mopub/mobileads/VastVideoConfig;

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/VastXmlManagerAggregator;->onPostExecute(Lcom/mopub/mobileads/VastVideoConfig;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/network/Networking;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 111
    return-void
.end method

.method setTimesFollowedVastRedirect(I)V
    .locals 0
    .param p1, "timesFollowedVastRedirect"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 826
    iput p1, p0, Lcom/mopub/mobileads/VastXmlManagerAggregator;->mTimesFollowedVastRedirect:I

    .line 827
    return-void
.end method
