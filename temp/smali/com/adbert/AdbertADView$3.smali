.class Lcom/adbert/AdbertADView$3;
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
    .line 427
    iput-object p1, p0, Lcom/adbert/AdbertADView$3;->a:Lcom/adbert/AdbertADView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 431
    iget-object v0, p0, Lcom/adbert/AdbertADView$3;->a:Lcom/adbert/AdbertADView;

    invoke-static {v0}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;)Lcom/adbert/a/a/a;

    move-result-object v0

    iget-object v0, v0, Lcom/adbert/a/a/a;->a:Lcom/adbert/a/b/b;

    sget-object v1, Lcom/adbert/a/b/b;->b:Lcom/adbert/a/b/b;

    if-ne v0, v1, :cond_0

    .line 432
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 433
    iget-object v1, p0, Lcom/adbert/AdbertADView$3;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1}, Lcom/adbert/AdbertADView;->b(Lcom/adbert/AdbertADView;)Lcom/adbert/a/a/a;

    move-result-object v1

    iget-object v1, v1, Lcom/adbert/a/a/a;->i:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    .line 434
    iget-object v1, p0, Lcom/adbert/AdbertADView$3;->a:Lcom/adbert/AdbertADView;

    invoke-static {v1, v0}, Lcom/adbert/AdbertADView;->a(Lcom/adbert/AdbertADView;I)V

    .line 439
    :cond_0
    return-void

    .line 432
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
