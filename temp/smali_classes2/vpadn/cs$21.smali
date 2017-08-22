.class Lvpadn/cs$21;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;-><init>(Lcom/vpadn/widget/VpadnActivity;Lvpadn/ct;Lvpadn/cr;)V
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
    .line 554
    iput-object p1, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 558
    const-string v0, "VideoManager"

    const-string v1, "Call OnCompletionListener"

    invoke-static {v0, v1}, Lvpadn/bi;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0, v2}, Lvpadn/cs;->j(Lvpadn/cs;Z)Z

    .line 561
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0, v2}, Lvpadn/cs;->g(Lvpadn/cs;Z)Z

    .line 562
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    const-string v1, "video_ended"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 564
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->y(Lvpadn/cs;)Lvpadn/cu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 565
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->y(Lvpadn/cs;)Lvpadn/cu;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cu;->b()V

    .line 568
    :cond_0
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 570
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->b()V

    .line 594
    :cond_1
    :goto_0
    return-void

    .line 574
    :cond_2
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->z(Lvpadn/cs;)V

    .line 576
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->q()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lvpadn/cr;->e(Z)V

    .line 578
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lvpadn/cs;->a(Lvpadn/cs;I)I

    .line 580
    :cond_3
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->A(Lvpadn/cs;)V

    .line 581
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->B(Lvpadn/cs;)V

    .line 583
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->w()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->C(Lvpadn/cs;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 584
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->b()V

    .line 587
    :cond_4
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->C(Lvpadn/cs;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 588
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->b()V

    .line 591
    :cond_5
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->o(Lvpadn/cs;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 592
    iget-object v0, p0, Lvpadn/cs$21;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->D(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bv;->performClick()Z

    goto :goto_0
.end method
