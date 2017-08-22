.class Lcom/adbert/AdbertInterstitialAD$1;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/AdbertInterstitialAD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertInterstitialAD;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertInterstitialAD;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD$1;->a:Lcom/adbert/AdbertInterstitialAD;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 132
    const-string v0, "actoin"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    const-string v1, "close"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$1;->a:Lcom/adbert/AdbertInterstitialAD;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialAD;->a(Lcom/adbert/AdbertInterstitialAD;)Lcom/adbert/AdbertListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$1;->a:Lcom/adbert/AdbertInterstitialAD;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialAD;->a(Lcom/adbert/AdbertInterstitialAD;)Lcom/adbert/AdbertListener;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/AdbertListener;->onAdClosed()V

    .line 136
    :cond_0
    return-void
.end method
