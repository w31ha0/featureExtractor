.class public Lcom/mopub/mobileads/VastVideoViewProgressRunnable;
.super Lcom/mopub/mobileads/RepeatingHandlerRunnable;
.source "VastVideoViewProgressRunnable.java"


# instance fields
.field private final mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mopub/mobileads/VastVideoViewController;Lcom/mopub/mobileads/VastVideoConfig;Landroid/os/Handler;)V
    .locals 0
    .param p1, "videoViewController"    # Lcom/mopub/mobileads/VastVideoViewController;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "vastVideoConfig"    # Lcom/mopub/mobileads/VastVideoConfig;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 24
    invoke-direct {p0, p3}, Lcom/mopub/mobileads/RepeatingHandlerRunnable;-><init>(Landroid/os/Handler;)V

    .line 26
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 27
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 28
    iput-object p1, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    .line 29
    iput-object p2, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 30
    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 7

    .prologue
    .line 34
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoViewController;->getDuration()I

    move-result v4

    .line 35
    .local v4, "videoLength":I
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoViewController;->getCurrentPosition()I

    move-result v0

    .line 37
    .local v0, "currentPosition":I
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v5}, Lcom/mopub/mobileads/VastVideoViewController;->updateProgressBar()V

    .line 39
    if-lez v4, :cond_2

    .line 40
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVastVideoConfig:Lcom/mopub/mobileads/VastVideoConfig;

    .line 41
    invoke-virtual {v5, v0, v4}, Lcom/mopub/mobileads/VastVideoConfig;->getUntriggeredTrackersBefore(II)Ljava/util/List;

    move-result-object v3

    .line 42
    .local v3, "trackersToTrack":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 43
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .local v1, "trackUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/mobileads/VastTracker;

    .line 45
    .local v2, "tracker":Lcom/mopub/mobileads/VastTracker;
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastTracker;->getTrackingUrl()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-virtual {v2}, Lcom/mopub/mobileads/VastTracker;->setTracked()V

    goto :goto_0

    .line 48
    .end local v2    # "tracker":Lcom/mopub/mobileads/VastTracker;
    :cond_0
    new-instance v5, Lcom/mopub/mobileads/VastMacroHelper;

    invoke-direct {v5, v1}, Lcom/mopub/mobileads/VastMacroHelper;-><init>(Ljava/util/List;)V

    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    .line 50
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastVideoViewController;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mopub/mobileads/VastMacroHelper;->withAssetUri(Ljava/lang/String;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v5

    .line 51
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/mopub/mobileads/VastMacroHelper;->withContentPlayHead(Ljava/lang/Integer;)Lcom/mopub/mobileads/VastMacroHelper;

    move-result-object v5

    .line 52
    invoke-virtual {v5}, Lcom/mopub/mobileads/VastMacroHelper;->getUris()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    .line 53
    invoke-virtual {v6}, Lcom/mopub/mobileads/VastVideoViewController;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 48
    invoke-static {v5, v6}, Lcom/mopub/network/TrackingRequest;->makeTrackingHttpRequest(Ljava/lang/Iterable;Landroid/content/Context;)V

    .line 56
    .end local v1    # "trackUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    iget-object v5, p0, Lcom/mopub/mobileads/VastVideoViewProgressRunnable;->mVideoViewController:Lcom/mopub/mobileads/VastVideoViewController;

    invoke-virtual {v5, v0}, Lcom/mopub/mobileads/VastVideoViewController;->handleIconDisplay(I)V

    .line 58
    .end local v3    # "trackersToTrack":Ljava/util/List;, "Ljava/util/List<Lcom/mopub/mobileads/VastTracker;>;"
    :cond_2
    return-void
.end method
