.class Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;
.super Landroid/content/BroadcastReceiver;
.source "TWMAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    .line 849
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 853
    const-string v0, "TWMAdView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReceive("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") invoked!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 855
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdView$a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 857
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/TWMAdView$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 858
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 859
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/internal/TWMVideoView;->pause()V

    .line 861
    :cond_0
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdView$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdView;->d(Lcom/taiwanmobile/pt/adp/view/TWMAdView;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 862
    invoke-static {}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->getInstance()Lcom/taiwanmobile/pt/adp/view/internal/AdManager;

    move-result-object v0

    const-string v1, "bcr"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdManager;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 865
    :cond_1
    return-void
.end method
