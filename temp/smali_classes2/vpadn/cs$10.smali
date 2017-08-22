.class Lvpadn/cs$10;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lvpadn/bv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->al()V
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
    .line 2012
    iput-object p1, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lvpadn/bv;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2016
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->D(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->D(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bv;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 2017
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0, v2}, Lvpadn/cs;->g(Lvpadn/cs;Z)Z

    .line 2019
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->F(Lvpadn/cs;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v1}, Lvpadn/cs;->D(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 2020
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvpadn/cs;->a(Lvpadn/cs;Lvpadn/bv;)Lvpadn/bv;

    .line 2022
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->G(Lvpadn/cs;)V

    .line 2023
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->H(Lvpadn/cs;)V

    .line 2024
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->I(Lvpadn/cs;)V

    .line 2025
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->J(Lvpadn/cs;)V

    .line 2026
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->n(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2027
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->q(Lvpadn/cs;)V

    .line 2028
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->B(Lvpadn/cs;)V

    .line 2031
    :cond_0
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->u(Lvpadn/cs;)V

    .line 2032
    iget-object v0, p0, Lvpadn/cs$10;->a:Lvpadn/cs;

    invoke-static {v0, v2}, Lvpadn/cs;->b(Lvpadn/cs;I)I

    .line 2036
    :cond_1
    return-void
.end method
