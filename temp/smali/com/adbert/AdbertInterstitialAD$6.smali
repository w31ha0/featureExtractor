.class Lcom/adbert/AdbertInterstitialAD$6;
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
.field a:I

.field b:I

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/adbert/AdbertInterstitialAD;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 425
    iput-object p1, p0, Lcom/adbert/AdbertInterstitialAD$6;->d:Lcom/adbert/AdbertInterstitialAD;

    iput-object p2, p0, Lcom/adbert/AdbertInterstitialAD$6;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 448
    iput v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->a:I

    .line 449
    iput v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->b:I

    return-void
.end method

.method private a()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 452
    iget v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->a:I

    if-ne v0, v1, :cond_0

    .line 453
    iget v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->b:I

    if-ne v0, v1, :cond_1

    .line 454
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->d:Lcom/adbert/AdbertInterstitialAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->a(Lcom/adbert/AdbertInterstitialAD;Z)Z

    .line 455
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->d:Lcom/adbert/AdbertInterstitialAD;

    sget-object v1, Lcom/adbert/a/b/g;->o:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->b(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->d:Lcom/adbert/AdbertInterstitialAD;

    sget-object v1, Lcom/adbert/a/b/g;->l:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertInterstitialAD;->c(Lcom/adbert/AdbertInterstitialAD;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onConnectionFail(Lcom/adbert/a/c;)V
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->a:I

    .line 445
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialAD$6;->a()V

    .line 446
    return-void
.end method

.method public onConnectionSuccess(Lcom/adbert/a/c;)V
    .locals 4

    .prologue
    .line 428
    invoke-virtual {p1}, Lcom/adbert/a/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 429
    iget-object v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->d:Lcom/adbert/AdbertInterstitialAD;

    invoke-static {v0}, Lcom/adbert/AdbertInterstitialAD;->b(Lcom/adbert/AdbertInterstitialAD;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adbert/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 430
    invoke-virtual {p1}, Lcom/adbert/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertInterstitialAD$6;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adbert/a/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adbert/a/i;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 431
    if-eqz v0, :cond_0

    .line 432
    iget v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->b:I

    .line 434
    :cond_0
    invoke-virtual {p1}, Lcom/adbert/a/c;->g()V

    .line 438
    :goto_0
    iget v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->a:I

    .line 439
    invoke-direct {p0}, Lcom/adbert/AdbertInterstitialAD$6;->a()V

    .line 440
    return-void

    .line 436
    :cond_1
    iget v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adbert/AdbertInterstitialAD$6;->b:I

    goto :goto_0
.end method
