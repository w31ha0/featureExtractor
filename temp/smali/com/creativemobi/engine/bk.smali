.class public final Lcom/creativemobi/engine/bk;
.super Ljava/lang/Object;
.source "AchievementsView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# instance fields
.field private a:Ljava/util/ArrayList;

.field private b:F

.field private c:I

.field private d:I

.field private e:Landroid/graphics/Typeface;

.field private f:Lcom/creativemobi/engine/bl;

.field private g:F

.field private h:Z

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/bk;->a:Ljava/util/ArrayList;

    .line 13
    iput v1, p0, Lcom/creativemobi/engine/bk;->b:F

    .line 14
    iput v2, p0, Lcom/creativemobi/engine/bk;->c:I

    .line 15
    iput v2, p0, Lcom/creativemobi/engine/bk;->d:I

    .line 18
    iput v1, p0, Lcom/creativemobi/engine/bk;->g:F

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/bk;->h:Z

    .line 107
    const/16 v0, 0xaa

    iput v0, p0, Lcom/creativemobi/engine/bk;->i:I

    .line 108
    const/16 v0, 0x15e

    iput v0, p0, Lcom/creativemobi/engine/bk;->j:I

    .line 109
    const/16 v0, 0x28

    iput v0, p0, Lcom/creativemobi/engine/bk;->k:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 174
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 32
    iget-boolean v0, p0, Lcom/creativemobi/engine/bk;->h:Z

    if-eqz v0, :cond_1

    .line 33
    iput p3, p0, Lcom/creativemobi/engine/bk;->g:F

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/bk;->h:Z

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 36
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/bk;->b:F

    iget v1, p0, Lcom/creativemobi/engine/bk;->g:F

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/bk;->b:F

    .line 37
    iput p3, p0, Lcom/creativemobi/engine/bk;->g:F

    .line 38
    const-string v0, "arrow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/creativemobi/engine/bk;->b:F

    iget v1, p0, Lcom/creativemobi/engine/bk;->c:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 40
    iget v0, p0, Lcom/creativemobi/engine/bk;->c:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/bk;->b:F

    .line 41
    const-string v0, "arrow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    iget v0, p0, Lcom/creativemobi/engine/bk;->b:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iput v2, p0, Lcom/creativemobi/engine/bk;->b:F

    goto :goto_0
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 8

    .prologue
    .line 23
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    .line 24
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "ACHIEVEMENTS [%1$d/%2$d]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/creativemobi/engine/bk;->d:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/creativemobi/engine/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x32

    const/16 v3, 0x87

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bk;->e:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/creativemobi/engine/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/creativemobi/engine/be;

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/creativemobi/engine/bk;->b:F

    float-to-int v2, v2

    mul-int/lit8 v3, v0, 0x3c

    add-int/2addr v2, v3

    iget v3, p0, Lcom/creativemobi/engine/bk;->i:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/creativemobi/engine/bk;->i:I

    const/16 v4, 0x3c

    sub-int/2addr v3, v4

    if-lt v2, v3, :cond_0

    iget v3, p0, Lcom/creativemobi/engine/bk;->j:I

    add-int/lit8 v3, v3, 0x3c

    if-le v2, v3, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trophy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x16

    sub-int v3, v2, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "trophy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    iget v5, p0, Lcom/creativemobi/engine/bk;->k:I

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-virtual {v4, v5, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trophy"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    new-instance v3, Lcom/creativemobi/engine/x;

    iget-object v4, p2, Lcom/creativemobi/engine/be;->b:Ljava/lang/String;

    iget v5, p0, Lcom/creativemobi/engine/bk;->k:I

    add-int/lit8 v5, v5, 0x3c

    invoke-direct {v3, v4, v5, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2}, Lcom/creativemobi/engine/be;->a()Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0x1c

    const v5, -0x2676e5

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/bk;->e:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    :goto_1
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget v4, p0, Lcom/creativemobi/engine/bk;->i:I

    const/16 v5, 0x14

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Lcom/creativemobi/engine/x;->a(I)V

    iget v3, p2, Lcom/creativemobi/engine/be;->d:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    rem-int/lit8 v3, v3, 0x64

    if-nez v3, :cond_4

    iget v3, p2, Lcom/creativemobi/engine/be;->e:F

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    rem-int/lit8 v3, v3, 0x64

    if-nez v3, :cond_4

    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_5

    iget v3, p2, Lcom/creativemobi/engine/be;->d:F

    iget v4, p2, Lcom/creativemobi/engine/be;->e:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    iget v3, p2, Lcom/creativemobi/engine/be;->e:F

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "(%1$d/%2$d)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v5, v6

    const/4 v3, 0x1

    iget v6, p2, Lcom/creativemobi/engine/be;->e:F

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    :goto_3
    new-instance v4, Lcom/creativemobi/engine/x;

    iget v5, p0, Lcom/creativemobi/engine/bk;->k:I

    add-int/lit8 v5, v5, 0x3c

    add-int/lit8 v6, v2, 0x14

    invoke-direct {v4, v3, v5, v6}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x14

    const v5, -0x777778

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/bk;->e:Landroid/graphics/Typeface;

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget v3, p0, Lcom/creativemobi/engine/bk;->i:I

    const/16 v5, 0x14

    sub-int/2addr v3, v5

    invoke-virtual {v4, v3}, Lcom/creativemobi/engine/x;->a(I)V

    new-instance v3, Lcom/creativemobi/engine/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p2, Lcom/creativemobi/engine/be;->f:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " RP"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x2a8

    add-int/lit8 v2, v2, 0xa

    invoke-direct {v3, v4, v5, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    invoke-virtual {p2}, Lcom/creativemobi/engine/be;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    const/16 v2, 0x1c

    const v4, -0x2676e5

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/bk;->e:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    :goto_4
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget v2, p0, Lcom/creativemobi/engine/bk;->i:I

    const/16 v4, 0x14

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/creativemobi/engine/x;->a(I)V

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0x1c

    const/4 v5, -0x1

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/bk;->e:Landroid/graphics/Typeface;

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    goto/16 :goto_1

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_2

    :cond_5
    sget-object v3, Lcom/creativemobi/engine/be;->g:[I

    iget v4, p2, Lcom/creativemobi/engine/be;->a:I

    aget v3, v3, v4

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/creativemobi/engine/bk;->f:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/creativemobi/engine/ac;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/creativemobi/engine/be;->e:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/creativemobi/engine/bk;->f:Lcom/creativemobi/engine/bl;

    invoke-interface {v6}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p2, Lcom/creativemobi/engine/be;->e:F

    invoke-static {v6, v7}, Lcom/creativemobi/engine/h;->b(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    const-string v4, "MPH"

    const-string v5, "km/h"

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(%.2f/%d)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/creativemobi/engine/bk;->f:Lcom/creativemobi/engine/bl;

    invoke-interface {v6}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p2, Lcom/creativemobi/engine/be;->d:F

    invoke-static {v6, v7}, Lcom/creativemobi/engine/h;->b(Landroid/content/Context;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/creativemobi/engine/bk;->f:Lcom/creativemobi/engine/bl;

    invoke-interface {v6}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p2, Lcom/creativemobi/engine/be;->e:F

    invoke-static {v6, v7}, Lcom/creativemobi/engine/h;->b(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_6
    sget-object v3, Lcom/creativemobi/engine/be;->g:[I

    iget v4, p2, Lcom/creativemobi/engine/be;->a:I

    aget v3, v3, v4

    const/16 v4, 0x9

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/creativemobi/engine/bk;->f:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/creativemobi/engine/ac;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p2, Lcom/creativemobi/engine/be;->e:F

    float-to-int v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/creativemobi/engine/bk;->f:Lcom/creativemobi/engine/bl;

    invoke-interface {v6}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p2, Lcom/creativemobi/engine/be;->e:F

    invoke-static {v6, v7}, Lcom/creativemobi/engine/h;->b(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    iget-object v3, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    const-string v4, "miles"

    const-string v5, "km"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(%.2f/%d)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/creativemobi/engine/bk;->f:Lcom/creativemobi/engine/bl;

    invoke-interface {v6}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p2, Lcom/creativemobi/engine/be;->d:F

    invoke-static {v6, v7}, Lcom/creativemobi/engine/h;->b(Landroid/content/Context;F)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/creativemobi/engine/bk;->f:Lcom/creativemobi/engine/bl;

    invoke-interface {v6}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, p2, Lcom/creativemobi/engine/be;->e:F

    invoke-static {v6, v7}, Lcom/creativemobi/engine/h;->b(Landroid/content/Context;F)F

    move-result v6

    float-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p2, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(%.2f/%.2f)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p2, Lcom/creativemobi/engine/be;->d:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p2, Lcom/creativemobi/engine/be;->e:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_8
    const/16 v2, 0x1c

    const v4, -0x777778

    sget-object v5, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/bk;->e:Landroid/graphics/Typeface;

    invoke-virtual {v3, v2, v4, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    goto/16 :goto_4

    .line 25
    :cond_9
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 55
    iput-object p3, p0, Lcom/creativemobi/engine/bk;->f:Lcom/creativemobi/engine/bl;

    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/bk;->e:Landroid/graphics/Typeface;

    .line 59
    invoke-static {p2}, Lcom/creativemobi/engine/be;->c(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/bk;->a:Ljava/util/ArrayList;

    .line 61
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/ac;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    iget-object v0, p0, Lcom/creativemobi/engine/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/be;

    .line 64
    sget-object v2, Lcom/creativemobi/engine/be;->g:[I

    iget v3, v0, Lcom/creativemobi/engine/be;->a:I

    aget v2, v2, v3

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    iget-object v2, v0, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    const-string v3, "60 MPH"

    const-string v4, "100 KM/H"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/creativemobi/engine/be;->c:Ljava/lang/String;

    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/be;

    .line 70
    invoke-virtual {v0}, Lcom/creativemobi/engine/be;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/creativemobi/engine/bk;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/bk;->d:I

    goto :goto_1

    .line 72
    :cond_3
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 74
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 76
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v5, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 78
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 79
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x2bc

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 81
    const-string v0, "arrow"

    const-string v1, "graphics/menu/arrow.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 82
    const-string v0, "arrow"

    const-string v1, "arrow"

    const/16 v2, 0x190

    const/16 v3, 0x195

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 84
    const-string v0, "trophy_gray"

    const-string v1, "graphics/menu/trophy_frame.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 85
    const-string v0, "trophy_gold"

    const-string v1, "graphics/menu/trophy_gold.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 88
    iget-object v0, p0, Lcom/creativemobi/engine/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v5

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/be;

    .line 89
    invoke-virtual {v0}, Lcom/creativemobi/engine/be;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trophy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "trophy_gold"

    iget v4, p0, Lcom/creativemobi/engine/bk;->k:I

    invoke-virtual {p1, v0, v2, v4, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    move v2, v3

    .line 92
    :goto_3
    iget v3, p0, Lcom/creativemobi/engine/bk;->i:I

    const/16 v4, 0x14

    sub-int/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/creativemobi/engine/cd;->b(I)V

    goto :goto_2

    .line 91
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trophy"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "trophy_gray"

    iget v4, p0, Lcom/creativemobi/engine/bk;->k:I

    invoke-virtual {p1, v0, v2, v4, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    move v2, v3

    goto :goto_3

    .line 95
    :cond_5
    iget-object v0, p0, Lcom/creativemobi/engine/bk;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/creativemobi/engine/bk;->c:I

    .line 96
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/bk;->h:Z

    .line 50
    return-void
.end method
