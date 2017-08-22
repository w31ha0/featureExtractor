.class Lcom/adbert/AdbertADView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/AdbertADView;->d()V
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
    .line 413
    iput-object p1, p0, Lcom/adbert/AdbertADView$2;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/adbert/AdbertADView$2;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;)Lcom/adbert/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->a:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/adbert/AdbertADView$2;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->c(Lcom/adbert/AdbertADView;)Lcom/adbert/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/adbert/b/g;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/adbert/AdbertADView$2;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->d(Lcom/adbert/AdbertADView;)V

    .line 420
    :cond_0
    return-void
.end method
