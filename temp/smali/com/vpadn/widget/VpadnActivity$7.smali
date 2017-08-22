.class Lcom/vpadn/widget/VpadnActivity$7;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vpadn/widget/VpadnActivity;


# direct methods
.method constructor <init>(Lcom/vpadn/widget/VpadnActivity;)V
    .locals 0

    .prologue
    .line 788
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 790
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->k(Lcom/vpadn/widget/VpadnActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->m(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 791
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->l(Lcom/vpadn/widget/VpadnActivity;)V

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 792
    :cond_1
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->k(Lcom/vpadn/widget/VpadnActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->m(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 793
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v1}, Lcom/vpadn/widget/VpadnActivity;->m(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 794
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0, v2}, Lcom/vpadn/widget/VpadnActivity;->a(Lcom/vpadn/widget/VpadnActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 795
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->l(Lcom/vpadn/widget/VpadnActivity;)V

    goto :goto_0

    .line 796
    :cond_2
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->k(Lcom/vpadn/widget/VpadnActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getChildCount()I

    move-result v0

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->m(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 797
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->e(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v1}, Lcom/vpadn/widget/VpadnActivity;->m(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 798
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0, v2}, Lcom/vpadn/widget/VpadnActivity;->a(Lcom/vpadn/widget/VpadnActivity;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    goto :goto_0

    .line 799
    :cond_3
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->k(Lcom/vpadn/widget/VpadnActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$7;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->m(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0
.end method
