.class Lcom/adbert/AdbertADView$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertADView;->a(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:I

.field b:I

.field final synthetic c:I

.field final synthetic d:Lcom/adbert/AdbertADView;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertADView;I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 655
    iput-object p1, p0, Lcom/adbert/AdbertADView$7;->d:Lcom/adbert/AdbertADView;

    iput p2, p0, Lcom/adbert/AdbertADView$7;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput v0, p0, Lcom/adbert/AdbertADView$7;->a:I

    .line 670
    iput v0, p0, Lcom/adbert/AdbertADView$7;->b:I

    return-void
.end method

.method private a()V
    .locals 3

    .prologue
    const/4 v1, 0x2

    .line 673
    iget v0, p0, Lcom/adbert/AdbertADView$7;->a:I

    if-ne v0, v1, :cond_0

    .line 674
    iget v0, p0, Lcom/adbert/AdbertADView$7;->b:I

    if-ne v0, v1, :cond_1

    .line 675
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 676
    sget-object v1, Lcom/adbert/a/b/d;->q:Lcom/adbert/a/b/d;

    invoke-virtual {v1}, Lcom/adbert/a/b/d;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/adbert/AdbertADView$7;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 677
    iget-object v1, p0, Lcom/adbert/AdbertADView$7;->d:Lcom/adbert/AdbertADView;

    sget-object v2, Lcom/adbert/a/b/a;->a:Lcom/adbert/a/b/a;

    invoke-static {v1, v2, v0}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/AdbertADView;Lcom/adbert/a/b/a;Landroid/os/Bundle;)V

    .line 682
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    iget-object v0, p0, Lcom/adbert/AdbertADView$7;->d:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->l:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public onConnectionFail(Lcom/adbert/a/c;)V
    .locals 1

    .prologue
    .line 665
    iget v0, p0, Lcom/adbert/AdbertADView$7;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adbert/AdbertADView$7;->a:I

    .line 666
    invoke-direct {p0}, Lcom/adbert/AdbertADView$7;->a()V

    .line 667
    return-void
.end method

.method public onConnectionSuccess(Lcom/adbert/a/c;)V
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Lcom/adbert/AdbertADView$7;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adbert/AdbertADView$7;->a:I

    .line 659
    iget v0, p0, Lcom/adbert/AdbertADView$7;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/adbert/AdbertADView$7;->b:I

    .line 660
    invoke-direct {p0}, Lcom/adbert/AdbertADView$7;->a()V

    .line 661
    return-void
.end method
