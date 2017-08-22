.class public Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;
.super Lcom/mopub/mobileads/CustomEventInterstitial;
.source "MoPubInterstitialAdapter.java"


# static fields
.field public static final INTERSTITIAL_FACILITY:Ljava/lang/String; = "MoPubInterstitialAdapter"


# instance fields
.field customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field extra:Ljava/lang/String;

.field invh:Ljava/lang/String;

.field mobFox:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

.field tag:Ljava/lang/String;

.field used:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/mopub/mobileads/CustomEventInterstitial;-><init>()V

    .line 22
    const-string v0, "MobFoxAdapter"

    iput-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->extra:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    .line 33
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Adapter >> constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    return-void
.end method


# virtual methods
.method protected createInterstitial(Landroid/content/Context;)Lcom/mobfox/sdk/interstitialads/InterstitialAd;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 169
    new-instance v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-direct {v0, p1}, Lcom/mobfox/sdk/interstitialads/InterstitialAd;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "customEventInterstitialListener"    # Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;",
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
    .line 39
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v7, "MobFox MoPub Adapter >> loadInterstitial"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 42
    .local v2, "id":Ljava/lang/String;
    iget-object v7, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v7

    .line 43
    const/4 v6, 0x0

    :try_start_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    .line 44
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iput-object p2, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    .line 50
    :try_start_1
    const-string v6, "invh"

    invoke-interface {p4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 51
    .local v3, "invh":Ljava/lang/String;
    const-string v6, "mopub-intent-ad-report"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 52
    const-string v6, "mopub-intent-ad-report"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->extra:Ljava/lang/String;

    .line 54
    :cond_0
    iput-object v3, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->invh:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->createInterstitial(Landroid/content/Context;)Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    move-result-object v6

    iput-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->mobFox:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    .line 67
    new-instance v4, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;

    invoke-direct {v4, p0, p2, p1, v3}, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;-><init>(Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Landroid/content/Context;Ljava/lang/String;)V

    .line 132
    .local v4, "mobFoxListener":Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;
    :try_start_2
    const-string v6, "mopub-intent-ad-report"

    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/mopub/common/AdReport;

    .line 133
    .local v5, "report":Lcom/mopub/common/AdReport;
    if-eqz v5, :cond_1

    .line 134
    invoke-static {v5}, Lcom/mobfox/sdk/adapters/MoPubUtils;->parseReport(Lcom/mopub/common/AdReport;)Lorg/json/JSONObject;

    move-result-object v0

    .line 135
    .local v0, "data":Lorg/json/JSONObject;
    iget-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MobFox MoPub Adapter >> adReport: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 141
    .end local v0    # "data":Lorg/json/JSONObject;
    .end local v5    # "report":Lcom/mopub/common/AdReport;
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->mobFox:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-virtual {v6, v3}, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->setInventoryHash(Ljava/lang/String;)V

    .line 142
    iget-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->mobFox:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-virtual {v6, v4}, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->setListener(Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;)V

    .line 143
    iget-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->mobFox:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-virtual {v6}, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->load()V

    .line 145
    :try_start_3
    sget-object v6, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->REQUEST_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    invoke-virtual {v6}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "MoPubInterstitialAdapter"

    iget-object v8, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->extra:Ljava/lang/String;

    invoke-static {p1, v3, v6, v7, v8}, Lcom/mobfox/sdk/logging/RemoteLogger;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 148
    .end local v3    # "invh":Ljava/lang/String;
    .end local v4    # "mobFoxListener":Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;
    :goto_1
    return-void

    .line 44
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v6

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v7, "MobFox MoPub Adapter >> error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 57
    iget-object v7, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v7

    .line 58
    :try_start_5
    iget-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_2

    monitor-exit v7

    goto :goto_1

    .line 61
    :catchall_1
    move-exception v6

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v6

    .line 59
    :cond_2
    :try_start_6
    sget-object v6, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {p2, v6}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 60
    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    .line 61
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    .line 137
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "invh":Ljava/lang/String;
    .restart local v4    # "mobFoxListener":Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;
    :catch_1
    move-exception v1

    .line 138
    .restart local v1    # "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v7, "MobFox MoPub Adapter >> error"

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v6

    goto :goto_1
.end method

.method protected onInvalidate()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Adapter >> onInvalidate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-nez v0, :cond_0

    .line 166
    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onLeaveApplication()V

    goto :goto_0
.end method

.method protected showInterstitial()V
    .locals 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Adapter >> showInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->mobFox:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-virtual {v0}, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->show()V

    .line 154
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    if-nez v0, :cond_0

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    goto :goto_0
.end method
