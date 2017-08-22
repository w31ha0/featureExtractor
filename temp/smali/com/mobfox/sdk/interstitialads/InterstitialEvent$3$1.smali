.class Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3$1;
.super Ljava/lang/Object;
.source "InterstitialEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;->call()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3$1;->this$1:Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;

    iget-object v1, v1, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$3;->val$self:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialLoaded(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 125
    return-void
.end method
