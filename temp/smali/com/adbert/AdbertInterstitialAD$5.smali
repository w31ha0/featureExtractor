.class Lcom/adbert/AdbertInterstitialAD$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertInterstitialAD;->a(ZLjava/lang/String;Ljava/lang/String;)V
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
    .line 394
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD$5;->a:Lcom/adbert/AdbertInterstitialAD;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFail(Lcom/adbert/a/c;)V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$5;->a:Lcom/adbert/AdbertInterstitialAD;

    sget-object v1, Lcom/adbert/a/b/g;->l:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->c(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method public onConnectionSuccess(Lcom/adbert/a/c;)V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$5;->a:Lcom/adbert/AdbertInterstitialAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->a(Lcom/adbert/AdbertInterstitialAD;Z)Z

    .line 398
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$5;->a:Lcom/adbert/AdbertInterstitialAD;

    sget-object v1, Lcom/adbert/a/b/g;->o:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->b(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    .line 399
    return-void
.end method
