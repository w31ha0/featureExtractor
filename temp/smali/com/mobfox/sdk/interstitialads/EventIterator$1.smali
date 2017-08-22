.class Lcom/mobfox/sdk/interstitialads/EventIterator$1;
.super Ljava/lang/Object;
.source "EventIterator.java"

# interfaces
.implements Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/EventIterator;->callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/interstitialads/EventIterator;

.field final synthetic val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/EventIterator;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/interstitialads/EventIterator;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->this$0:Lcom/mobfox/sdk/interstitialads/EventIterator;

    iput-object p2, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterstitialClicked(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialClicked(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 129
    return-void
.end method

.method public onInterstitialClosed(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V
    .locals 2
    .param p1, "interstitial"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    .prologue
    .line 117
    const-string v0, "MobFoxInterstitial"

    const-string v1, "interstitial iterator >> onInterstitialClosed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialClosed(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 119
    return-void
.end method

.method public onInterstitialFailed(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitial;
    .param p2, "e"    # Ljava/lang/Exception;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    invoke-interface {v0, p1, p2}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;Ljava/lang/Exception;)V

    .line 113
    return-void
.end method

.method public onInterstitialFinished()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    invoke-interface {v0}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialFinished()V

    .line 124
    return-void
.end method

.method public onInterstitialLoaded(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V
    .locals 1
    .param p1, "interstitial"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialLoaded(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 108
    return-void
.end method

.method public onInterstitialShown(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V
    .locals 3
    .param p1, "interstitial"    # Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->this$0:Lcom/mobfox/sdk/interstitialads/EventIterator;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/EventIterator;->pixel:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 134
    new-instance v0, Lcom/mobfox/sdk/networking/MobFoxRequest;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->this$0:Lcom/mobfox/sdk/interstitialads/EventIterator;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/EventIterator;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->this$0:Lcom/mobfox/sdk/interstitialads/EventIterator;

    iget-object v2, v2, Lcom/mobfox/sdk/interstitialads/EventIterator;->pixel:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 135
    .local v0, "firePixel":Lcom/mobfox/sdk/networking/MobFoxRequest;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/networking/MobFoxRequest;->get(Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 139
    .end local v0    # "firePixel":Lcom/mobfox/sdk/networking/MobFoxRequest;
    :goto_0
    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$1;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    invoke-interface {v1, p1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialShown(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 140
    return-void

    .line 137
    :cond_0
    const-string v1, "MobFoxInterstitial"

    const-string v2, "pixel is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
