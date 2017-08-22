.class Lcom/mobfox/sdk/interstitialads/EventIterator$2;
.super Ljava/lang/Object;
.source "EventIterator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/interstitialads/EventIterator;->notifyDownloaded(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/interstitialads/EventIterator;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/interstitialads/EventIterator;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/interstitialads/EventIterator;

    .prologue
    .line 192
    iput-object p1, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$2;->this$0:Lcom/mobfox/sdk/interstitialads/EventIterator;

    iput-object p2, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$2;->val$path:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$2;->this$0:Lcom/mobfox/sdk/interstitialads/EventIterator;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/EventIterator;->interstitialEvent:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$2;->this$0:Lcom/mobfox/sdk/interstitialads/EventIterator;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/EventIterator;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 199
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$2;->this$0:Lcom/mobfox/sdk/interstitialads/EventIterator;

    iget-object v0, v0, Lcom/mobfox/sdk/interstitialads/EventIterator;->interstitialEvent:Lcom/mobfox/sdk/interstitialads/InterstitialEvent;

    iget-object v1, p0, Lcom/mobfox/sdk/interstitialads/EventIterator$2;->val$path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/interstitialads/InterstitialEvent;->notifyDownloaded(Ljava/lang/String;)V

    goto :goto_0
.end method
