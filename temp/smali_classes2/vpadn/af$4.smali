.class Lvpadn/af$4;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->c(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lvpadn/af;


# direct methods
.method constructor <init>(Lvpadn/af;Z)V
    .locals 0

    .prologue
    .line 1371
    iput-object p1, p0, Lvpadn/af$4;->b:Lvpadn/af;

    iput-boolean p2, p0, Lvpadn/af$4;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1373
    iget-object v0, p0, Lvpadn/af$4;->b:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->i(Lvpadn/af;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lvpadn/af$4;->a:Z

    if-eqz v0, :cond_0

    .line 1374
    iget-object v0, p0, Lvpadn/af$4;->b:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->i(Lvpadn/af;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lvpadn/af$4;->b:Lvpadn/af;

    invoke-static {v1}, Lvpadn/af;->j(Lvpadn/af;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1377
    :cond_0
    iget-object v0, p0, Lvpadn/af$4;->b:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->i(Lvpadn/af;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lvpadn/af$4;->a:Z

    if-nez v0, :cond_1

    .line 1378
    iget-object v0, p0, Lvpadn/af$4;->b:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->k(Lvpadn/af;)V

    .line 1381
    :cond_1
    return-void
.end method
