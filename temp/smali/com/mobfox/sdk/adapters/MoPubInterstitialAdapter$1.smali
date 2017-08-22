.class Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;
.super Ljava/lang/Object;
.source "MoPubInterstitialAdapter.java"

# interfaces
.implements Lcom/mobfox/sdk/interstitialads/InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->loadInterstitial(Landroid/content/Context;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Ljava/util/Map;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

.field final synthetic val$invh:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iput-object p2, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    iput-object p3, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$invh:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Adapter >> clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialClicked()V

    .line 117
    return-void
.end method

.method public onInterstitialClosed(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Adapter >> closed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v1, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v1

    .line 100
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 106
    :goto_0
    return-void

    .line 101
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 102
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialDismissed()V

    .line 103
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v1, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v1

    .line 104
    :try_start_1
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    .line 105
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 101
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public onInterstitialFailed(Lcom/mobfox/sdk/interstitialads/InterstitialAd;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "interstitial"    # Lcom/mobfox/sdk/interstitialads/InterstitialAd;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Adapter >> error"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 85
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v1, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v1

    .line 86
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 94
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    sget-object v2, Lcom/mopub/mobileads/MoPubErrorCode;->INTERNAL_ERROR:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-interface {v0, v2}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mopub/mobileads/MoPubErrorCode;)V

    .line 88
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    .line 89
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$invh:Ljava/lang/String;

    sget-object v2, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->ERROR_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    invoke-virtual {v2}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MoPubInterstitialAdapter"

    iget-object v4, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v4, v4, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->extra:Ljava/lang/String;

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/mobfox/sdk/logging/RemoteLogger;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onInterstitialFinished()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Adapter >> finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V
    .locals 5
    .param p1, "interstitial"    # Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Adapter >> loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v1, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 80
    :goto_0
    return-void

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialLoaded()V

    .line 74
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->used:Ljava/lang/Boolean;

    .line 75
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 77
    :try_start_1
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$invh:Ljava/lang/String;

    sget-object v2, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->LOADED_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    invoke-virtual {v2}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MoPubInterstitialAdapter"

    iget-object v4, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v4, v4, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->extra:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mobfox/sdk/logging/RemoteLogger;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 79
    :catch_0
    move-exception v0

    goto :goto_0

    .line 75
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public onInterstitialShown(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V
    .locals 5
    .param p1, "interstitial"    # Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Adapter >> shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$customEventInterstitialListener:Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mopub/mobileads/CustomEventInterstitial$CustomEventInterstitialListener;->onInterstitialShown()V

    .line 125
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->val$invh:Ljava/lang/String;

    sget-object v2, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->SHOWN_INTERSTITIAL:Lcom/mobfox/sdk/logging/RemoteLogger$Message;

    invoke-virtual {v2}, Lcom/mobfox/sdk/logging/RemoteLogger$Message;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MoPubInterstitialAdapter"

    iget-object v4, p0, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter$1;->this$0:Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;

    iget-object v4, v4, Lcom/mobfox/sdk/adapters/MoPubInterstitialAdapter;->extra:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mobfox/sdk/logging/RemoteLogger;->post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :goto_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method
