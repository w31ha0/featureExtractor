.class Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$2;
.super Ljava/lang/Object;
.source "MoPubNativeAdAdapter.java"

# interfaces
.implements Lcom/mobfox/sdk/nativeads/NativeAd$ImagesLoadedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$2;->this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onImagesLoaded(Lcom/mobfox/sdk/nativeads/NativeAd;)V
    .locals 3
    .param p1, "ad"    # Lcom/mobfox/sdk/nativeads/NativeAd;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$2;->this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    iget-object v1, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$2;->this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    monitor-exit v1

    .line 201
    :goto_0
    return-void

    .line 196
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$2;->this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->mopublistener:Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;

    iget-object v1, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$2;->this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/CustomEventNative$CustomEventNativeListener;->onNativeAdLoaded(Lcom/mopub/nativeads/BaseNativeAd;)V

    .line 198
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$2;->this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    iget-object v1, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    monitor-enter v1

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd$2;->this$1:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;

    iget-object v0, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter$MobFoxMopubNativeAd;->this$0:Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lcom/mobfox/sdk/adapters/MoPubNativeAdAdapter;->used:Ljava/lang/Boolean;

    .line 200
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 196
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
