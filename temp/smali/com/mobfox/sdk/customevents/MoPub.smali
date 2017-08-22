.class public Lcom/mobfox/sdk/customevents/MoPub;
.super Ljava/lang/Object;
.source "MoPub.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventBanner;


# instance fields
.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "MobFoxAdapter"

    iput-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub;->tag:Ljava/lang/String;

    .line 18
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPub;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    return-void
.end method


# virtual methods
.method public loadAd(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mobfox/sdk/customevents/CustomEventBannerListener;
    .param p3, "networkID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mobfox/sdk/customevents/CustomEventBannerListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 23
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/mobfox/sdk/customevents/MoPub;->tag:Ljava/lang/String;

    const-string v5, "MobFox MoPub Custom >> loadAd"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    new-instance v2, Lcom/mopub/mobileads/MoPubView;

    invoke-direct {v2, p1}, Lcom/mopub/mobileads/MoPubView;-><init>(Landroid/content/Context;)V

    .line 30
    .local v2, "moPubView":Lcom/mopub/mobileads/MoPubView;
    :try_start_0
    const-string v4, "height"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 31
    .local v1, "height":I
    const-string v4, "width"

    invoke-interface {p4, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 38
    .local v3, "width":I
    invoke-virtual {v2, p3}, Lcom/mopub/mobileads/MoPubView;->setAdUnitId(Ljava/lang/String;)V

    .line 39
    new-instance v4, Lcom/mobfox/sdk/customevents/MoPub$1;

    invoke-direct {v4, p0, p2}, Lcom/mobfox/sdk/customevents/MoPub$1;-><init>(Lcom/mobfox/sdk/customevents/MoPub;Lcom/mobfox/sdk/customevents/CustomEventBannerListener;)V

    invoke-virtual {v2, v4}, Lcom/mopub/mobileads/MoPubView;->setBannerAdListener(Lcom/mopub/mobileads/MoPubView$BannerAdListener;)V

    .line 69
    invoke-virtual {v2}, Lcom/mopub/mobileads/MoPubView;->loadAd()V

    .line 70
    .end local v1    # "height":I
    .end local v3    # "width":I
    :goto_0
    return-void

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/mobfox/sdk/customevents/MoPub;->tag:Ljava/lang/String;

    const-string v5, "MobFox MoPub Custom >> error"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 34
    invoke-interface {p2, v2, v0}, Lcom/mobfox/sdk/customevents/CustomEventBannerListener;->onBannerError(Landroid/view/View;Ljava/lang/Exception;)V

    goto :goto_0
.end method
