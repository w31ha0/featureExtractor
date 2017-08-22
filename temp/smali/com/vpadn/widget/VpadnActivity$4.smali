.class Lcom/vpadn/widget/VpadnActivity$4;
.super Ljava/lang/Object;
.source "VpadnActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vpadn/widget/VpadnActivity;->c()V
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
    .line 572
    iput-object p1, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    .prologue
    const/16 v6, 0x3e2

    const/16 v5, 0x3e1

    const/16 v4, 0x3e0

    const/16 v2, 0x3df

    const/4 v3, 0x0

    .line 575
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_4

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 577
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->g(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 578
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->g(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    const-string v2, "/vpon_close_mix.png"

    invoke-static {v1, v2}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 605
    :cond_0
    :goto_0
    return v3

    .line 579
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_2

    .line 580
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->h(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 581
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->h(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    const-string v2, "/vpon_prev_mix.png"

    invoke-static {v1, v2}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 582
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v5, :cond_3

    .line 583
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->i(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 584
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->i(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    const-string v2, "/vpon_next_mix.png"

    invoke-static {v1, v2}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 585
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 586
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->j(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 587
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->j(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    const-string v2, "/vpon_opennew_mix.png"

    invoke-static {v1, v2}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 589
    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 590
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 591
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->g(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 592
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->g(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    const-string v2, "/vpon_close.png"

    invoke-static {v1, v2}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 593
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 594
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->h(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 595
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->h(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    const-string v2, "/vpon_prev.png"

    invoke-static {v1, v2}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 596
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v5, :cond_7

    .line 597
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->i(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 598
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->i(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    const-string v2, "/vpon_next.png"

    invoke-static {v1, v2}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 599
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    if-ne v0, v6, :cond_0

    .line 600
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->j(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 601
    iget-object v0, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    invoke-static {v0}, Lcom/vpadn/widget/VpadnActivity;->j(Lcom/vpadn/widget/VpadnActivity;)Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/vpadn/widget/VpadnActivity$4;->a:Lcom/vpadn/widget/VpadnActivity;

    const-string v2, "/vpon_opennew.png"

    invoke-static {v1, v2}, Lcom/vpadn/widget/VpadnActivity;->b(Lcom/vpadn/widget/VpadnActivity;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0
.end method
