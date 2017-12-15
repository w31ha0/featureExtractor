.class public final Lcom/creativemobi/engine/cd;
.super Ljava/lang/Object;
.source "Sprite.java"


# instance fields
.field private A:F

.field private B:Z

.field private C:I

.field private D:I

.field private E:Landroid/graphics/Paint;

.field private F:Landroid/graphics/Paint;

.field private G:Lcom/creativemobi/engine/x;

.field private H:I

.field private I:I

.field private J:I

.field private K:I

.field private L:Z

.field private final M:F

.field private N:F

.field a:Z

.field b:F

.field c:Z

.field d:Landroid/graphics/Point;

.field private e:F

.field private f:I

.field private g:I

.field private h:Lcom/creativemobi/engine/br;

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:Lcom/creativemobi/engine/l;

.field private o:Z

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I

.field private u:I

.field private v:[I

.field private w:[I

.field private x:J

.field private y:Z

.field private z:F


# direct methods
.method public constructor <init>(IIIII)V
    .locals 5

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/creativemobi/engine/cd;->e:F

    .line 15
    iput v1, p0, Lcom/creativemobi/engine/cd;->f:I

    .line 16
    iput v1, p0, Lcom/creativemobi/engine/cd;->g:I

    .line 18
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->h:Lcom/creativemobi/engine/br;

    .line 19
    iput v2, p0, Lcom/creativemobi/engine/cd;->i:I

    .line 20
    iput v2, p0, Lcom/creativemobi/engine/cd;->j:I

    .line 21
    iput v1, p0, Lcom/creativemobi/engine/cd;->k:I

    .line 25
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->o:Z

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/creativemobi/engine/cd;->p:I

    .line 27
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->q:Z

    .line 28
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->r:Z

    .line 30
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->a:Z

    .line 35
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->w:[I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/cd;->b:F

    .line 39
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->c:Z

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/cd;->d:Landroid/graphics/Point;

    .line 42
    iput v4, p0, Lcom/creativemobi/engine/cd;->z:F

    .line 43
    iput v4, p0, Lcom/creativemobi/engine/cd;->A:F

    .line 44
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->B:Z

    .line 50
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->G:Lcom/creativemobi/engine/x;

    .line 191
    iput v1, p0, Lcom/creativemobi/engine/cd;->H:I

    .line 192
    iput v1, p0, Lcom/creativemobi/engine/cd;->I:I

    .line 193
    iput v1, p0, Lcom/creativemobi/engine/cd;->J:I

    .line 194
    iput v1, p0, Lcom/creativemobi/engine/cd;->K:I

    .line 195
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->L:Z

    .line 281
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/creativemobi/engine/cd;->M:F

    .line 119
    int-to-float v0, p1

    iput v0, p0, Lcom/creativemobi/engine/cd;->l:F

    .line 120
    int-to-float v0, p2

    iput v0, p0, Lcom/creativemobi/engine/cd;->m:F

    .line 121
    iput p3, p0, Lcom/creativemobi/engine/cd;->C:I

    .line 122
    iput p4, p0, Lcom/creativemobi/engine/cd;->D:I

    .line 123
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->B:Z

    .line 125
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/cd;->E:Landroid/graphics/Paint;

    .line 126
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->E:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    .line 127
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->E:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 129
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/cd;->F:Landroid/graphics/Paint;

    .line 130
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->F:Landroid/graphics/Paint;

    const v1, -0xe3bd66

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 131
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->F:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 132
    return-void
.end method

.method public constructor <init>(IIIILandroid/graphics/Paint;)V
    .locals 5

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/creativemobi/engine/cd;->e:F

    .line 15
    iput v1, p0, Lcom/creativemobi/engine/cd;->f:I

    .line 16
    iput v1, p0, Lcom/creativemobi/engine/cd;->g:I

    .line 18
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->h:Lcom/creativemobi/engine/br;

    .line 19
    iput v2, p0, Lcom/creativemobi/engine/cd;->i:I

    .line 20
    iput v2, p0, Lcom/creativemobi/engine/cd;->j:I

    .line 21
    iput v1, p0, Lcom/creativemobi/engine/cd;->k:I

    .line 25
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->o:Z

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/creativemobi/engine/cd;->p:I

    .line 27
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->q:Z

    .line 28
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->r:Z

    .line 30
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->a:Z

    .line 35
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->w:[I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/cd;->b:F

    .line 39
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->c:Z

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/cd;->d:Landroid/graphics/Point;

    .line 42
    iput v4, p0, Lcom/creativemobi/engine/cd;->z:F

    .line 43
    iput v4, p0, Lcom/creativemobi/engine/cd;->A:F

    .line 44
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->B:Z

    .line 50
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->G:Lcom/creativemobi/engine/x;

    .line 191
    iput v1, p0, Lcom/creativemobi/engine/cd;->H:I

    .line 192
    iput v1, p0, Lcom/creativemobi/engine/cd;->I:I

    .line 193
    iput v1, p0, Lcom/creativemobi/engine/cd;->J:I

    .line 194
    iput v1, p0, Lcom/creativemobi/engine/cd;->K:I

    .line 195
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->L:Z

    .line 281
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/creativemobi/engine/cd;->M:F

    .line 135
    int-to-float v0, p1

    iput v0, p0, Lcom/creativemobi/engine/cd;->l:F

    .line 136
    int-to-float v0, p2

    iput v0, p0, Lcom/creativemobi/engine/cd;->m:F

    .line 137
    iput p3, p0, Lcom/creativemobi/engine/cd;->C:I

    .line 138
    iput p4, p0, Lcom/creativemobi/engine/cd;->D:I

    .line 139
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->B:Z

    .line 141
    iput-object p5, p0, Lcom/creativemobi/engine/cd;->E:Landroid/graphics/Paint;

    .line 142
    return-void
.end method

.method public constructor <init>(Lcom/creativemobi/engine/l;)V
    .locals 5

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/creativemobi/engine/cd;->e:F

    .line 15
    iput v1, p0, Lcom/creativemobi/engine/cd;->f:I

    .line 16
    iput v1, p0, Lcom/creativemobi/engine/cd;->g:I

    .line 18
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->h:Lcom/creativemobi/engine/br;

    .line 19
    iput v2, p0, Lcom/creativemobi/engine/cd;->i:I

    .line 20
    iput v2, p0, Lcom/creativemobi/engine/cd;->j:I

    .line 21
    iput v1, p0, Lcom/creativemobi/engine/cd;->k:I

    .line 25
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->o:Z

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/creativemobi/engine/cd;->p:I

    .line 27
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->q:Z

    .line 28
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->r:Z

    .line 30
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->a:Z

    .line 35
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->w:[I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/cd;->b:F

    .line 39
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->c:Z

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/cd;->d:Landroid/graphics/Point;

    .line 42
    iput v4, p0, Lcom/creativemobi/engine/cd;->z:F

    .line 43
    iput v4, p0, Lcom/creativemobi/engine/cd;->A:F

    .line 44
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->B:Z

    .line 50
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->G:Lcom/creativemobi/engine/x;

    .line 191
    iput v1, p0, Lcom/creativemobi/engine/cd;->H:I

    .line 192
    iput v1, p0, Lcom/creativemobi/engine/cd;->I:I

    .line 193
    iput v1, p0, Lcom/creativemobi/engine/cd;->J:I

    .line 194
    iput v1, p0, Lcom/creativemobi/engine/cd;->K:I

    .line 195
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->L:Z

    .line 281
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/creativemobi/engine/cd;->M:F

    .line 115
    iput-object p1, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    .line 116
    return-void
.end method

.method public constructor <init>(Lcom/creativemobi/engine/l;II)V
    .locals 5

    .prologue
    const/high16 v4, -0x40800000    # -1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/creativemobi/engine/cd;->e:F

    .line 15
    iput v1, p0, Lcom/creativemobi/engine/cd;->f:I

    .line 16
    iput v1, p0, Lcom/creativemobi/engine/cd;->g:I

    .line 18
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->h:Lcom/creativemobi/engine/br;

    .line 19
    iput v2, p0, Lcom/creativemobi/engine/cd;->i:I

    .line 20
    iput v2, p0, Lcom/creativemobi/engine/cd;->j:I

    .line 21
    iput v1, p0, Lcom/creativemobi/engine/cd;->k:I

    .line 25
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->o:Z

    .line 26
    const/4 v0, 0x5

    iput v0, p0, Lcom/creativemobi/engine/cd;->p:I

    .line 27
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->q:Z

    .line 28
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->r:Z

    .line 30
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->a:Z

    .line 35
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->w:[I

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/cd;->b:F

    .line 39
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->c:Z

    .line 40
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/cd;->d:Landroid/graphics/Point;

    .line 42
    iput v4, p0, Lcom/creativemobi/engine/cd;->z:F

    .line 43
    iput v4, p0, Lcom/creativemobi/engine/cd;->A:F

    .line 44
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->B:Z

    .line 50
    iput-object v3, p0, Lcom/creativemobi/engine/cd;->G:Lcom/creativemobi/engine/x;

    .line 191
    iput v1, p0, Lcom/creativemobi/engine/cd;->H:I

    .line 192
    iput v1, p0, Lcom/creativemobi/engine/cd;->I:I

    .line 193
    iput v1, p0, Lcom/creativemobi/engine/cd;->J:I

    .line 194
    iput v1, p0, Lcom/creativemobi/engine/cd;->K:I

    .line 195
    iput-boolean v1, p0, Lcom/creativemobi/engine/cd;->L:Z

    .line 281
    const/high16 v0, 0x420c0000    # 35.0f

    iput v0, p0, Lcom/creativemobi/engine/cd;->M:F

    .line 145
    int-to-float v0, p2

    iput v0, p0, Lcom/creativemobi/engine/cd;->l:F

    .line 146
    int-to-float v0, p3

    iput v0, p0, Lcom/creativemobi/engine/cd;->m:F

    .line 147
    iput-object p1, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    .line 148
    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/creativemobi/engine/cd;->e:F

    return v0
.end method

.method public final a(F)V
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/creativemobi/engine/cd;->b:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/creativemobi/engine/cd;->b:F

    .line 83
    return-void
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/creativemobi/engine/cd;->p:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/creativemobi/engine/cd;->q:Z

    .line 165
    iput p1, p0, Lcom/creativemobi/engine/cd;->p:I

    .line 166
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(II)V
    .locals 0

    .prologue
    .line 151
    iput p1, p0, Lcom/creativemobi/engine/cd;->i:I

    .line 152
    iput p2, p0, Lcom/creativemobi/engine/cd;->j:I

    .line 153
    return-void
.end method

.method public final a(IIIZ)V
    .locals 2

    .prologue
    .line 62
    iput p1, p0, Lcom/creativemobi/engine/cd;->s:I

    .line 63
    iput p2, p0, Lcom/creativemobi/engine/cd;->t:I

    .line 64
    iput p3, p0, Lcom/creativemobi/engine/cd;->u:I

    .line 65
    iput-boolean p4, p0, Lcom/creativemobi/engine/cd;->y:Z

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/creativemobi/engine/cd;->x:J

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/cd;->a:Z

    .line 68
    iput p1, p0, Lcom/creativemobi/engine/cd;->k:I

    .line 69
    return-void
.end method

.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Paint;FF)V
    .locals 15

    .prologue
    .line 206
    iget-boolean v3, p0, Lcom/creativemobi/engine/cd;->B:Z

    if-eqz v3, :cond_0

    .line 207
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-object/from16 v0, p1

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    iget v4, p0, Lcom/creativemobi/engine/cd;->l:F

    iget v5, p0, Lcom/creativemobi/engine/cd;->m:F

    iget v3, p0, Lcom/creativemobi/engine/cd;->l:F

    iget v6, p0, Lcom/creativemobi/engine/cd;->C:I

    int-to-float v6, v6

    add-float/2addr v6, v3

    iget v3, p0, Lcom/creativemobi/engine/cd;->m:F

    iget v7, p0, Lcom/creativemobi/engine/cd;->D:I

    int-to-float v7, v7

    add-float/2addr v7, v3

    iget-object v8, p0, Lcom/creativemobi/engine/cd;->E:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 260
    :goto_0
    return-void

    .line 210
    :cond_0
    iget-boolean v3, p0, Lcom/creativemobi/engine/cd;->a:Z

    if-eqz v3, :cond_9

    .line 211
    iget-object v3, p0, Lcom/creativemobi/engine/cd;->v:[I

    if-eqz v3, :cond_4

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/creativemobi/engine/cd;->x:J

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/creativemobi/engine/cd;->v:[I

    iget v6, p0, Lcom/creativemobi/engine/cd;->k:I

    aget v5, v5, v6

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    const/4 v3, 0x1

    .line 216
    :goto_1
    if-eqz v3, :cond_9

    .line 217
    const/4 v3, 0x0

    .line 218
    iget-object v4, p0, Lcom/creativemobi/engine/cd;->w:[I

    if-eqz v4, :cond_6

    .line 219
    iget v4, p0, Lcom/creativemobi/engine/cd;->k:I

    iget-object v5, p0, Lcom/creativemobi/engine/cd;->w:[I

    array-length v5, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_1

    .line 220
    iget-object v3, p0, Lcom/creativemobi/engine/cd;->w:[I

    iget v4, p0, Lcom/creativemobi/engine/cd;->k:I

    aget v3, v3, v4

    iput v3, p0, Lcom/creativemobi/engine/cd;->k:I

    .line 221
    const/4 v3, 0x1

    .line 222
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/creativemobi/engine/cd;->w:[I

    .line 226
    :cond_1
    :goto_2
    if-eqz v3, :cond_7

    .line 227
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/creativemobi/engine/cd;->a:Z

    .line 228
    iget-object v3, p0, Lcom/creativemobi/engine/cd;->h:Lcom/creativemobi/engine/br;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/creativemobi/engine/cd;->h:Lcom/creativemobi/engine/br;

    invoke-interface {v3, p0}, Lcom/creativemobi/engine/br;->a(Lcom/creativemobi/engine/cd;)V

    .line 229
    :cond_2
    iget-boolean v3, p0, Lcom/creativemobi/engine/cd;->y:Z

    if-eqz v3, :cond_8

    .line 230
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/creativemobi/engine/cd;->r:Z

    goto :goto_0

    .line 213
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 214
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/creativemobi/engine/cd;->x:J

    sub-long/2addr v3, v5

    iget v5, p0, Lcom/creativemobi/engine/cd;->u:I

    int-to-long v5, v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_5

    const/4 v3, 0x1

    goto :goto_1

    :cond_5
    const/4 v3, 0x0

    goto :goto_1

    .line 224
    :cond_6
    iget v4, p0, Lcom/creativemobi/engine/cd;->k:I

    iget v5, p0, Lcom/creativemobi/engine/cd;->t:I

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_2

    .line 233
    :cond_7
    iget v3, p0, Lcom/creativemobi/engine/cd;->k:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/creativemobi/engine/cd;->k:I

    .line 234
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/creativemobi/engine/cd;->x:J

    .line 238
    :cond_9
    iget v3, p0, Lcom/creativemobi/engine/cd;->l:F

    .line 239
    iget v4, p0, Lcom/creativemobi/engine/cd;->m:F

    .line 241
    iget v5, p0, Lcom/creativemobi/engine/cd;->g:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_10

    .line 242
    iget-object v5, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    invoke-virtual {v5}, Lcom/creativemobi/engine/l;->a()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    iget v6, p0, Lcom/creativemobi/engine/cd;->i:I

    div-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Lcom/creativemobi/engine/cd;->e:F

    mul-float/2addr v5, v6

    sub-float/2addr v3, v5

    move v5, v3

    .line 245
    :goto_3
    iget v3, p0, Lcom/creativemobi/engine/cd;->f:I

    const/4 v6, 0x2

    if-ne v3, v6, :cond_a

    .line 246
    iget-object v3, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    invoke-virtual {v3}, Lcom/creativemobi/engine/l;->b()I

    move-result v3

    iget v6, p0, Lcom/creativemobi/engine/cd;->j:I

    div-int/2addr v3, v6

    int-to-float v3, v3

    iget v6, p0, Lcom/creativemobi/engine/cd;->e:F

    mul-float/2addr v3, v6

    sub-float v3, v4, v3

    move v4, v3

    .line 251
    :cond_a
    iget-boolean v3, p0, Lcom/creativemobi/engine/cd;->L:Z

    if-eqz v3, :cond_b

    .line 252
    iget-object v3, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    float-to-int v6, v5

    float-to-int v7, v4

    iget v10, p0, Lcom/creativemobi/engine/cd;->e:F

    iget v11, p0, Lcom/creativemobi/engine/cd;->H:I

    iget v12, p0, Lcom/creativemobi/engine/cd;->I:I

    iget v4, p0, Lcom/creativemobi/engine/cd;->J:I

    iget v5, p0, Lcom/creativemobi/engine/cd;->H:I

    add-int v13, v4, v5

    iget v4, p0, Lcom/creativemobi/engine/cd;->K:I

    iget v5, p0, Lcom/creativemobi/engine/cd;->I:I

    add-int v14, v4, v5

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v14}, Lcom/creativemobi/engine/l;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIFFFIIII)V

    goto/16 :goto_0

    .line 254
    :cond_b
    iget v3, p0, Lcom/creativemobi/engine/cd;->i:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    iget v3, p0, Lcom/creativemobi/engine/cd;->j:I

    const/4 v6, 0x1

    if-eq v3, v6, :cond_e

    .line 255
    :cond_c
    iget-object v3, p0, Lcom/creativemobi/engine/cd;->w:[I

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    float-to-int v6, v5

    float-to-int v7, v4

    iget v10, p0, Lcom/creativemobi/engine/cd;->i:I

    iget v11, p0, Lcom/creativemobi/engine/cd;->j:I

    iget-object v4, p0, Lcom/creativemobi/engine/cd;->w:[I

    iget v5, p0, Lcom/creativemobi/engine/cd;->k:I

    aget v12, v4, v5

    iget v13, p0, Lcom/creativemobi/engine/cd;->e:F

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v13}, Lcom/creativemobi/engine/l;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIFFIIIF)V

    goto/16 :goto_0

    .line 257
    :cond_d
    iget-object v3, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    float-to-int v6, v5

    float-to-int v7, v4

    iget v10, p0, Lcom/creativemobi/engine/cd;->i:I

    iget v11, p0, Lcom/creativemobi/engine/cd;->j:I

    iget v12, p0, Lcom/creativemobi/engine/cd;->k:I

    iget v13, p0, Lcom/creativemobi/engine/cd;->e:F

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v13}, Lcom/creativemobi/engine/l;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIFFIIIF)V

    goto/16 :goto_0

    .line 258
    :cond_e
    iget-boolean v3, p0, Lcom/creativemobi/engine/cd;->c:Z

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    float-to-int v6, v5

    float-to-int v7, v4

    iget v10, p0, Lcom/creativemobi/engine/cd;->e:F

    iget v11, p0, Lcom/creativemobi/engine/cd;->b:F

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v11}, Lcom/creativemobi/engine/l;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIFFFF)V

    goto/16 :goto_0

    .line 259
    :cond_f
    iget-object v3, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    float-to-int v6, v5

    float-to-int v7, v4

    iget v10, p0, Lcom/creativemobi/engine/cd;->e:F

    iget v11, p0, Lcom/creativemobi/engine/cd;->b:F

    iget-object v12, p0, Lcom/creativemobi/engine/cd;->d:Landroid/graphics/Point;

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move/from16 v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v3 .. v12}, Lcom/creativemobi/engine/l;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIFFFFLandroid/graphics/Point;)V

    goto/16 :goto_0

    :cond_10
    move v5, v3

    goto/16 :goto_3
.end method

.method public final a(Lcom/creativemobi/engine/br;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/creativemobi/engine/cd;->h:Lcom/creativemobi/engine/br;

    .line 178
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/l;)V
    .locals 0

    .prologue
    .line 327
    iput-object p1, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    .line 328
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 267
    iput-boolean p1, p0, Lcom/creativemobi/engine/cd;->r:Z

    .line 268
    return-void
.end method

.method public final a([I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 53
    iput-object p1, p0, Lcom/creativemobi/engine/cd;->w:[I

    .line 54
    const/16 v0, 0x64

    iput v0, p0, Lcom/creativemobi/engine/cd;->u:I

    .line 55
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->y:Z

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/creativemobi/engine/cd;->x:J

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/cd;->a:Z

    .line 58
    iput v2, p0, Lcom/creativemobi/engine/cd;->k:I

    .line 59
    return-void
.end method

.method public final a(FF)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 299
    iget-boolean v0, p0, Lcom/creativemobi/engine/cd;->B:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/creativemobi/engine/cd;->r:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/cd;->N:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/creativemobi/engine/cd;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/cd;->l:F

    iget v1, p0, Lcom/creativemobi/engine/cd;->C:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/creativemobi/engine/cd;->N:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/cd;->N:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/creativemobi/engine/cd;->m:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/cd;->m:F

    iget v1, p0, Lcom/creativemobi/engine/cd;->D:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcom/creativemobi/engine/cd;->N:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    move v0, v3

    .line 307
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 299
    goto :goto_0

    .line 303
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/cd;->z:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 304
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->a()I

    move-result v0

    iget v1, p0, Lcom/creativemobi/engine/cd;->i:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/cd;->z:F

    .line 305
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->b()I

    move-result v0

    iget v1, p0, Lcom/creativemobi/engine/cd;->j:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/cd;->A:F

    .line 307
    :cond_2
    iget-boolean v0, p0, Lcom/creativemobi/engine/cd;->r:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/creativemobi/engine/cd;->N:F

    add-float/2addr v0, p1

    iget v1, p0, Lcom/creativemobi/engine/cd;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/creativemobi/engine/cd;->l:F

    iget v1, p0, Lcom/creativemobi/engine/cd;->z:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/creativemobi/engine/cd;->N:F

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    iget v0, p0, Lcom/creativemobi/engine/cd;->N:F

    add-float/2addr v0, p2

    iget v1, p0, Lcom/creativemobi/engine/cd;->m:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/creativemobi/engine/cd;->m:F

    iget v1, p0, Lcom/creativemobi/engine/cd;->A:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/creativemobi/engine/cd;->N:F

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final a(FFF)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/creativemobi/engine/cd;->B:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/creativemobi/engine/cd;->r:Z

    if-eqz v0, :cond_0

    add-float v0, p1, p3

    iget v1, p0, Lcom/creativemobi/engine/cd;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/cd;->l:F

    iget v1, p0, Lcom/creativemobi/engine/cd;->C:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    add-float v0, p2, p3

    iget v1, p0, Lcom/creativemobi/engine/cd;->m:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/cd;->m:F

    iget v1, p0, Lcom/creativemobi/engine/cd;->D:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    move v0, v3

    .line 293
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 285
    goto :goto_0

    .line 289
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/cd;->z:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->a()I

    move-result v0

    iget v1, p0, Lcom/creativemobi/engine/cd;->i:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/cd;->z:F

    .line 291
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->b()I

    move-result v0

    iget v1, p0, Lcom/creativemobi/engine/cd;->j:I

    div-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/cd;->A:F

    .line 293
    :cond_2
    iget-boolean v0, p0, Lcom/creativemobi/engine/cd;->r:Z

    if-eqz v0, :cond_3

    add-float v0, p1, p3

    iget v1, p0, Lcom/creativemobi/engine/cd;->l:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/creativemobi/engine/cd;->l:F

    iget v1, p0, Lcom/creativemobi/engine/cd;->z:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    add-float v0, p2, p3

    iget v1, p0, Lcom/creativemobi/engine/cd;->m:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Lcom/creativemobi/engine/cd;->m:F

    iget v1, p0, Lcom/creativemobi/engine/cd;->A:F

    add-float/2addr v0, v1

    add-float/2addr v0, p3

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 98
    iput p1, p0, Lcom/creativemobi/engine/cd;->e:F

    .line 99
    return-void
.end method

.method public final b(FF)V
    .locals 0

    .prologue
    .line 322
    iput p1, p0, Lcom/creativemobi/engine/cd;->l:F

    .line 323
    iput p2, p0, Lcom/creativemobi/engine/cd;->m:F

    .line 324
    return-void
.end method

.method public final b(I)V
    .locals 1

    .prologue
    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/cd;->L:Z

    .line 199
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/cd;->H:I

    .line 200
    iput p1, p0, Lcom/creativemobi/engine/cd;->I:I

    .line 201
    const/16 v0, 0x320

    iput v0, p0, Lcom/creativemobi/engine/cd;->J:I

    .line 202
    const/16 v0, 0xf0

    iput v0, p0, Lcom/creativemobi/engine/cd;->K:I

    .line 203
    return-void
.end method

.method public final b([I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iput v2, p0, Lcom/creativemobi/engine/cd;->s:I

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lcom/creativemobi/engine/cd;->t:I

    .line 74
    iput-object p1, p0, Lcom/creativemobi/engine/cd;->v:[I

    .line 75
    iput-boolean v2, p0, Lcom/creativemobi/engine/cd;->y:Z

    .line 76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/creativemobi/engine/cd;->x:J

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/cd;->a:Z

    .line 78
    iput v2, p0, Lcom/creativemobi/engine/cd;->k:I

    .line 79
    return-void
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 111
    iget-boolean v0, p0, Lcom/creativemobi/engine/cd;->o:Z

    return v0
.end method

.method public final c(I)V
    .locals 0

    .prologue
    .line 313
    iput p1, p0, Lcom/creativemobi/engine/cd;->k:I

    .line 314
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/creativemobi/engine/cd;->q:Z

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/cd;->q:Z

    .line 161
    return-void
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Lcom/creativemobi/engine/cd;->p:I

    return v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 263
    iget-boolean v0, p0, Lcom/creativemobi/engine/cd;->r:Z

    return v0
.end method

.method public final g()Lcom/creativemobi/engine/l;
    .locals 1

    .prologue
    .line 331
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    return-object v0
.end method

.method public final h()F
    .locals 3

    .prologue
    .line 335
    iget v0, p0, Lcom/creativemobi/engine/cd;->f:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/cd;->m:F

    iget-object v1, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    invoke-virtual {v1}, Lcom/creativemobi/engine/l;->b()I

    move-result v1

    iget v2, p0, Lcom/creativemobi/engine/cd;->j:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/creativemobi/engine/cd;->e:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 336
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/cd;->m:F

    goto :goto_0
.end method

.method public final i()F
    .locals 3

    .prologue
    .line 340
    iget v0, p0, Lcom/creativemobi/engine/cd;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/cd;->l:F

    iget-object v1, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    invoke-virtual {v1}, Lcom/creativemobi/engine/l;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcom/creativemobi/engine/cd;->i:I

    div-int/2addr v1, v2

    int-to-float v1, v1

    iget v2, p0, Lcom/creativemobi/engine/cd;->e:F

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 341
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/cd;->l:F

    goto :goto_0
.end method

.method public final j()V
    .locals 1

    .prologue
    .line 353
    const/4 v0, 0x2

    iput v0, p0, Lcom/creativemobi/engine/cd;->f:I

    .line 354
    return-void
.end method

.method public final k()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/cd;->g:I

    .line 362
    return-void
.end method

.method public final l()F
    .locals 2

    .prologue
    .line 365
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->b()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/creativemobi/engine/cd;->e:F

    mul-float/2addr v0, v1

    return v0
.end method

.method public final m()F
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 370
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/cd;->n:Lcom/creativemobi/engine/l;

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->a()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/creativemobi/engine/cd;->e:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method
