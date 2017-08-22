.class Lcom/adbert/AdbertADView$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/adbert/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertADView;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertADView;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertADView;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/adbert/AdbertADView$8;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionFail(Lcom/adbert/a/c;)V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/adbert/AdbertADView$8;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->k:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    .line 732
    return-void
.end method

.method public onConnectionSuccess(Lcom/adbert/a/c;)V
    .locals 4

    .prologue
    .line 719
    iget-object v0, p0, Lcom/adbert/AdbertADView$8;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->o(Lcom/adbert/AdbertADView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adbert/a/c;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/a/i;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 720
    invoke-virtual {p1}, Lcom/adbert/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/adbert/AdbertADView$8;->a:Lcom/adbert/AdbertADView;

    invoke-static {v2}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;)Lcom/adbert/a/a/a;

    move-result-object v2

    iget-object v2, v2, Lcom/adbert/a/a/a;->e:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/adbert/a/c;->f()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3, v0}, Lcom/adbert/a/i;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 721
    iget-object v1, p0, Lcom/adbert/AdbertADView$8;->a:Lcom/adbert/AdbertADView;

    invoke-virtual {p1}, Lcom/adbert/a/c;->e()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/AdbertADView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 722
    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/adbert/AdbertADView$8;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/AdbertADView;)Lcom/adbert/AdbertADView$MyHandler;

    move-result-object v0

    sget-object v1, Lcom/adbert/a/b/a;->d:Lcom/adbert/a/b/a;

    invoke-virtual {v1}, Lcom/adbert/a/b/a;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adbert/AdbertADView$MyHandler;->sendEmptyMessage(I)Z

    .line 727
    :goto_0
    return-void

    .line 725
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertADView$8;->a:Lcom/adbert/AdbertADView;

    sget-object v1, Lcom/adbert/a/b/g;->k:Lcom/adbert/a/b/g;

    invoke-virtual {v1}, Lcom/adbert/a/b/g;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;Ljava/lang/String;)V

    goto :goto_0
.end method
