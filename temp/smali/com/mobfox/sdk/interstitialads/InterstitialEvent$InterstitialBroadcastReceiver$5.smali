.class Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$5;
.super Ljava/lang/Object;
.source "InterstitialEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;

    .prologue
    .line 221
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$5;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$5;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver$5;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$InterstitialBroadcastReceiver;->event:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "onAutoRedirect"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1, v2}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialFailed(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;Ljava/lang/Exception;)V

    .line 225
    return-void
.end method
