.class Lcom/mobfox/sdk/interstitialads/InterstitialEvent$1;
.super Ljava/lang/Object;
.source "InterstitialEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->notifyDownloaded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

.field final synthetic val$self:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/InterstitialEvent;Lcom/mobfox/sdk/interstitialads/InterstitialEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iput-object p2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$1;->val$self:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$1;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$1;->val$self:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialLoaded(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 94
    return-void
.end method
