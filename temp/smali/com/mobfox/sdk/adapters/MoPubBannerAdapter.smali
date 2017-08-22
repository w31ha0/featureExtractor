.class public Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;
.super Lcom/mopub/mobileads/CustomEventBanner;
.source "MoPubBannerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;
    }
.end annotation


# static fields
.field static final BANNER_FACILITY:Ljava/lang/String; = "MoPubBannerAdapter"

.field static final TAG:Ljava/lang/String; = "MobFoxAdapter"


# instance fields
.field banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

.field context:Landroid/content/Context;

.field extra:Ljava/lang/String;

.field invh:Ljava/lang/String;

.field mopubListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventBanner;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->invh:Ljava/lang/String;

    .line 40
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->extra:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$100(Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 0
    .param p0, "x0"    # Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;
    .param p1, "x1"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->tryReportError(Lcom/mopub/mobileads/MoPubErrorCode;)V

    return-void
.end method

.method private getMoPubSize(Ljava/util/Map;)Landroid/graphics/Point;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/graphics/Point;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v2, "com_mopub_ad_width"

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "com_mopub_ad_height"

    .line 94
    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 96
    .local v1, "size":Landroid/graphics/Point;
    const-string v2, "com_mopub_ad_width"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 97
    const-string v2, "com_mopub_ad_height"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v1, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v1    # "size":Landroid/graphics/Point;
    :goto_0
    return-object v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, v2}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->tryReportError(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 105
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setAdReport(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    const-string v3, "mopub-intent-ad-report"

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 131
    const-string v3, "mopub-intent-ad-report"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mopub/common/AdReport;

    .line 132
    .local v2, "report":Lcom/mopub/common/AdReport;
    if-nez v2, :cond_1

    .line 140
    .end local v2    # "report":Lcom/mopub/common/AdReport;
    :cond_0
    :goto_0
    return-void

    .line 133
    .restart local v2    # "report":Lcom/mopub/common/AdReport;
    :cond_1
    invoke-static {v2}, Lcom/mobfox/sdk/adapters/MoPubUtils;->parseReport(Lcom/mopub/common/AdReport;)Lorg/json/JSONObject;

    move-result-object v0

    .line 134
    .local v0, "data":Lorg/json/JSONObject;
    const-string v3, "MobFoxAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MobFox MoPub Adapter >> adReport: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 137
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v2    # "report":Lcom/mopub/common/AdReport;
    :catch_0
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "MobFoxAdapter"

    const-string v4, "MobFox MoPub Adapter >> error"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private tryReportError(Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->mopubListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->mopubListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    invoke-interface {v0, p1}, Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;->onBannerFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 146
    :cond_0
    return-void
.end method


# virtual methods
.method protected createBanner(II)Lcom/mobfox/sdk/tagbanner/TagBanner;
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 151
    new-instance v0, Lcom/mobfox/sdk/tagbanner/TagBanner;

    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->invh:Ljava/lang/String;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/mobfox/sdk/tagbanner/TagBanner;-><init>(Landroid/content/Context;IILjava/lang/String;)V

    return-object v0
.end method

.method public loadBanner(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 7
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "customEventBannerListener"    # Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;
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
    .line 45
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "MobFoxAdapter"

    const-string v3, "MobFox MoPub Adapter >> load"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    :try_start_0
    iput-object p2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->mopubListener:Lcom/mopub/mobileads/CustomEventBanner$CustomEventBannerListener;

    .line 50
    if-nez p1, :cond_0

    .line 51
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, v2}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->tryReportError(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 89
    :goto_0
    return-void

    .line 55
    :cond_0
    iput-object p1, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->context:Landroid/content/Context;

    .line 57
    if-eqz p4, :cond_1

    const-string v2, "invh"

    invoke-interface {p4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "invh"

    .line 58
    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 59
    :cond_1
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, v2}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->tryReportError(Lcom/mopub/mobileads/MoPubErrorCode;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "MobFoxAdapter"

    const-string v3, "MobFox MoPub Adapter >> error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, v2}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->tryReportError(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 63
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_2
    :try_start_1
    const-string v2, "invh"

    invoke-interface {p4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->invh:Ljava/lang/String;

    .line 65
    invoke-direct {p0, p3}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->getMoPubSize(Ljava/util/Map;)Landroid/graphics/Point;

    move-result-object v1

    .line 66
    .local v1, "size":Landroid/graphics/Point;
    if-nez v1, :cond_3

    .line 67
    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->ADAPTER_CONFIGURATION_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-direct {p0, v2}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->tryReportError(Lcom/mopub/mobileads/MoPubErrorCode;)V

    goto :goto_0

    .line 71
    :cond_3
    const-string v2, "mopub-intent-ad-report"

    invoke-interface {p3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "mopub-intent-ad-report"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 72
    const-string v2, "mopub-intent-ad-report"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->extra:Ljava/lang/String;

    .line 75
    :cond_4
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, v2, v3}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->createBanner(II)Lcom/mobfox/sdk/tagbanner/TagBanner;

    move-result-object v2

    iput-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

    .line 76
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

    const-string v3, "mopub"

    invoke-virtual {v2, v3}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setAdapter(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

    new-instance v3, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$MobFoxBannerListener;-><init>(Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;Lcom/mobfox/sdk/adapters/MoPubBannerAdapter$1;)V

    invoke-virtual {v2, v3}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setListener(Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;)V

    .line 78
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

    new-instance v3, Lcom/mobfox/sdk/tagbanner/TagParams;

    invoke-direct {v3}, Lcom/mobfox/sdk/tagbanner/TagParams;-><init>()V

    invoke-virtual {v2, v3}, Lcom/mobfox/sdk/tagbanner/TagBanner;->load(Lcom/mobfox/sdk/tagbanner/TagParams;)V

    .line 80
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->invh:Ljava/lang/String;

    sget-object v4, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->REQUEST:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    invoke-virtual {v4}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MoPubBannerAdapter"

    iget-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->extra:Ljava/lang/String;

    invoke-static {v2, v3, v4, v5, v6}, Lcom/mobfox/sdk/logging/RemoteLogger;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 88
    invoke-direct {p0, p3}, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->setAdReport(Ljava/util/Map;)V

    goto/16 :goto_0
.end method

.method protected onInvalidate()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

    if-eqz v1, :cond_0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-static {v1}, Lcom/mopub/common/util/Views;->removeFromParent(Landroid/view/View;)V

    .line 114
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-virtual {v1}, Lcom/mobfox/sdk/tagbanner/TagBanner;->removeAllViews()V

    .line 115
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/tagbanner/TagBanner;->setListener(Lcom/mobfox/sdk/tagbanner/TagBanner$Listener;)V

    .line 116
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-virtual {v1}, Lcom/mobfox/sdk/tagbanner/TagBanner;->destroy()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_0
    iput-object v3, p0, Lcom/mobfox/sdk/adapters/MoPubBannerAdapter;->banner:Lcom/mobfox/sdk/tagbanner/TagBanner;

    .line 123
    :cond_0
    return-void

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "MobFoxAdapter"

    const-string v2, "MobFox MoPub Adapter >> error invalidating"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
