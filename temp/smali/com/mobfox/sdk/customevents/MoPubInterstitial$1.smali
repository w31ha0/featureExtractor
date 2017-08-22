.class Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;
.super Ljava/lang/Object;
.source "MoPubInterstitial.java"

# interfaces
.implements Lcom/mopub/mobileads/MoPubInterstitial$InterstitialAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/customevents/MoPubInterstitial;->loadInterstitial(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

.field final synthetic val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/customevents/MoPubInterstitial;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iput-object p2, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iget-object v1, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iget-object v1, v1, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->self:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialClicked(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 52
    return-void
.end method

.method public onInterstitialDismissed(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> dismissed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iget-object v1, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iget-object v1, v1, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->self:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialClosed(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 58
    return-void
.end method

.method public onInterstitialFailed(Lcom/mopub/mobileads/MoPubInterstitial;Lcom/mopub/mobileads/MoPubErrorCode;)V
    .locals 5
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;
    .param p2, "errorCode"    # Lcom/mopub/mobileads/MoPubErrorCode;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> failed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iget-object v1, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iget-object v1, v1, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->self:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "errorCode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;Ljava/lang/Exception;)V

    .line 40
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> loaded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iget-object v1, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iget-object v1, v1, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->self:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialLoaded(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 34
    return-void
.end method

.method public onInterstitialShown(Lcom/mopub/mobileads/MoPubInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mopub/mobileads/MoPubInterstitial;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iget-object v0, v0, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->tag:Ljava/lang/String;

    const-string v1, "MobFox MoPub Custom >> shown"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v0, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iget-object v1, p0, Lcom/mobfox/sdk/customevents/MoPubInterstitial$1;->this$0:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    iget-object v1, v1, Lcom/mobfox/sdk/customevents/MoPubInterstitial;->self:Lcom/mobfox/sdk/customevents/MoPubInterstitial;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialShown(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 46
    return-void
.end method
