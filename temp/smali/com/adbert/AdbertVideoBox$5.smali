.class Lcom/adbert/AdbertVideoBox$5;
.super Lcom/adbert/a/c/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/AdbertVideoBox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/AdbertVideoBox;


# direct methods
.method constructor <init>(Lcom/adbert/AdbertVideoBox;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/adbert/AdbertVideoBox$5;->a:Lcom/adbert/AdbertVideoBox;

    invoke-direct {p0}, Lcom/adbert/a/c/a;-><init>()V

    return-void
.end method


# virtual methods
.method public callReturnEvent()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$5;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0}, Lcom/adbert/AdbertVideoBox;->l(Lcom/adbert/AdbertVideoBox;)V

    .line 210
    return-void
.end method

.method public closeAdView()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$5;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0}, Lcom/adbert/AdbertVideoBox;->g(Lcom/adbert/AdbertVideoBox;)Lcom/adbert/AdbertVideoBoxListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/adbert/AdbertVideoBoxListener;->onCompletion()V

    .line 206
    return-void
.end method

.method public endingCardAction(I)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$5;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0, p1}, Lcom/adbert/AdbertVideoBox;->a(Lcom/adbert/AdbertVideoBox;I)V

    .line 202
    return-void
.end method

.method public setLogo(Landroid/view/ViewGroup;Z)V
    .locals 6

    .prologue
    .line 193
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$5;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v0}, Lcom/adbert/AdbertVideoBox;->i(Lcom/adbert/AdbertVideoBox;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$5;->a:Lcom/adbert/AdbertVideoBox;

    invoke-virtual {v0}, Lcom/adbert/AdbertVideoBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox$5;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v1}, Lcom/adbert/AdbertVideoBox;->j(Lcom/adbert/AdbertVideoBox;)I

    move-result v1

    int-to-double v2, v1

    sget-wide v4, Lcom/adbert/a/i;->e:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1, p1, p2}, Lcom/adbert/a/i;->a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)V

    .line 198
    :goto_0
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/adbert/AdbertVideoBox$5;->a:Lcom/adbert/AdbertVideoBox;

    invoke-virtual {v0}, Lcom/adbert/AdbertVideoBox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/adbert/AdbertVideoBox$5;->a:Lcom/adbert/AdbertVideoBox;

    invoke-static {v1}, Lcom/adbert/AdbertVideoBox;->k(Lcom/adbert/AdbertVideoBox;)I

    move-result v1

    int-to-double v2, v1

    sget-wide v4, Lcom/adbert/a/i;->e:D

    mul-double/2addr v2, v4

    double-to-int v1, v2

    invoke-static {v0, v1, p1, p2}, Lcom/adbert/a/i;->a(Landroid/content/Context;ILandroid/view/ViewGroup;Z)V

    goto :goto_0
.end method
