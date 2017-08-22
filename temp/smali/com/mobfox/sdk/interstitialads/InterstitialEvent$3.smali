.class Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;
.super Ljava/lang/Object;
.source "InterstitialEvent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->loadInterstitial(Landroid/content/Context;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

.field final synthetic val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

.field final synthetic val$self:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent;Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;Lcom/mobfox/sdk/interstitialads/InterstitialEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iput-object p2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iput-object p3, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;->val$self:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3$1;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3$1;-><init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
