.class Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$3;
.super Landroid/content/BroadcastReceiver;
.source "TWMFloatAdView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$3;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    .line 949
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 954
    const-string v0, "com.taiwanmobile.pt.adp.view.TWMFloatAdView"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 956
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$3;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 959
    :cond_1
    const-string v0, "data"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 961
    const-string v1, "TWMFloatAdView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onReceive type!!"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 962
    if-nez v0, :cond_2

    .line 963
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$3;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    goto :goto_0

    .line 964
    :cond_2
    if-ne v0, v4, :cond_3

    .line 965
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$3;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->c(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    goto :goto_0

    .line 966
    :cond_3
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 967
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$3;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0, v4}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->a(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    .line 968
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$3;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->d(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;)V

    goto :goto_0

    .line 969
    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 970
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView$3;->a:Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;->b(Lcom/taiwanmobile/pt/adp/view/TWMFloatAdView;Z)V

    goto :goto_0
.end method
