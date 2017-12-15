.class public final Lcom/creativemobi/engine/x;
.super Ljava/lang/Object;
.source "Text.java"


# static fields
.field private static c:Z

.field private static d:Landroid/graphics/Paint;

.field private static e:Landroid/graphics/Paint;


# instance fields
.field a:I

.field b:Landroid/graphics/Paint;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/high16 v3, 0x41700000    # 15.0f

    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 8
    sput-boolean v1, Lcom/creativemobi/engine/x;->c:Z

    .line 9
    sput-object v0, Lcom/creativemobi/engine/x;->d:Landroid/graphics/Paint;

    .line 10
    sput-object v0, Lcom/creativemobi/engine/x;->e:Landroid/graphics/Paint;

    .line 27
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 28
    sput-object v0, Lcom/creativemobi/engine/x;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v1, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 29
    sget-object v0, Lcom/creativemobi/engine/x;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 30
    sget-object v0, Lcom/creativemobi/engine/x;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 31
    sget-object v0, Lcom/creativemobi/engine/x;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 32
    sget-object v0, Lcom/creativemobi/engine/x;->e:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 33
    sget-object v0, Lcom/creativemobi/engine/x;->e:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 34
    sget-object v0, Lcom/creativemobi/engine/x;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 37
    sput-object v0, Lcom/creativemobi/engine/x;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 38
    sget-object v0, Lcom/creativemobi/engine/x;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 39
    sget-object v0, Lcom/creativemobi/engine/x;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 40
    sget-object v0, Lcom/creativemobi/engine/x;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 41
    sget-object v0, Lcom/creativemobi/engine/x;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/creativemobi/engine/x;->h:I

    .line 15
    iput v0, p0, Lcom/creativemobi/engine/x;->i:I

    .line 16
    iput v0, p0, Lcom/creativemobi/engine/x;->j:I

    .line 17
    iput v0, p0, Lcom/creativemobi/engine/x;->k:I

    .line 18
    iput-boolean v0, p0, Lcom/creativemobi/engine/x;->l:Z

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    .line 83
    iput p2, p0, Lcom/creativemobi/engine/x;->a:I

    .line 84
    iput p3, p0, Lcom/creativemobi/engine/x;->g:I

    .line 85
    iput-object p1, p0, Lcom/creativemobi/engine/x;->f:Ljava/lang/String;

    .line 86
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/creativemobi/engine/x;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/creativemobi/engine/x;->e:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/creativemobi/engine/x;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/x;->l:Z

    .line 90
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/x;->h:I

    .line 91
    iput p1, p0, Lcom/creativemobi/engine/x;->i:I

    .line 92
    const/16 v0, 0x320

    iput v0, p0, Lcom/creativemobi/engine/x;->j:I

    .line 93
    const/16 v0, 0xf0

    iput v0, p0, Lcom/creativemobi/engine/x;->k:I

    .line 94
    return-void
.end method

.method public final a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    .line 57
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 59
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 60
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 61
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    return-void
.end method

.method public final a(IILandroid/graphics/Typeface;)V
    .locals 2

    .prologue
    .line 65
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    .line 66
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 67
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 68
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 69
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 70
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 71
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    .locals 5

    .prologue
    .line 98
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 100
    iget-boolean v0, p0, Lcom/creativemobi/engine/x;->l:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/x;->h:I

    int-to-float v0, v0

    mul-float/2addr v0, p2

    iget v1, p0, Lcom/creativemobi/engine/x;->i:I

    int-to-float v1, v1

    mul-float/2addr v1, p3

    iget v2, p0, Lcom/creativemobi/engine/x;->h:I

    iget v3, p0, Lcom/creativemobi/engine/x;->j:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/creativemobi/engine/x;->i:I

    iget v4, p0, Lcom/creativemobi/engine/x;->k:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 102
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 103
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/creativemobi/engine/x;->f:Ljava/lang/String;

    iget v1, p0, Lcom/creativemobi/engine/x;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/creativemobi/engine/x;->g:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 105
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 106
    return-void

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/x;->f:Ljava/lang/String;

    iget v1, p0, Lcom/creativemobi/engine/x;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/creativemobi/engine/x;->g:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2, p4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/creativemobi/engine/x;->f:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/creativemobi/engine/x;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/creativemobi/engine/x;->b:Landroid/graphics/Paint;

    return-object v0
.end method
