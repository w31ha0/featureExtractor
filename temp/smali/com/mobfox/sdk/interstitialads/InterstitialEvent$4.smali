.class Lcom/mobfox/sdk/interstitialads/InterstitialEvent$4;
.super Ljava/lang/Object;
.source "InterstitialEvent.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 135
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$4;->this$0:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iput-object p2, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$4;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iput-object p3, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$4;->val$self:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$4;->val$listener:Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/InterstitialEvent$4;->val$self:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/customevents/CustomEventInterstitialListener;->onInterstitialLoaded(Lcom/mobfox/sdk/customevents/CustomEventInterstitial;)V

    .line 139
    return-void
.end method
