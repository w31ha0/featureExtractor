.class public Lcom/mobfox/sdk/customevents/MoPubmNative;
.super Ljava/lang/Object;
.source "MoPubmNative.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventNative;


# instance fields
.field activity:Landroid/app/Activity;

.field context:Landroid/content/Context;

.field listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

.field mobFoxNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->mobFoxNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    return-void
.end method


# virtual methods
.method public load(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventNativeListener;Ljava/lang/String;Ljava/util/List;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mobfox/sdk/customevents/CustomEventNativeListener;
    .param p3, "networkID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mobfox/sdk/customevents/CustomEventNativeListener;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/mobfox/sdk/nativeads/Tracker;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p4, "extraTrackers":Ljava/util/List;, "Ljava/util/List<Lcom/mobfox/sdk/nativeads/Tracker;>;"
    .local p5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->context:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    .line 49
    instance-of v4, p1, Landroid/app/Activity;

    if-eqz v4, :cond_0

    .line 50
    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->activity:Landroid/app/Activity;

    .line 56
    new-instance v1, Lcom/mobfox/sdk/customevents/MoPubmNative$1;

    invoke-direct {v1, p0, p2, p4}, Lcom/mobfox/sdk/customevents/MoPubmNative$1;-><init>(Lcom/mobfox/sdk/customevents/MoPubmNative;Lcom/mobfox/sdk/customevents/CustomEventNativeListener;Ljava/util/List;)V

    .line 148
    .local v1, "moPubNativeListener":Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    new-instance v0, Lcom/mopub/nativeads/MoPubNative;

    iget-object v4, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->activity:Landroid/app/Activity;

    invoke-direct {v0, v4, p3, v1}, Lcom/mopub/nativeads/MoPubNative;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V

    .line 150
    .local v0, "moPubNative":Lcom/mopub/nativeads/MoPubNative;
    new-instance v2, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;-><init>(Lcom/mopub/nativeads/ViewBinder;)V

    .line 151
    .local v2, "moPubStaticNativeAdRenderer":Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;
    invoke-virtual {v0, v2}, Lcom/mopub/nativeads/MoPubNative;->registerAdRenderer(Lcom/mopub/nativeads/MoPubAdRenderer;)V

    .line 153
    new-instance v4, Lcom/mopub/nativeads/RequestParameters$Builder;

    invoke-direct {v4}, Lcom/mopub/nativeads/RequestParameters$Builder;-><init>()V

    .line 155
    invoke-virtual {v4}, Lcom/mopub/nativeads/RequestParameters$Builder;->build()Lcom/mopub/nativeads/RequestParameters;

    move-result-object v3

    .line 157
    .local v3, "requestParameters":Lcom/mopub/nativeads/RequestParameters;
    invoke-virtual {v0, v3}, Lcom/mopub/nativeads/MoPubNative;->makeRequest(Lcom/mopub/nativeads/RequestParameters;)V

    .line 158
    .end local v0    # "moPubNative":Lcom/mopub/nativeads/MoPubNative;
    .end local v1    # "moPubNativeListener":Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;
    .end local v2    # "moPubStaticNativeAdRenderer":Lcom/mopub/nativeads/MoPubStaticNativeAdRenderer;
    .end local v3    # "requestParameters":Lcom/mopub/nativeads/RequestParameters;
    :goto_0
    return-void

    .line 52
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    new-instance v4, Ljava/lang/Exception;

    const-string v5, "mobFox >> MoPubNative error: must pass activity to loadInterstitial"

    invoke-direct {v4, v5}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v4}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public registerViewForInteraction(Landroid/view/View;)V
    .locals 3
    .param p1, "layout"    # Landroid/view/View;

    .prologue
    .line 162
    if-nez p1, :cond_2

    .line 163
    const-string v0, "MobFoxNative"

    const-string v1, "layout is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    if-nez v0, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "layout is null"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeError(Ljava/lang/Exception;)V

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->mobFoxNativeAd:Lcom/mobfox/sdk/nativeads/NativeAd;

    if-nez v0, :cond_3

    .line 169
    const-string v0, "MobFoxNative"

    const-string v1, "please load before registerViewForInteraction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "please load before registerViewForInteraction"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->context:Landroid/content/Context;

    if-nez v0, :cond_4

    .line 176
    const-string v0, "MobFoxNative"

    const-string v1, "please load before registerViewForInteraction"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubmNative;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "please load before registerViewForInteraction"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeError(Ljava/lang/Exception;)V

    goto :goto_0

    .line 182
    :cond_4
    new-instance v0, Lcom/mobfox/sdk/customevents/MoPubmNative$2;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/customevents/MoPubmNative$2;-><init>(Lcom/mobfox/sdk/customevents/MoPubmNative;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
