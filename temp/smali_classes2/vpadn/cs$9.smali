.class Lvpadn/cs$9;
.super Ljava/lang/Object;
.source "VideoManager.java"

# interfaces
.implements Lvpadn/by;


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
    .line 1975
    iput-object p1, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1980
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->F(Lvpadn/cs;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1981
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->Q(Lvpadn/cs;)V

    .line 1983
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->n(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1984
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->n(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    iget-object v1, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    const-string v2, "/vpon_video2_pause.png"

    invoke-static {v1, v2}, Lvpadn/cs;->a(Lvpadn/cs;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lvpadn/bv;->setButtonIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1988
    :cond_0
    :try_start_0
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 1989
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    const-string v1, "video_play"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lvpadn/cs;->a(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1995
    :goto_0
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->R(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->R(Lvpadn/cs;)Lvpadn/bv;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/bv;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1996
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->z(Lvpadn/cs;)V

    .line 1999
    :cond_1
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0, v3}, Lvpadn/cs;->b(Lvpadn/cs;Z)V

    .line 2000
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0, v3}, Lvpadn/cs;->c(Lvpadn/cs;Z)V

    .line 2001
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0, v3}, Lvpadn/cs;->f(Lvpadn/cs;Z)V

    .line 2002
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->g(Lvpadn/cs;)Lvpadn/cr;

    move-result-object v0

    invoke-virtual {v0}, Lvpadn/cr;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2003
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0, v3}, Lvpadn/cs;->d(Lvpadn/cs;Z)V

    .line 2005
    :cond_2
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0, v3}, Lvpadn/cs;->e(Lvpadn/cs;Z)V

    .line 2007
    iget-object v0, p0, Lvpadn/cs$9;->a:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->S(Lvpadn/cs;)V

    .line 2009
    :cond_3
    return-void

    .line 1990
    :catch_0
    move-exception v0

    goto :goto_0
.end method
