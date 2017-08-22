.class Lcom/adbert/AdbertInterstitialAD$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertInterstitialAD;->a(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/adbert/AdbertInterstitialAD;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 371
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD$4;->b:Lcom/adbert/AdbertInterstitialAD;

    iput-object p2, p0, Lcom/adbert/AdbertInterstitialAD$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFail(Lcom/adbert/a/c;)V
    .locals 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$4;->b:Lcom/adbert/AdbertInterstitialAD;

    sget-object v1, Lcom/adbert/a/b/g;->k:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->c(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    .line 388
    return-void
.end method

.method public onConnectionSuccess(Lcom/adbert/a/c;)V
    .locals 4

    .prologue
    .line 374
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$4;->b:Lcom/adbert/AdbertInterstitialAD;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialAD;->b(Lcom/adbert/AdbertInterstitialAD;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adbert/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 375
    invoke-virtual {p1}, Lcom/adbert/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialAD$4;->a:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adbert/a/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adbert/a/i;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 376
    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$4;->b:Lcom/adbert/AdbertInterstitialAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->a(Lcom/adbert/AdbertInterstitialAD;Z)Z

    .line 378
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$4;->b:Lcom/adbert/AdbertInterstitialAD;

    sget-object v1, Lcom/adbert/a/b/g;->o:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->b(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    .line 382
    :goto_0
    invoke-virtual {p1}, Lcom/adbert/a/c;->g()V

    .line 383
    return-void

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$4;->b:Lcom/adbert/AdbertInterstitialAD;

    sget-object v1, Lcom/adbert/a/b/g;->k:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->c(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    goto :goto_0
.end method
