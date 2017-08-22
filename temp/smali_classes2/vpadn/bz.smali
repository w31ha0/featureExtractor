.class public Lvpadn/bz;
.super Lvpadn/bv;
.source "ChangeSoundActionButton.java"


# instance fields
.field private d:Lvpadn/cr;

.field private e:I

.field private f:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0, p1, p2, p3}, Lvpadn/bv;-><init>(Lvpadn/cs;Landroid/graphics/drawable/Drawable;Lvpadn/by;)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lvpadn/bz;->e:I

    .line 21
    invoke-virtual {p1}, Lvpadn/cs;->q()Lvpadn/cr;

    move-result-object v0

    iput-object v0, p0, Lvpadn/bz;->d:Lvpadn/cr;

    .line 22
    return-void
.end method

.method static synthetic a(Lvpadn/bz;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lvpadn/bz;->f:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic a(Lvpadn/bz;)Lvpadn/cr;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lvpadn/bz;->d:Lvpadn/cr;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 26
    iget v0, p0, Lvpadn/bz;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lvpadn/bz;->e:I

    .line 28
    iget-object v0, p0, Lvpadn/bz;->c:Lvpadn/cs;

    invoke-virtual {v0}, Lvpadn/cs;->j()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 29
    const-string v0, "/vpon_video2_s-off.png"

    invoke-virtual {p0, v0}, Lvpadn/bz;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvpadn/bz;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 34
    :goto_0
    iget v0, p0, Lvpadn/bz;->e:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lvpadn/bz;->d:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 35
    const-string v0, "ChangeSoundActionButton"

    const-string v1, "start to load mobile innovation developer group."

    invoke-static {v0, v1}, Lvpadn/bi;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lvpadn/bz$1;

    invoke-direct {v1, p0}, Lvpadn/bz$1;-><init>(Lvpadn/bz;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 50
    :cond_0
    iget v0, p0, Lvpadn/bz;->e:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lvpadn/bz;->d:Lvpadn/cr;

    invoke-virtual {v0}, Lvpadn/cr;->H()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lvpadn/bz;->c:Lvpadn/cs;

    iget-object v1, p0, Lvpadn/bz;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lvpadn/cs;->a(Landroid/graphics/Bitmap;)V

    .line 53
    :cond_1
    return-void

    .line 31
    :cond_2
    const-string v0, "/vpon_video2_s-on.png"

    invoke-virtual {p0, v0}, Lvpadn/bz;->a(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvpadn/bz;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
