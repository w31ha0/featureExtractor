.class public final Lcom/creativemobi/engine/an;
.super Ljava/lang/Object;
.source "RaceLobbyView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# static fields
.field private static h:J


# instance fields
.field a:Lcom/creativemobi/engine/bl;

.field private b:Landroid/graphics/Typeface;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Z

.field private i:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/creativemobi/engine/an;->h:J

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput v3, p0, Lcom/creativemobi/engine/an;->c:I

    .line 17
    iput v2, p0, Lcom/creativemobi/engine/an;->d:I

    .line 19
    iput-boolean v2, p0, Lcom/creativemobi/engine/an;->e:Z

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/creativemobi/engine/an;->f:Ljava/lang/String;

    .line 21
    iput-boolean v2, p0, Lcom/creativemobi/engine/an;->g:Z

    .line 28
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "RACE OFFLINE"

    aput-object v1, v0, v2

    const-string v1, "RACE ONLINE"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "PRO LEAGUE"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/creativemobi/engine/an;->i:[Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/cb;

    invoke-direct {v1, p0, p1}, Lcom/creativemobi/engine/cb;-><init>(Lcom/creativemobi/engine/an;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 267
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 240
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 74
    iget-boolean v0, p0, Lcom/creativemobi/engine/an;->e:Z

    if-eqz v0, :cond_1

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    iput-boolean v5, p0, Lcom/creativemobi/engine/an;->e:Z

    .line 77
    const-string v0, "createProfile"

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/ca;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/ca;-><init>(Lcom/creativemobi/engine/an;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 90
    :cond_2
    const-string v0, "nextButton"

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 91
    iget v0, p0, Lcom/creativemobi/engine/an;->d:I

    if-ne v0, v5, :cond_3

    .line 92
    new-instance v0, Lcom/creativemobi/engine/ab;

    invoke-direct {v0}, Lcom/creativemobi/engine/ab;-><init>()V

    .line 93
    iget v1, p0, Lcom/creativemobi/engine/an;->c:I

    iput v1, v0, Lcom/creativemobi/engine/ab;->a:I

    .line 94
    iget-object v1, p0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v1, v0, v4}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto :goto_0

    .line 96
    :cond_3
    iget v0, p0, Lcom/creativemobi/engine/an;->d:I

    if-nez v0, :cond_4

    .line 97
    new-instance v0, Lcom/creativemobi/engine/bn;

    invoke-direct {v0}, Lcom/creativemobi/engine/bn;-><init>()V

    .line 98
    iget v1, p0, Lcom/creativemobi/engine/an;->c:I

    iput v1, v0, Lcom/creativemobi/engine/bn;->b:I

    .line 99
    iget-object v1, p0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v1, v0, v4}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto :goto_0

    .line 101
    :cond_4
    iget v0, p0, Lcom/creativemobi/engine/an;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 102
    iget-boolean v0, p0, Lcom/creativemobi/engine/an;->g:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/creativemobi/engine/an;->g:Z

    .line 103
    :cond_5
    iget-boolean v0, p0, Lcom/creativemobi/engine/an;->g:Z

    if-eqz v0, :cond_9

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/creativemobi/engine/an;->h:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gez v0, :cond_6

    move v0, v5

    .line 105
    :goto_1
    const-string v1, "Server too busy, please try again in a minute"

    .line 106
    const-string v2, "Connecting, please wait..."

    invoke-direct {p0, v2}, Lcom/creativemobi/engine/an;->a(Ljava/lang/String;)V

    .line 107
    if-eqz v0, :cond_7

    .line 108
    invoke-direct {p0, v1}, Lcom/creativemobi/engine/an;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    move v0, v4

    .line 104
    goto :goto_1

    .line 111
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/creativemobi/engine/an;->h:J

    .line 113
    invoke-static {}, Lcom/creativemobi/engine/bp;->r()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 114
    new-instance v0, Lcom/creativemobi/engine/bd;

    invoke-direct {v0}, Lcom/creativemobi/engine/bd;-><init>()V

    .line 116
    iget-object v1, p0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v1, v0, v4}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 117
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/creativemobi/engine/an;->h:J

    goto/16 :goto_0

    .line 118
    :cond_8
    invoke-direct {p0, v1}, Lcom/creativemobi/engine/an;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 120
    :cond_9
    iget-object v0, p0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/bz;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/bz;-><init>(Lcom/creativemobi/engine/an;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_a
    move v0, v4

    .line 131
    :goto_2
    iget-object v1, p0, Lcom/creativemobi/engine/an;->i:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 132
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listitem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {p1, v1, p2, p3, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 133
    iput v0, p0, Lcom/creativemobi/engine/an;->d:I

    .line 134
    const-string v0, "listitem_hl"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/high16 v1, 0x42340000    # 45.0f

    iget v2, p0, Lcom/creativemobi/engine/an;->d:I

    mul-int/lit8 v2, v2, 0x32

    add-int/lit16 v2, v2, 0x96

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 135
    iget-object v0, p0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "raceLobbySelectedIdx"

    iget v2, p0, Lcom/creativemobi/engine/an;->d:I

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 131
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 9

    .prologue
    const/16 v8, 0x85

    const/4 v4, 0x0

    const/4 v7, -0x1

    const/16 v6, 0x1c

    const/high16 v5, -0x1000000

    .line 69
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    iget-boolean v0, p0, Lcom/creativemobi/engine/an;->g:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/creativemobi/engine/an;->g:Z

    iget-boolean v0, p0, Lcom/creativemobi/engine/an;->g:Z

    if-eqz v0, :cond_0

    const-string v0, "createProfile"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    :cond_0
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "LEVEL %1$d RACES"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/creativemobi/engine/an;->c:I

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x37

    invoke-direct {v0, v1, v2, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/an;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6, v5, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "CAR LEVEL"

    const/16 v2, 0x21d

    invoke-direct {v0, v1, v2, v8}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/an;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6, v5, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/an;->i:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    mul-int/lit8 v1, v0, 0x32

    add-int/lit16 v1, v1, 0xaf

    new-instance v2, Lcom/creativemobi/engine/x;

    iget-object v3, p0, Lcom/creativemobi/engine/an;->i:[Ljava/lang/String;

    aget-object v3, v3, v0

    const/16 v4, 0x82

    add-int/lit8 v1, v1, 0x6

    invoke-direct {v2, v3, v4, v1}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/an;->b:Landroid/graphics/Typeface;

    invoke-virtual {v2, v6, v7, v1, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/an;->c:I

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x287

    const/16 v3, 0x11d

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x32

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/an;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    iget-object v1, p0, Lcom/creativemobi/engine/an;->f:Ljava/lang/String;

    const/16 v2, 0x21e

    const/16 v3, 0xa3

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x16

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/an;->b:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 70
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 9

    .prologue
    const/16 v8, 0x9

    const/16 v7, 0x1a9

    const/16 v6, 0x38

    const/16 v5, 0xe

    const/4 v4, 0x0

    .line 157
    iput-object p3, p0, Lcom/creativemobi/engine/an;->a:Lcom/creativemobi/engine/bl;

    .line 159
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/creativemobi/engine/an;->g:Z

    .line 161
    const-string v0, "raceLobbySelectedIdx"

    invoke-static {p2, v0}, Lcom/creativemobi/engine/ac;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/an;->d:I

    .line 162
    iget v0, p0, Lcom/creativemobi/engine/an;->d:I

    if-gtz v0, :cond_0

    iput v4, p0, Lcom/creativemobi/engine/an;->d:I

    .line 164
    :cond_0
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 167
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 168
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v4, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 170
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/an;->b:Landroid/graphics/Typeface;

    .line 172
    const-string v0, "crest_shining"

    const-string v1, "graphics/menu/crest_shining.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 173
    const-string v0, "crest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/menu/crest"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/an;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 175
    const-string v0, "nextButton"

    const-string v1, "graphics/next.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 176
    const-string v0, "header"

    const-string v1, "graphics/garage/race_button.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 178
    const-string v0, "listitem"

    const-string v1, "graphics/menu/listitem.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 179
    const-string v0, "listitem_hl"

    const-string v1, "graphics/menu/listitem_hl.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 181
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 182
    const-string v0, "trophy_frame"

    const-string v1, "graphics/menu/trophy_frame.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 184
    const-string v0, "pro_icon"

    const-string v1, "graphics/menu/icon_race_pro.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 185
    const-string v0, "offline_icon"

    const-string v1, "graphics/menu/icon_race_offline.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 186
    const-string v0, "online_icon"

    const-string v1, "graphics/menu/icon_race_online.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 188
    const-string v0, "createProfile"

    const-string v1, "graphics/menu/cr.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 189
    const-string v0, "name"

    const-string v1, "graphics/menu/name.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 191
    const-string v0, "raceSign"

    const-string v1, "race"

    const/16 v2, 0x29e

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 193
    const-string v0, "crest_shining"

    const-string v1, "crest_shining"

    const/16 v2, 0x1e0

    const/16 v3, 0x8c

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 194
    const-string v0, "crest"

    const-string v1, "crest"

    const/16 v2, 0x1ea

    const/16 v3, 0x96

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 196
    const-string v0, "nextButton"

    const-string v1, "nextButton"

    const/16 v2, 0x294

    invoke-virtual {p1, v0, v1, v2, v7}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 197
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x1f4

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 199
    const-string v0, "offline_icon"

    const-string v1, "offline_icon"

    const/16 v2, 0x99

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 200
    const-string v0, "online_icon"

    const-string v1, "online_icon"

    const/16 v2, 0xcb

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 201
    const-string v0, "pro_icon"

    const-string v1, "pro_icon"

    const/16 v2, 0xfd

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 203
    iget-boolean v0, p0, Lcom/creativemobi/engine/an;->g:Z

    if-nez v0, :cond_1

    const-string v0, "createProfile"

    const-string v1, "createProfile"

    const/16 v2, 0x32

    invoke-virtual {p1, v0, v1, v2, v7}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    :goto_0
    move v0, v4

    .line 206
    :goto_1
    iget-object v1, p0, Lcom/creativemobi/engine/an;->i:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listitem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "listitem"

    const/16 v3, 0x2d

    mul-int/lit8 v4, v0, 0x32

    add-int/lit16 v4, v4, 0x96

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 206
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 204
    :cond_1
    const-string v0, "createProfile"

    const-string v1, "name"

    const/16 v2, 0x32

    invoke-virtual {p1, v0, v1, v2, v7}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    goto :goto_0

    .line 209
    :cond_2
    const-string v0, "listitem_hl"

    const-string v1, "listitem_hl"

    const/16 v2, 0x2d

    iget v3, p0, Lcom/creativemobi/engine/an;->d:I

    mul-int/lit8 v3, v3, 0x32

    add-int/lit16 v3, v3, 0x96

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 212
    const-string v0, "header"

    const-string v1, "graphics/garage/race_button.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 214
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_3

    .line 215
    const-string v0, "header"

    const-string v1, "header"

    const/16 v2, 0x29e

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 219
    :cond_3
    :try_start_0
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    .line 220
    iget v1, v0, Lcom/creativemobi/engine/cg;->a:I

    invoke-interface {p3, p1, v1}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v1

    .line 221
    invoke-virtual {v0}, Lcom/creativemobi/engine/cg;->b()[I

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/creativemobi/engine/m;->a([I)V

    .line 222
    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->x()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/an;->c:I

    .line 223
    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->A()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mercedes-Benz"

    const-string v2, "MB"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Volkswagen"

    const-string v2, "VW"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Alfa Romeo"

    const-string v2, "Alfa"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mitsubishi"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Bugatti"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lamborghini"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x18

    if-gt v1, v2, :cond_4

    :goto_2
    iput-object v0, p0, Lcom/creativemobi/engine/an;->f:Ljava/lang/String;

    .line 227
    :goto_3
    return-void

    .line 223
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_2

    .line 224
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 1

    .prologue
    .line 245
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/an;->e:Z

    .line 145
    return-void
.end method
