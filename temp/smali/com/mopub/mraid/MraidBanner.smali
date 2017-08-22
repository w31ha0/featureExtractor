.class Lcom/mopub/mraid/MraidBanner;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "MraidBanner.java"


# instance fields
.field private mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mMraidController:Lcom/mopub/mraid/MraidController;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/mopub/mraid/MraidBanner;)Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
    .locals 1
    .param p0, "x0"    # Lcom/mopub/mraid/MraidBanner;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    return-object v0
.end method

.method private extrasAreValid(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 95
    .local p1, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "Html-Response-Body"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customEventBannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 36
    invoke-direct {p0, p4}, Lcom/mopub/mraid/MraidBanner;->extrasAreValid(Ljava/util/Map;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 37
    const-string v3, "Html-Response-Body"

    invoke-interface {p4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 44
    .local v2, "htmlData":Ljava/lang/String;
    :try_start_0
    const-string v3, "mopub-intent-ad-report"

    invoke-interface {p3, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/common/AdReport;

    .line 45
    .local v0, "adReport":Lcom/mopub/common/AdReport;
    sget-object v3, Lcom/mopub/mraid/PlacementType;->INLINE:Lcom/mopub/mraid/PlacementType;

    invoke-static {p1, v0, v3}, Lcom/mopub/mobileads/factories/MraidControllerFactory;->create(Landroid/content/Context;Lcom/mopub/common/AdReport;Lcom/mopub/mraid/PlacementType;)Lcom/mopub/mraid/MraidController;

    move-result-object v3

    iput-object v3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    iget-object v3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    iget-object v4, p0, Lcom/mopub/mraid/MraidBanner;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    invoke-virtual {v3, v4}, Lcom/mopub/mraid/MraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 54
    iget-object v3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    new-instance v4, Lcom/mopub/mraid/MraidBanner$1;

    invoke-direct {v4, p0}, Lcom/mopub/mraid/MraidBanner$1;-><init>(Lcom/mopub/mraid/MraidBanner;)V

    invoke-virtual {v3, v4}, Lcom/mopub/mraid/MraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    .line 83
    iget-object v3, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v3, v2}, Lcom/mopub/mraid/MraidController;->loadContent(Ljava/lang/String;)V

    .line 84
    .end local v0    # "adReport":Lcom/mopub/common/AdReport;
    .end local v2    # "htmlData":Ljava/lang/String;
    :goto_0
    return-void

    .line 39
    :cond_0
    iget-object v3, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v3, v4}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 47
    .restart local v2    # "htmlData":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v3, "MRAID banner creating failed:"

    invoke-static {v3, v1}, Lcom/mopub/common/logging/MoPubLog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    iget-object v3, p0, Lcom/mopub/mraid/MraidBanner;->mBannerListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    sget-object v4, Lcom/mopub/mobileads/MoPubErrorCode;->MRAID_LOAD_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v3, v4}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mopub/mraid/MraidController;->setMraidListener(Lcom/mopub/mraid/MraidController$MraidListener;)V

    .line 90
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0}, Lcom/mopub/mraid/MraidController;->destroy()V

    .line 92
    :cond_0
    return-void
.end method

.method public setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V
    .locals 1
    .param p1, "debugListener"    # Lcom/mopub/mraid/MraidWebViewDebugListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .prologue
    .line 100
    iput-object p1, p0, Lcom/mopub/mraid/MraidBanner;->mDebugListener:Lcom/mopub/mraid/MraidWebViewDebugListener;

    .line 101
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/mopub/mraid/MraidBanner;->mMraidController:Lcom/mopub/mraid/MraidController;

    invoke-virtual {v0, p1}, Lcom/mopub/mraid/MraidController;->setDebugListener(Lcom/mopub/mraid/MraidWebViewDebugListener;)V

    .line 104
    :cond_0
    return-void
.end method
