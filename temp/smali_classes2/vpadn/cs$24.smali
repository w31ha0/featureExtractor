.class Lvpadn/cs$24;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lvpadn/bv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->A()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;)V
    .locals 0

    .prologue
    .line 685
    iput-object p1, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lvpadn/bv;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 689
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0, v2}, Lvpadn/cs;->g(Lvpadn/cs;Z)Z

    .line 690
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->D(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 691
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->F(Lvpadn/cs;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v1}, Lvpadn/cs;->D(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 692
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvpadn/cs;->a(Lvpadn/cs;Lvpadn/bv;)Lvpadn/bv;

    .line 695
    :cond_0
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->G(Lvpadn/cs;)V

    .line 696
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->H(Lvpadn/cs;)V

    .line 697
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->I(Lvpadn/cs;)V

    .line 698
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->J(Lvpadn/cs;)V

    .line 699
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->n(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 700
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->q(Lvpadn/cs;)V

    .line 701
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->B(Lvpadn/cs;)V

    .line 704
    :cond_1
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->u(Lvpadn/cs;)V

    .line 705
    iget-object v0, p0, Lvpadn/cs$24;->a:Lvpadn/cs;

    invoke-static {v0, v2}, Lvpadn/cs;->b(Lvpadn/cs;I)I

    .line 708
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lvpadn/cs$24$1;

    invoke-direct {v1, p0}, Lvpadn/cs$24$1;-><init>(Lvpadn/cs$24;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 720
    return-void
.end method
