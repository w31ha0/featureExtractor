.class public final Lcom/creativemobi/engine/ba;
.super Ljava/lang/Object;
.source "PaymentsView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# instance fields
.field private a:Landroid/graphics/Typeface;

.field private b:Lcom/creativemobi/engine/bl;

.field private c:Lcom/creativemobi/engine/cd;

.field private d:Lcom/creativemobi/engine/cd;

.field private e:Lcom/creativemobi/engine/cd;

.field private f:Lcom/creativemobi/engine/cd;

.field private g:Lcom/creativemobi/engine/cd;

.field private h:Lcom/creativemobi/engine/cd;

.field private i:Lcom/creativemobi/engine/cd;

.field private j:Lcom/creativemobi/engine/cd;

.field private k:Lcom/creativemobi/engine/cd;

.field private l:[Lcom/creativemobi/engine/x;

.field private m:[Lcom/creativemobi/engine/x;

.field private n:I

.field private o:I

.field private p:I

.field private q:Lcom/creativemobi/engine/x;

.field private r:Lcom/creativemobi/engine/x;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-array v0, v1, [Lcom/creativemobi/engine/x;

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    .line 24
    new-array v0, v1, [Lcom/creativemobi/engine/x;

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    return-void
.end method

.method private b(Lcom/creativemobi/engine/w;I)V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 83
    iput p2, p0, Lcom/creativemobi/engine/ba;->n:I

    .line 84
    if-nez p2, :cond_1

    .line 85
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->c:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 86
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->d:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 87
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->e:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 88
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->f:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 90
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->g:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 91
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->h:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 92
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->i:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 93
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->j:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 94
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->k:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 95
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v3

    const-string v1, "Earn FREE Respect Points"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v2

    const-string v1, "Check pending bonuses"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v4

    const-string v1, "Purchase Respect Points"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v5

    const-string v1, "Remove advertisements"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v6

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v3

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v2

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v4

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 103
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v5

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v6

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 105
    const-string v0, "infinity2"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    if-ne p2, v2, :cond_0

    .line 107
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->c:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 108
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->d:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 109
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->e:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 110
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->f:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 112
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->g:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 113
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->h:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 114
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->i:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 115
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->j:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 116
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->k:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 117
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v3

    const-string v1, "500 Respect Points"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v2

    const-string v1, "2500 Respect Points"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 120
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v4

    const-string v1, "5000 Respect Points"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 121
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v5

    const-string v1, "10000 Respect Points"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v6

    const-string v1, "INFINITE Respect Points"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v3

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v2

    const-string v1, "save 40%"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v4

    const-string v1, "save 50%"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v5

    const-string v1, "save 60%"

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aget-object v0, v0, v6

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 129
    const-string v0, "infinity2"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 246
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 0

    .prologue
    .line 55
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 3

    .prologue
    .line 34
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->b()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/ba;->o:I

    .line 35
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->c()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/ba;->p:I

    .line 37
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->r:Lcom/creativemobi/engine/x;

    if-eqz v0, :cond_0

    .line 38
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->r:Lcom/creativemobi/engine/x;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 46
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->q:Lcom/creativemobi/engine/x;

    if-eqz v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->q:Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ba;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 49
    :cond_1
    return-void

    .line 42
    :cond_2
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->r:Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ba;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 10

    .prologue
    const/16 v9, 0x18

    const v8, -0x112555

    const/4 v7, 0x0

    const/16 v6, 0x2d

    const/16 v5, 0x8

    .line 136
    iput-object p3, p0, Lcom/creativemobi/engine/ba;->b:Lcom/creativemobi/engine/bl;

    .line 137
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->a:Landroid/graphics/Typeface;

    .line 139
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 141
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 142
    const-string v0, "settings_graphic"

    const-string v1, "graphics/menu/settings_graphic.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 144
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v7, v7}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 145
    const-string v0, "settings_graphic"

    const-string v1, "settings_graphic"

    const/16 v2, 0x1fc

    const/16 v3, 0x8f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 147
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 148
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x1f4

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 150
    const-string v0, "listitem"

    const-string v1, "graphics/menu/listitem.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 151
    const-string v0, "listitemHL"

    const-string v1, "graphics/menu/listitem_hl.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 153
    const-string v0, "infinity"

    const-string v1, "graphics/menu/infinity.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 155
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "EARN OR PURCHASE RP"

    const/16 v2, 0x32

    const/16 v3, 0x87

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 156
    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ba;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 157
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 167
    const-string v0, "offers"

    const-string v1, "listitemHL"

    const/16 v2, 0x96

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->c:Lcom/creativemobi/engine/cd;

    .line 170
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->c:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 171
    const-string v0, "offers_check"

    const-string v1, "listitem"

    const/16 v2, 0xc8

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->d:Lcom/creativemobi/engine/cd;

    .line 172
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->d:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 174
    const-string v0, "buy_points"

    const-string v1, "listitemHL"

    const/16 v2, 0xfa

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->e:Lcom/creativemobi/engine/cd;

    .line 175
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->e:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 177
    const-string v0, "remove_ads"

    const-string v1, "listitem"

    const/16 v2, 0x12c

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->f:Lcom/creativemobi/engine/cd;

    .line 178
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->f:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 180
    const-string v0, "buy_points_1"

    const-string v1, "listitem"

    const/16 v2, 0x96

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->g:Lcom/creativemobi/engine/cd;

    .line 181
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->g:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 182
    const-string v0, "buy_points_2"

    const-string v1, "listitem"

    const/16 v2, 0xc8

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->h:Lcom/creativemobi/engine/cd;

    .line 183
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->h:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 184
    const-string v0, "buy_points_3"

    const-string v1, "listitem"

    const/16 v2, 0xfa

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->i:Lcom/creativemobi/engine/cd;

    .line 185
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->i:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 186
    const-string v0, "buy_points_4"

    const-string v1, "listitem"

    const/16 v2, 0x12c

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->j:Lcom/creativemobi/engine/cd;

    .line 187
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->j:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 188
    const-string v0, "buy_points_5"

    const-string v1, "listitem"

    const/16 v2, 0x15e

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->k:Lcom/creativemobi/engine/cd;

    .line 189
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->k:Lcom/creativemobi/engine/cd;

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    move v0, v7

    .line 192
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 193
    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v2, ""

    const/16 v3, 0x37

    mul-int/lit8 v4, v0, 0x32

    add-int/lit16 v4, v4, 0x96

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 194
    const/16 v2, 0x1e

    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/ba;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 195
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 196
    iget-object v2, p0, Lcom/creativemobi/engine/ba;->l:[Lcom/creativemobi/engine/x;

    aput-object v1, v2, v0

    .line 198
    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v2, ""

    const/16 v3, 0x17b

    mul-int/lit8 v4, v0, 0x32

    add-int/lit16 v4, v4, 0x96

    add-int/lit8 v4, v4, 0x20

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 199
    const/16 v2, 0x1a

    const v3, -0x2676e5

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/ba;->a:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 200
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 201
    iget-object v2, p0, Lcom/creativemobi/engine/ba;->m:[Lcom/creativemobi/engine/x;

    aput-object v1, v2, v0

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 204
    :cond_0
    const-string v0, "infinity"

    const-string v1, "infinity"

    const/16 v2, 0xbe

    const/16 v3, 0x1bc

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 205
    const-string v0, "infinity2"

    const-string v1, "infinity"

    const/16 v2, 0x195

    const/16 v3, 0x167

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 207
    invoke-direct {p0, p1, v7}, Lcom/creativemobi/engine/ba;->b(Lcom/creativemobi/engine/w;I)V

    .line 209
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->b()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/ba;->o:I

    .line 210
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->c()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/ba;->p:I

    .line 212
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ba;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x96

    const/16 v3, 0x1b3

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->q:Lcom/creativemobi/engine/x;

    .line 213
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->q:Lcom/creativemobi/engine/x;

    iget v1, p0, Lcom/creativemobi/engine/ba;->o:I

    if-lez v1, :cond_1

    const/4 v1, -0x1

    :goto_1
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ba;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 214
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->q:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 216
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "your cash: "

    const/16 v2, 0x32

    const/16 v3, 0x1b3

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 217
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/ba;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v9, v8, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 218
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 220
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ba;->p:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xbe

    const/16 v3, 0x1d1

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/creativemobi/engine/ba;->r:Lcom/creativemobi/engine/x;

    .line 221
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->r:Lcom/creativemobi/engine/x;

    iget v1, p0, Lcom/creativemobi/engine/ba;->p:I

    if-lez v1, :cond_2

    const v1, -0x2676e5

    :goto_2
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ba;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v9, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 222
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->r:Lcom/creativemobi/engine/x;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 224
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "respect points: "

    const/16 v2, 0x32

    const/16 v3, 0x1d1

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 225
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/ba;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v9, v8, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 226
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 227
    return-void

    :cond_1
    move v1, v8

    .line 213
    goto :goto_1

    :cond_2
    move v1, v8

    .line 221
    goto :goto_2
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 237
    iget v0, p0, Lcom/creativemobi/engine/ba;->n:I

    if-nez v0, :cond_0

    move v0, v1

    .line 239
    :goto_0
    return v0

    .line 238
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/creativemobi/engine/ba;->b(Lcom/creativemobi/engine/w;I)V

    .line 239
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/high16 v1, 0x41200000    # 10.0f

    .line 59
    const-string v0, "offers"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    invoke-static {}, Lcom/tapjoy/r;->a()Lcom/tapjoy/r;

    invoke-static {}, Lcom/tapjoy/r;->b()V

    .line 80
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    const-string v0, "offers_check"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/creativemobi/engine/ba;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/DragRacing/menus/MainMenu;

    invoke-virtual {p0, v2}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(Z)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v0, "remove_ads"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 66
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    sget-object v1, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/billing/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 67
    :cond_3
    const-string v0, "buy_points"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 68
    invoke-direct {p0, p1, v2}, Lcom/creativemobi/engine/ba;->b(Lcom/creativemobi/engine/w;I)V

    goto :goto_0

    .line 69
    :cond_4
    const-string v0, "buy_points_1"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 70
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    sget-object v1, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/billing/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_5
    const-string v0, "buy_points_2"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 72
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    sget-object v1, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/billing/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 73
    :cond_6
    const-string v0, "buy_points_3"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 74
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    sget-object v1, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v2, 0x4

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/billing/b;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 75
    :cond_7
    const-string v0, "buy_points_4"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 76
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    sget-object v1, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v2, 0x5

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/billing/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 77
    :cond_8
    const-string v0, "buy_points_5"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    sget-object v0, Lcom/creativemobi/DragRacing/menus/MainMenu;->e:Lcom/creativemobi/DragRacing/billing/b;

    sget-object v1, Lcom/creativemobi/DragRacing/billing/b;->b:[Lcom/creativemobi/DragRacing/billing/z;

    const/4 v2, 0x6

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/creativemobi/DragRacing/billing/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/creativemobi/DragRacing/billing/b;->b(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
