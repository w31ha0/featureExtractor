.class Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$2;
.super Ljava/lang/Object;
.source "TWMInterstitialAd.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    .line 223
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 227
    const-string v0, "TWMInterstitialAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reportClickApi : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v0, "TWMInterstitialAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "txId : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->f(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v1}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->d(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    invoke-static {v2}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->e(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/taiwanmobile/pt/adp/view/internal/AdUtility;->reportShow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method
