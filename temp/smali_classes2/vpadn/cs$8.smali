.class Lvpadn/cs$8;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lvpadn/bv$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->h()V
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
    .line 1917
    iput-object p1, p0, Lvpadn/cs$8;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lvpadn/bv;)V
    .locals 2

    .prologue
    .line 1920
    iget-object v0, p0, Lvpadn/cs$8;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->F(Lvpadn/cs;)Landroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lvpadn/cs$8;->a:Lvpadn/cs;

    invoke-static {v1}, Lvpadn/cs;->P(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1921
    iget-object v0, p0, Lvpadn/cs$8;->a:Lvpadn/cs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvpadn/cs;->k(Lvpadn/cs;Z)Z

    .line 1922
    iget-object v0, p0, Lvpadn/cs$8;->a:Lvpadn/cs;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lvpadn/cs;->b(Lvpadn/cs;Lvpadn/bv;)Lvpadn/bv;

    .line 1923
    return-void
.end method
