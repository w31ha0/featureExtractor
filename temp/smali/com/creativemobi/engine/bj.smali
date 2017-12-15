.class public final Lcom/creativemobi/engine/bj;
.super Ljava/lang/Object;
.source "StatisticView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# instance fields
.field private a:Landroid/graphics/Typeface;

.field private b:Lcom/creativemobi/engine/bl;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/creativemobi/engine/w;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 5

    .prologue
    const/16 v4, 0x1c

    const/4 v3, -0x1

    .line 127
    new-instance v0, Lcom/creativemobi/engine/x;

    const/16 v1, 0x32

    invoke-direct {v0, p2, v1, p4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 128
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/bj;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 129
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 131
    new-instance v0, Lcom/creativemobi/engine/x;

    const/16 v1, 0x1e0

    invoke-direct {v0, p3, v1, p4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 132
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/bj;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 133
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 134
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 140
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 152
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 0

    .prologue
    .line 17
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x1a4

    const/high16 v7, 0x447a0000    # 1000.0f

    const/16 v6, 0x9

    const/4 v5, 0x0

    .line 33
    iput-object p3, p0, Lcom/creativemobi/engine/bj;->b:Lcom/creativemobi/engine/bl;

    .line 35
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/bj;->a:Landroid/graphics/Typeface;

    .line 37
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 39
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 40
    const-string v0, "stats_graphic"

    const-string v1, "graphics/menu/stats_graphic.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 42
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v5, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 43
    const-string v0, "stats_graphic"

    const-string v1, "stats_graphic"

    const/16 v2, 0x1fc

    const/16 v3, 0x8f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 45
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 46
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x1f4

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 48
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "STATS"

    const/16 v2, 0x32

    const/16 v3, 0x87

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 49
    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bj;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 50
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 52
    const-string v0, "trophy_gray"

    const-string v1, "graphics/menu/trophy_frame.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 53
    const-string v0, "trophy_silver"

    const-string v1, "graphics/menu/trophy_silver.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 54
    const-string v0, "trophy_gold"

    const-string v1, "graphics/menu/trophy_gold.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 57
    const-string v0, "header"

    const-string v1, "graphics/menu/stats_header.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 59
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 60
    const-string v0, "header"

    const-string v1, "header"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0xa5

    sub-int/2addr v2, v3

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 63
    :cond_0
    invoke-static {p2}, Lcom/creativemobi/engine/ac;->c(Landroid/content/Context;)[I

    move-result-object v0

    move v1, v5

    .line 65
    :goto_0
    const/16 v2, 0xa

    if-ge v1, v2, :cond_1

    .line 66
    aget v2, v0, v1

    packed-switch v2, :pswitch_data_0

    .line 65
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 68
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trophy_gray"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trophy_gray"

    mul-int/lit8 v4, v1, 0x4b

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p1, v2, v3, v4, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    goto :goto_1

    .line 71
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trophy_gray"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trophy_silver"

    mul-int/lit8 v4, v1, 0x4b

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p1, v2, v3, v4, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    goto :goto_1

    .line 74
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trophy_gray"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "trophy_gold"

    mul-int/lit8 v4, v1, 0x4b

    add-int/lit8 v4, v4, 0x28

    invoke-virtual {p1, v2, v3, v4, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    goto :goto_1

    .line 79
    :cond_1
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->f()Lcom/creativemobi/engine/bo;

    move-result-object v0

    .line 81
    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v2, "RACES WON"

    const/16 v3, 0x32

    const/16 v4, 0xb4

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 87
    const/16 v2, 0x1c

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bj;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v9, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 88
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 90
    new-instance v1, Lcom/creativemobi/engine/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/creativemobi/engine/bo;->b:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/creativemobi/engine/bo;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1e0

    const/16 v4, 0xb4

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 91
    const/16 v2, 0x1c

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bj;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v9, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 92
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 94
    iget v1, v0, Lcom/creativemobi/engine/bo;->i:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "BEST 1/4 MILE TIME "

    const-string v2, "%.3fs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/creativemobi/engine/bo;->i:F

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xd2

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/creativemobi/engine/bj;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Ljava/lang/String;I)V

    .line 99
    :goto_2
    iget v1, v0, Lcom/creativemobi/engine/bo;->j:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "BEST 1/2 MILE TIME "

    const-string v2, "%.3fs"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, v0, Lcom/creativemobi/engine/bo;->j:F

    div-float/2addr v4, v7

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0xf0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/creativemobi/engine/bj;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Ljava/lang/String;I)V

    .line 103
    :goto_3
    const-string v1, "TOTAL CASH EARNED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/creativemobi/engine/bo;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x10e

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/creativemobi/engine/bj;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Ljava/lang/String;I)V

    .line 107
    const-string v1, "TOTAL RESPECT EARNED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/creativemobi/engine/bo;->e:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x12c

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/creativemobi/engine/bj;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Ljava/lang/String;I)V

    .line 111
    const-string v1, "PERFECT SHIFTS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/creativemobi/engine/bo;->g:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x14a

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/creativemobi/engine/bj;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Ljava/lang/String;I)V

    .line 115
    const-string v1, "TOTAL MILEAGE"

    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Lcom/creativemobi/engine/bo;->h:I

    int-to-float v3, v3

    div-float/2addr v3, v7

    invoke-static {v2}, Lcom/creativemobi/engine/ac;->h(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x3fcdfefc

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "km"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    const/16 v3, 0x168

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/creativemobi/engine/bj;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Ljava/lang/String;I)V

    .line 120
    const-string v1, "UPGRADES INSTALLED"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/creativemobi/engine/bo;->d:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x186

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/creativemobi/engine/bj;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Ljava/lang/String;I)V

    .line 124
    return-void

    .line 97
    :cond_2
    const-string v1, "BEST 1/4 MILE TIME "

    const-string v2, "No result"

    const/16 v3, 0xd2

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/creativemobi/engine/bj;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_2

    .line 101
    :cond_3
    const-string v1, "BEST 1/2 MILE TIME "

    const-string v2, "No result"

    const/16 v3, 0xf0

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/creativemobi/engine/bj;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 115
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "mi"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 66
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 0

    .prologue
    .line 29
    return-void
.end method
