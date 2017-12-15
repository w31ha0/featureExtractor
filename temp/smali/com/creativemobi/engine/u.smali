.class public final Lcom/creativemobi/engine/u;
.super Ljava/lang/Object;
.source "WaitingView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# instance fields
.field a:Lcom/creativemobi/engine/bl;

.field public b:I

.field public c:I

.field public d:I

.field public e:Ljava/util/ArrayList;

.field f:Z

.field private g:Ljava/util/ArrayList;

.field private h:Landroid/graphics/Typeface;

.field private i:Z

.field private j:J

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/u;->g:Ljava/util/ArrayList;

    .line 20
    const/4 v0, -0x1

    iput v0, p0, Lcom/creativemobi/engine/u;->b:I

    .line 21
    iput v1, p0, Lcom/creativemobi/engine/u;->c:I

    .line 22
    const/16 v0, 0x190

    iput v0, p0, Lcom/creativemobi/engine/u;->d:I

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/u;->e:Ljava/util/ArrayList;

    .line 62
    iput-boolean v1, p0, Lcom/creativemobi/engine/u;->i:Z

    .line 64
    iput v1, p0, Lcom/creativemobi/engine/u;->k:I

    .line 211
    iput-boolean v1, p0, Lcom/creativemobi/engine/u;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/creativemobi/engine/u;I)I
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcom/creativemobi/engine/u;->k:I

    return p1
.end method

.method static synthetic a(Lcom/creativemobi/engine/u;Lcom/creativemobi/engine/m;Lcom/creativemobi/engine/cg;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/creativemobi/engine/k;

    invoke-direct {v0}, Lcom/creativemobi/engine/k;-><init>()V

    const/16 v1, 0x3e8

    iput v1, v0, Lcom/creativemobi/engine/k;->e:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/creativemobi/engine/k;->d:I

    iget v1, p0, Lcom/creativemobi/engine/u;->d:I

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->b(I)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/creativemobi/engine/k;->a:Z

    new-instance v1, Lcom/creativemobi/engine/cg;

    invoke-virtual {p1}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    invoke-virtual {p1}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    iput-object v1, v0, Lcom/creativemobi/engine/k;->h:Lcom/creativemobi/engine/cg;

    iput-object p2, v0, Lcom/creativemobi/engine/k;->g:Lcom/creativemobi/engine/cg;

    iget v1, p0, Lcom/creativemobi/engine/u;->b:I

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->d(I)V

    iget-object v1, p0, Lcom/creativemobi/engine/u;->a:Lcom/creativemobi/engine/bl;

    invoke-virtual {p1}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/creativemobi/engine/bl;->d(I)V

    iget-object v1, p0, Lcom/creativemobi/engine/u;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v1, v0, v4}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    invoke-static {v4}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    iget-object v1, p0, Lcom/creativemobi/engine/u;->a:Lcom/creativemobi/engine/bl;

    iget v2, p0, Lcom/creativemobi/engine/u;->b:I

    invoke-interface {v1, v2}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/k;->b:I

    if-nez v1, :cond_0

    const/16 v0, 0x64

    :goto_0
    invoke-static {v0}, Lcom/creativemobi/engine/ac;->a(I)I

    move-result v1

    sub-int/2addr v0, v1

    const-string v1, "Options.getRatingDeduction(rating)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "rating "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "Options.getRatingDeduction(rating)"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Options.getRatingDeduction(rating) "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->a(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/creativemobi/engine/u;->a:Lcom/creativemobi/engine/bl;

    iget v2, p0, Lcom/creativemobi/engine/u;->b:I

    invoke-interface {v1, v2, v0}, Lcom/creativemobi/engine/bl;->e(II)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 226
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 232
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 12

    .prologue
    const/16 v11, 0x14

    const/16 v10, 0xa

    const/4 v9, 0x0

    const/16 v8, 0x32

    const/4 v7, -0x1

    .line 29
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    iget v0, p0, Lcom/creativemobi/engine/u;->d:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_1

    const-string v0, " [1/4mi"

    :goto_0
    iget v1, p0, Lcom/creativemobi/engine/u;->b:I

    if-ge v1, v10, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", L "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/u;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Lcom/creativemobi/engine/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "STARTING RACE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x37

    const/16 v3, 0x88

    invoke-direct {v2, v0, v1, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0x28

    const/high16 v1, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/u;->h:Landroid/graphics/Typeface;

    invoke-virtual {v2, v0, v1, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget-wide v0, p0, Lcom/creativemobi/engine/u;->j:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/u;->k:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2af7

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/creativemobi/engine/u;->j:J

    :cond_0
    iget-wide v0, p0, Lcom/creativemobi/engine/u;->j:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "Waiting for other players to join... (%d)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-wide v3, p0, Lcom/creativemobi/engine/u;->j:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xaa

    invoke-direct {v0, v1, v8, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    :goto_2
    const/16 v1, 0x18

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/u;->h:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget v0, p0, Lcom/creativemobi/engine/u;->k:I

    move v1, v9

    :goto_3
    if-ge v1, v10, :cond_5

    new-instance v2, Lcom/creativemobi/engine/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    mul-int/lit8 v4, v1, 0x14

    add-int/lit16 v4, v4, 0xc8

    invoke-direct {v2, v3, v8, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/u;->h:Landroid/graphics/Typeface;

    invoke-virtual {v2, v11, v7, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v2, Lcom/creativemobi/engine/x;

    if-ge v1, v0, :cond_4

    const-string v3, "Ready!"

    :goto_4
    const/16 v4, 0x50

    mul-int/lit8 v5, v1, 0x14

    add-int/lit16 v5, v5, 0xc8

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/u;->h:Landroid/graphics/Typeface;

    invoke-virtual {v2, v11, v7, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    const-string v0, " [1/2mi"

    goto/16 :goto_0

    :cond_2
    const-string v1, ", RND]"

    goto/16 :goto_1

    :cond_3
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "Starting game..."

    const/16 v2, 0xaa

    invoke-direct {v0, v1, v8, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    goto :goto_2

    :cond_4
    const-string v3, "<empty>"

    goto :goto_4

    .line 30
    :cond_5
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 142
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/u;->h:Landroid/graphics/Typeface;

    .line 144
    iput-object p3, p0, Lcom/creativemobi/engine/u;->a:Lcom/creativemobi/engine/bl;

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2af7

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/creativemobi/engine/u;->j:J

    .line 148
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 151
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 152
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v4, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 154
    const-string v0, "stats_graphic"

    const-string v1, "graphics/menu/stats_graphic.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 156
    const-string v0, "stats_graphic"

    const-string v1, "stats_graphic"

    const/16 v2, 0x1fc

    const/16 v3, 0x8f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 158
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 159
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x1f4

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 165
    const-string v0, "header"

    const-string v1, "graphics/menu/pro_league.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 166
    const-string v0, "header"

    const-string v1, "header"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0xf0

    sub-int/2addr v2, v3

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 168
    iget-boolean v0, p0, Lcom/creativemobi/engine/u;->i:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/u;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/u;->i:Z

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/creativemobi/engine/bw;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/bw;-><init>(Lcom/creativemobi/engine/u;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 169
    :cond_0
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 216
    sget-object v0, Lcom/creativemobi/engine/bd;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/creativemobi/engine/bp;->c(Ljava/lang/String;)V

    .line 217
    iput-boolean v3, p0, Lcom/creativemobi/engine/u;->f:Z

    .line 218
    iget-object v0, p0, Lcom/creativemobi/engine/u;->a:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/bd;

    invoke-direct {v1}, Lcom/creativemobi/engine/bd;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 219
    return v3
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 1

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/creativemobi/engine/u;->i:Z

    if-eqz v0, :cond_0

    .line 137
    :cond_0
    return-void
.end method
