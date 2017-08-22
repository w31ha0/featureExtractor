.class public Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;
.super Lcom/mopub/nativeads/CustomEventNative;
.source "MoPubNativeAdAdapter.java"

# interfaces
.implements Lcom/mobfox/sdk/nativeads/NativeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field id:Ljava/lang/String;

.field invh:Ljava/lang/String;

.field localExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mobFoxMopubNativeAd:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

.field public mobFoxNative:Lcom/mobfox/sdk/nativeads/Native;

.field mopublistener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

.field used:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/mopub/nativeads/CustomEventNative;-><init>()V

    .line 37
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public createMobFoxMoPubAd(Lcom/mobfox/sdk/nativeads/Native;Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;Landroid/content/Context;)Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;
    .locals 6
    .param p1, "aNative"    # Lcom/mobfox/sdk/nativeads/Native;
    .param p2, "event"    # Lcom/mobfox/sdk/customevents/CustomEventNative;
    .param p3, "ad"    # Lcom/mobfox/sdk/nativeads/NativeAd;
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    new-instance v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;-><init>(Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;Lcom/mobfox/sdk/nativeads/Native;Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;Landroid/content/Context;)V

    return-object v0
.end method

.method public createNative(Landroid/content/Context;)Lcom/mobfox/sdk/nativeads/Native;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 80
    new-instance v0, Lcom/mobfox/sdk/nativeads/Native;

    invoke-direct {v0, p1}, Lcom/mobfox/sdk/nativeads/Native;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected loadNativeAd(Landroid/app/Activity;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customEventNativeListener"    # Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
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
            "Landroid/app/Activity;",
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
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
    .line 40
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "MobFoxNative"

    const-string v2, "MobFox MoPub Adapter >> load"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v2

    .line 43
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    .line 44
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    iput-object p1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->context:Landroid/content/Context;

    .line 47
    iput-object p3, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->localExtras:Ljava/util/Map;

    .line 48
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->id:Ljava/lang/String;

    .line 50
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->context:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "MobFoxNative"

    const-string v2, "MobFox MoPub Adapter >> got activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iput-object p2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mopublistener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 61
    :try_start_1
    const-string v1, "invh"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->invh:Ljava/lang/String;

    .line 63
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->context:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->createNative(Landroid/content/Context;)Lcom/mobfox/sdk/nativeads/Native;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mobFoxNative:Lcom/mobfox/sdk/nativeads/Native;

    .line 64
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mobFoxNative:Lcom/mobfox/sdk/nativeads/Native;

    invoke-virtual {v1, p0}, Lcom/mobfox/sdk/nativeads/Native;->setListener(Lcom/mobfox/sdk/nativeads/NativeListener;)V

    .line 65
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mobFoxNative:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->invh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/nativeads/Native;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 77
    :goto_0
    return-void

    .line 44
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 53
    :cond_0
    const-string v1, "MobFoxNative"

    const-string v2, "MobFox MoPub Adapter >> context not activity"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MobFoxNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobFox MoPub Adapter >> load err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v2

    .line 69
    :try_start_3
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v2

    goto :goto_0

    .line 70
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_1
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 71
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mopublistener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v1, v2}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 72
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v2

    .line 73
    const/4 v1, 0x1

    :try_start_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    .line 74
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public loadNativeAd(Landroid/content/Context;Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;Ljava/util/Map;Ljava/util/Map;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "customEventNativeListener"    # Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;
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
            "Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;",
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
    .line 88
    .local p3, "localExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p4, "serverExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "MobFoxNative"

    const-string v2, "MobFox MoPub Adapter >> load"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v2

    .line 91
    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    .line 92
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    iput-object p1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->context:Landroid/content/Context;

    .line 95
    iput-object p3, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->localExtras:Ljava/util/Map;

    .line 96
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->id:Ljava/lang/String;

    .line 98
    iput-object p2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mopublistener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    .line 101
    :try_start_1
    const-string v1, "invh"

    invoke-interface {p4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->invh:Ljava/lang/String;

    .line 102
    invoke-virtual {p0, p1}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->createNative(Landroid/content/Context;)Lcom/mobfox/sdk/nativeads/Native;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mobFoxNative:Lcom/mobfox/sdk/nativeads/Native;

    .line 103
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mobFoxNative:Lcom/mobfox/sdk/nativeads/Native;

    invoke-virtual {v1, p0}, Lcom/mobfox/sdk/nativeads/Native;->setListener(Lcom/mobfox/sdk/nativeads/NativeListener;)V

    .line 104
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mobFoxNative:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->invh:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/nativeads/Native;->load(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 116
    :goto_0
    return-void

    .line 92
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MobFoxNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MobFox MoPub Adapter >> load err "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v2

    .line 108
    :try_start_3
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v2

    goto :goto_0

    .line 109
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    :cond_0
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 110
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mopublistener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v2, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v1, v2}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 111
    iget-object v2, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v2

    .line 112
    const/4 v1, 0x1

    :try_start_5
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    .line 113
    monitor-exit v2

    goto :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method public onNativeClick(Lcom/mobfox/sdk/nativeads/NativeAd;)V
    .locals 0
    .param p1, "ad"    # Lcom/mobfox/sdk/nativeads/NativeAd;

    .prologue
    .line 156
    return-void
.end method

.method public onNativeError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 131
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v1

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 152
    :goto_0
    return-void

    .line 133
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 134
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 135
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mopublistener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 136
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v1

    .line 137
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    .line 138
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 133
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 141
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "no ad"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 142
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mopublistener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->NETWORK_NO_FILL:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 143
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v1

    .line 144
    const/4 v0, 0x1

    :try_start_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    .line 145
    monitor-exit v1

    goto :goto_0

    :catchall_2
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    .line 148
    :cond_2
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mopublistener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    sget-object v1, Lcom/mopub/nativeads/NativeErrorCode;->UNSPECIFIED:Lcom/mopub/nativeads/NativeErrorCode;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdFailed(Lcom/mopub/nativeads/NativeErrorCode;)V

    .line 149
    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v1

    .line 150
    const/4 v0, 0x1

    :try_start_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    .line 151
    monitor-exit v1

    goto :goto_0

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v0
.end method

.method public onNativeReady(Lcom/mobfox/sdk/nativeads/Native;Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;)V
    .locals 2
    .param p1, "aNative"    # Lcom/mobfox/sdk/nativeads/Native;
    .param p2, "event"    # Lcom/mobfox/sdk/customevents/CustomEventNative;
    .param p3, "ad"    # Lcom/mobfox/sdk/nativeads/NativeAd;

    .prologue
    .line 120
    const-string v0, "MobFoxNative"

    const-string v1, "MobFox MoPub Adapter >> ready"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$1;-><init>(Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;Lcom/mobfox/sdk/nativeads/Native;Lcom/mobfox/sdk/customevents/CustomEventNative;Lcom/mobfox/sdk/nativeads/NativeAd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method
