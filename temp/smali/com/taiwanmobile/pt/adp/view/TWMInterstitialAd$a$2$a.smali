.class final Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;
.super Ljava/util/TimerTask;
.source "TWMInterstitialAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;

.field private b:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;Landroid/webkit/WebView;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 122
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;->b:Landroid/webkit/WebView;

    .line 123
    return-void
.end method

.method static synthetic a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;->b:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic b(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;
    .locals 1

    .prologue
    .line 117
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "TWMInterstitialAd"

    const-string v1, "timer runed!!!!"

    invoke-static {v0, v1}, Lcom/taiwanmobile/pt/util/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;->a:Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;->a(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a;)Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;

    move-result-object v0

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;->f(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    new-instance v1, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a$1;

    invoke-direct {v1, p0}, Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a$1;-><init>(Lcom/taiwanmobile/pt/adp/view/TWMInterstitialAd$a$2$a;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    return-void
.end method
