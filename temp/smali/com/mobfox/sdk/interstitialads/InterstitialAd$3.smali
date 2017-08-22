.class Lcom/mobfox/sdk/interstitialads/InterstitialAd$3;
.super Ljava/lang/Object;
.source "InterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/InterstitialAd;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/InterstitialAd;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    .prologue
    .line 307
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$3;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialAd$3;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialAd;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/InterstitialAd;->interstitial:Lcom/mobfox/sdk/customevents/CustomEventInterstitial;

    invoke-interface {v0}, Lcom/mobfox/sdk/customevents/CustomEventInterstitial;->showInterstitial()V

    .line 311
    return-void
.end method
