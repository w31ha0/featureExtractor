.class Lvpadn/ah$5;
.super Ljava/lang/Object;
.source "VponInterstitialAdController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/ah;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/ah;


# direct methods
.method constructor <init>(Lvpadn/ah;)V
    .locals 0

    .prologue
    .line 885
    iput-object p1, p0, Lvpadn/ah$5;->a:Lvpadn/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 887
    iget-object v0, p0, Lvpadn/ah$5;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->b(Lvpadn/ah;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 888
    iget-object v0, p0, Lvpadn/ah$5;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->b(Lvpadn/ah;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lvpadn/ah$5;->a:Lvpadn/ah;

    .line 889
    invoke-static {v1}, Lvpadn/ah;->c(Lvpadn/ah;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 891
    iget-object v0, p0, Lvpadn/ah$5;->a:Lvpadn/ah;

    invoke-static {v0}, Lvpadn/ah;->d(Lvpadn/ah;)V

    .line 893
    :cond_0
    return-void
.end method
