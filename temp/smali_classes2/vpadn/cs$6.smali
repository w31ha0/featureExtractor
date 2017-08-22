.class Lvpadn/cs$6;
.super Lvpadn/cl;
.source "VideoManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lvpadn/cs;->ai()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lvpadn/cs;


# direct methods
.method constructor <init>(Lvpadn/cs;Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V
    .locals 0

    .prologue
    .line 1876
    iput-object p1, p0, Lvpadn/cs$6;->d:Lvpadn/cs;

    invoke-direct {p0, p2, p3, p4}, Lvpadn/cl;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 1880
    invoke-super {p0}, Lvpadn/cl;->a()V

    .line 1881
    iget-object v0, p0, Lvpadn/cs$6;->d:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->l(Lvpadn/cs;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1882
    iget-object v0, p0, Lvpadn/cs$6;->d:Lvpadn/cs;

    invoke-static {v0}, Lvpadn/cs;->u(Lvpadn/cs;)V

    .line 1884
    :cond_0
    return-void
.end method
