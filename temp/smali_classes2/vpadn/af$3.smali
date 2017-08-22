.class Lvpadn/af$3;
.super Ljava/lang/Object;
.source "VponBannerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/af;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/af;


# direct methods
.method constructor <init>(Lvpadn/af;)V
    .locals 0

    .prologue
    .line 1356
    iput-object p1, p0, Lvpadn/af$3;->a:Lvpadn/af;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1358
    iget-object v0, p0, Lvpadn/af$3;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->i(Lvpadn/af;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 1359
    iget-object v0, p0, Lvpadn/af$3;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->i(Lvpadn/af;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lvpadn/af$3;->a:Lvpadn/af;

    invoke-static {v1}, Lvpadn/af;->j(Lvpadn/af;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1361
    iget-object v0, p0, Lvpadn/af$3;->a:Lvpadn/af;

    invoke-static {v0}, Lvpadn/af;->k(Lvpadn/af;)V

    .line 1363
    :cond_0
    return-void
.end method
