.class public Lcom/mobfox/sdk/customevents/MoPubInterstitial;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventInterstitial;


# instance fields
.field mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

.field self:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

.field tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    const-string v0, "MobFoxAdapter"

    iput-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->tag:Ljava/lang/String;

    .line 20
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    return-void
.end method


# virtual methods
.method public loadInterstitial(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;
    .param p3, "networkID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 25
    .local p4, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> loadInterstitial"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    iput-object p0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->self:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    .line 28
    new-instance v0, Lcom/mopub/mobileads/MoPubInterstitial;

    check-cast p1, Landroid/app/Activity;

    .end local p1    # "context":Landroid/content/Context;
    invoke-direct {v0, p1, p3}, Lcom/mopub/mobileads/MoPubInterstitial;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    .line 29
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    new-instance v1, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;

    invoke-direct {v1, p0, p2}, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;-><init>(Lcom/mobfox/sdk/customevents/MoPubInterstitial;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;)V

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/MoPubInterstitial;->setInterstitialAdListener(Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;)V

    .line 60
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->load()V

    .line 61
    return-void
.end method

.method public showInterstitial()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    if-nez v0, :cond_0

    .line 68
    :goto_0
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->mInterstitial:Lcom/mopub/mobileads/MoPubInterstitial;

    invoke-virtual {v0}, Lcom/mopub/mobileads/MoPubInterstitial;->show()Z

    goto :goto_0
.end method
