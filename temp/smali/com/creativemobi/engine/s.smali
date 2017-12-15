.class public final Lcom/creativemobi/engine/s;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# instance fields
.field private a:Landroid/graphics/Typeface;

.field private b:Lcom/creativemobi/engine/bl;

.field private c:[Ljava/lang/String;

.field private d:[Ljava/lang/String;

.field private e:[Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v3, 0x0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "METRIC UNITS"

    aput-object v1, v0, v3

    const-string v1, "SOUND EFFECTS"

    aput-object v1, v0, v5

    const-string v1, "VIBRATION"

    aput-object v1, v0, v6

    const-string v1, "LARGE SHIFT LIGHTS"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "MULTITOUCH"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/creativemobi/engine/s;->c:[Ljava/lang/String;

    .line 14
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "metricUnits"

    aput-object v1, v0, v3

    const-string v1, "sound"

    aput-object v1, v0, v5

    const-string v1, "vibration"

    aput-object v1, v0, v6

    const-string v1, "indicator"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "multitouch"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/creativemobi/engine/s;->d:[Ljava/lang/String;

    .line 15
    new-array v0, v4, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/creativemobi/engine/s;->e:[Z

    .line 23
    iput-boolean v3, p0, Lcom/creativemobi/engine/s;->f:Z

    return-void

    .line 15
    :array_0
    .array-data 1
        0x0t
        0x1t
        0x0t
        0x1t
        0x0t
    .end array-data
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 110
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 122
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    iget-boolean v0, p0, Lcom/creativemobi/engine/s;->f:Z

    if-eqz v0, :cond_1

    .line 37
    :cond_0
    :goto_0
    return-void

    .line 28
    :cond_1
    iput-boolean v4, p0, Lcom/creativemobi/engine/s;->f:Z

    move v0, v3

    .line 30
    :goto_1
    iget-object v1, p0, Lcom/creativemobi/engine/s;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 31
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

    if-eqz v1, :cond_3

    .line 32
    iget-object v1, p0, Lcom/creativemobi/engine/s;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/s;->d:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v1, v2}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v4

    .line 33
    :goto_2
    iget-object v2, p0, Lcom/creativemobi/engine/s;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v2}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/s;->d:[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-static {v2, v0, v1}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 32
    goto :goto_2

    .line 30
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 11

    .prologue
    const/16 v10, 0x8

    const/4 v5, 0x0

    const v9, -0x112555

    const v8, -0x777778

    const/16 v7, 0x1e

    .line 20
    move v0, v5

    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/s;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "listitem"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "SETTINGS"

    const/16 v2, 0x32

    const/16 v3, 0x87

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/s;->a:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    move v0, v5

    :goto_1
    iget-object v1, p0, Lcom/creativemobi/engine/s;->c:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    mul-int/lit8 v1, v0, 0x32

    add-int/lit16 v1, v1, 0x96

    iget-object v2, p0, Lcom/creativemobi/engine/s;->b:Lcom/creativemobi/engine/bl;

    invoke-interface {v2}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/s;->d:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/creativemobi/engine/s;->e:[Z

    aget-boolean v4, v4, v0

    invoke-static {v2, v3, v4}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listitem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "listitem"

    const/16 v5, 0x2d

    invoke-virtual {p1, v3, v4, v5, v1}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/creativemobi/engine/cd;->a(I)V

    :goto_2
    new-instance v3, Lcom/creativemobi/engine/x;

    iget-object v4, p0, Lcom/creativemobi/engine/s;->c:[Ljava/lang/String;

    aget-object v4, v4, v0

    const/16 v5, 0x37

    add-int/lit8 v6, v1, 0x20

    invoke-direct {v3, v4, v5, v6}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    if-nez v2, :cond_2

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/s;->a:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7, v8, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    :goto_3
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    if-eqz v2, :cond_3

    const-string v3, "ON"

    :goto_4
    new-instance v4, Lcom/creativemobi/engine/x;

    const/16 v5, 0x1bd

    add-int/lit8 v1, v1, 0x20

    invoke-direct {v4, v3, v5, v1}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    if-nez v2, :cond_4

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/s;->a:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7, v8, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    :goto_5
    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "listitem"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "listitemHL"

    const/16 v5, 0x2d

    invoke-virtual {p1, v3, v4, v5, v1}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/creativemobi/engine/cd;->a(I)V

    goto :goto_2

    :cond_2
    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/s;->a:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7, v9, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    goto :goto_3

    :cond_3
    const-string v3, "OFF"

    goto :goto_4

    :cond_4
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/s;->a:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7, v9, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    goto :goto_5

    .line 21
    :cond_5
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 48
    iput-object p3, p0, Lcom/creativemobi/engine/s;->b:Lcom/creativemobi/engine/bl;

    .line 49
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/s;->a:Landroid/graphics/Typeface;

    .line 51
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 53
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 54
    const-string v0, "settings_graphic"

    const-string v1, "graphics/menu/settings_graphic.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 56
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v3, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 57
    const-string v0, "settings_graphic"

    const-string v1, "settings_graphic"

    const/16 v2, 0x1fc

    const/16 v3, 0x8f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 59
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 60
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x1f4

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 62
    const-string v0, "listitem"

    const-string v1, "graphics/menu/listitem.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 63
    const-string v0, "listitemHL"

    const-string v1, "graphics/menu/listitem_hl.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 66
    const-string v0, "header"

    const-string v1, "graphics/menu/settings_header.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 68
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 69
    const-string v0, "header"

    const-string v1, "header"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0xbe

    sub-int/2addr v2, v3

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 71
    :cond_0
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 1

    .prologue
    .line 115
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/s;->f:Z

    .line 43
    return-void
.end method
