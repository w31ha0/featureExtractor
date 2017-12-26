.class public Lcom/wordloco/wordchallenge/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:F

.field private b:F

.field private c:Ljava/lang/String;

.field private d:F

.field private e:F

.field private f:F

.field private g:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput v0, p0, Lcom/wordloco/wordchallenge/c/i;->d:F

    iput v0, p0, Lcom/wordloco/wordchallenge/c/i;->e:F

    iput v0, p0, Lcom/wordloco/wordchallenge/c/i;->f:F

    iput v0, p0, Lcom/wordloco/wordchallenge/c/i;->g:F

    .line 15
    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    return v0
.end method

.method public a(FF)F
    .locals 2

    .prologue
    .line 57
    iget v0, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    mul-float/2addr v0, p1

    add-float/2addr v0, p2

    iget v1, p0, Lcom/wordloco/wordchallenge/c/i;->a:F

    add-float/2addr v0, v1

    return v0
.end method

.method public a(F)V
    .locals 0

    .prologue
    .line 41
    iput p1, p0, Lcom/wordloco/wordchallenge/c/i;->a:F

    .line 42
    return-void
.end method

.method public a(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V
    .locals 12

    .prologue
    .line 62
    .line 63
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 70
    cmpl-float v5, p1, p3

    if-lez v5, :cond_9

    .line 71
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v8, p1, v5

    .line 72
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v6, p3, v5

    .line 74
    :goto_0
    cmpl-float v5, v6, v8

    if-lez v5, :cond_0

    .line 75
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v6, v5

    .line 76
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v8, v5

    .line 78
    :cond_0
    cmpl-float v5, p2, p4

    if-lez v5, :cond_8

    .line 79
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v7, p2, v5

    .line 80
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v5, v5, p4

    .line 82
    :goto_1
    cmpl-float v9, v5, v7

    if-lez v9, :cond_1

    .line 83
    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v5, v9

    .line 84
    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    .line 87
    :cond_1
    cmpl-float v9, v8, v6

    if-nez v9, :cond_3

    cmpl-float v9, v7, v5

    if-nez v9, :cond_3

    .line 88
    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v6, v9

    .line 89
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3ed9999a    # 0.425f

    mul-float/2addr v9, v10

    add-float/2addr v4, v9

    .line 90
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v10

    add-float/2addr v3, v9

    .line 91
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    move v11, v2

    move v2, v4

    move v4, v11

    .line 117
    :goto_2
    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 118
    const/16 v9, 0x8c

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 119
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-nez v9, :cond_7

    .line 121
    iget v2, p0, Lcom/wordloco/wordchallenge/c/i;->d:F

    iget v3, p0, Lcom/wordloco/wordchallenge/c/i;->e:F

    iget v4, p0, Lcom/wordloco/wordchallenge/c/i;->f:F

    iget v5, p0, Lcom/wordloco/wordchallenge/c/i;->g:F

    move-object/from16 v1, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 136
    :cond_2
    :goto_3
    return-void

    .line 93
    :cond_3
    cmpl-float v9, v7, v5

    if-nez v9, :cond_4

    .line 94
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v10

    add-float/2addr v3, v9

    .line 95
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3f19999a    # 0.6f

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    move v11, v2

    move v2, v4

    move v4, v11

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    cmpl-float v9, v8, v6

    if-nez v9, :cond_5

    .line 98
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3e4ccccd    # 0.2f

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    .line 99
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3ee66666    # 0.45f

    mul-float/2addr v9, v10

    add-float/2addr v4, v9

    .line 100
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3ee66666    # 0.45f

    mul-float/2addr v9, v10

    add-float/2addr v2, v9

    move v11, v2

    move v2, v4

    move v4, v11

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    sub-float v9, v5, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v10, v6, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    .line 103
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v10

    add-float/2addr v3, v9

    .line 104
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    .line 105
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v10

    sub-float/2addr v4, v9

    .line 106
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v10

    sub-float/2addr v2, v9

    move v11, v2

    move v2, v4

    move v4, v11

    .line 107
    goto/16 :goto_2

    .line 108
    :cond_6
    const/4 v8, 0x0

    .line 109
    const/4 v7, 0x0

    .line 110
    const/4 v6, 0x0

    .line 111
    const/4 v5, 0x0

    move v11, v2

    move v2, v4

    move v4, v11

    goto/16 :goto_2

    .line 123
    :cond_7
    invoke-virtual {p0, v8, v2}, Lcom/wordloco/wordchallenge/c/i;->a(FF)F

    move-result v2

    .line 124
    invoke-virtual {p0, v7, v3}, Lcom/wordloco/wordchallenge/c/i;->a(FF)F

    move-result v3

    .line 125
    invoke-virtual {p0, v6, v4}, Lcom/wordloco/wordchallenge/c/i;->a(FF)F

    move-result v4

    .line 126
    invoke-virtual {p0, v5, v1}, Lcom/wordloco/wordchallenge/c/i;->a(FF)F

    move-result v5

    move-object/from16 v1, p5

    move-object/from16 v6, p6

    .line 128
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 129
    if-eqz p7, :cond_2

    .line 130
    iput v2, p0, Lcom/wordloco/wordchallenge/c/i;->d:F

    .line 131
    iput v3, p0, Lcom/wordloco/wordchallenge/c/i;->e:F

    .line 132
    iput v4, p0, Lcom/wordloco/wordchallenge/c/i;->f:F

    .line 133
    iput v5, p0, Lcom/wordloco/wordchallenge/c/i;->g:F

    goto/16 :goto_3

    :cond_8
    move/from16 v5, p4

    move v7, p2

    goto/16 :goto_1

    :cond_9
    move v6, p3

    move v8, p1

    goto/16 :goto_0
.end method

.method public a(Lcom/wordloco/wordchallenge/c/c;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 23
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v7, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 24
    invoke-virtual {p1}, Lcom/wordloco/wordchallenge/c/c;->a()Lcom/wordloco/wordchallenge/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/h;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 25
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 34
    return-void

    .line 26
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wordloco/wordchallenge/c/j;

    .line 27
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->l()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->d()I

    move-result v1

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->e()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->f()I

    move-result v2

    int-to-float v2, v2

    .line 30
    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->g()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0}, Lcom/wordloco/wordchallenge/c/j;->h()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move-object v5, p2

    move-object v6, p3

    .line 29
    invoke-virtual/range {v0 .. v7}, Lcom/wordloco/wordchallenge/c/i;->b(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/wordloco/wordchallenge/c/i;->c:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public a(FFFF)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 151
    cmpl-float v1, p2, p4

    if-nez v1, :cond_1

    .line 157
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    cmpl-float v1, p1, p3

    if-eqz v1, :cond_0

    .line 155
    sub-float v1, p4, p2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    sub-float v2, p3, p1

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    .line 157
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(F)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    .line 50
    return-void
.end method

.method public b(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/wordloco/wordchallenge/c/i;->c:Ljava/lang/String;

    const-string v1, "LOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual/range {p0 .. p7}, Lcom/wordloco/wordchallenge/c/i;->c(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual/range {p0 .. p7}, Lcom/wordloco/wordchallenge/c/i;->a(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V

    goto :goto_0
.end method

.method public c(F)F
    .locals 2

    .prologue
    .line 53
    iget v0, p0, Lcom/wordloco/wordchallenge/c/i;->a:F

    sub-float v0, p1, v0

    iget v1, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public c(FFFFLandroid/graphics/Canvas;Landroid/graphics/Paint;Z)V
    .locals 12

    .prologue
    .line 170
    .line 171
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    cmpl-float v5, p1, p3

    if-lez v5, :cond_9

    .line 179
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v8, p1, v5

    .line 180
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v6, p3, v5

    .line 182
    :goto_0
    cmpl-float v5, v6, v8

    if-lez v5, :cond_0

    .line 183
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v6, v5

    .line 184
    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v8, v5

    .line 186
    :cond_0
    cmpl-float v5, p2, p4

    if-lez v5, :cond_8

    .line 187
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v7, p2, v5

    .line 188
    const/high16 v5, 0x3f000000    # 0.5f

    add-float v5, v5, p4

    .line 190
    :goto_1
    cmpl-float v9, v5, v7

    if-lez v9, :cond_1

    .line 191
    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v5, v9

    .line 192
    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v7, v9

    .line 195
    :cond_1
    cmpl-float v9, v8, v6

    if-nez v9, :cond_3

    cmpl-float v9, v7, v5

    if-nez v9, :cond_3

    .line 196
    const/high16 v9, 0x3f000000    # 0.5f

    add-float/2addr v6, v9

    .line 197
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3eb33333    # 0.35f

    mul-float/2addr v9, v10

    add-float/2addr v4, v9

    .line 198
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    add-float/2addr v3, v9

    .line 199
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    move v11, v2

    move v2, v4

    move v4, v11

    .line 225
    :goto_2
    sget-object v9, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 226
    const/16 v9, 0x8c

    move-object/from16 v0, p6

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 227
    const/4 v9, 0x0

    cmpl-float v9, v8, v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    cmpl-float v9, v7, v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    cmpl-float v9, v6, v9

    if-nez v9, :cond_7

    const/4 v9, 0x0

    cmpl-float v9, v5, v9

    if-nez v9, :cond_7

    .line 229
    iget v2, p0, Lcom/wordloco/wordchallenge/c/i;->d:F

    iget v3, p0, Lcom/wordloco/wordchallenge/c/i;->e:F

    iget v4, p0, Lcom/wordloco/wordchallenge/c/i;->f:F

    iget v5, p0, Lcom/wordloco/wordchallenge/c/i;->g:F

    move-object/from16 v1, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 244
    :cond_2
    :goto_3
    return-void

    .line 201
    :cond_3
    cmpl-float v9, v7, v5

    if-nez v9, :cond_4

    .line 202
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3dcccccd    # 0.1f

    mul-float/2addr v9, v10

    sub-float/2addr v4, v9

    .line 203
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    add-float/2addr v3, v9

    .line 204
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3ecccccd    # 0.4f

    mul-float/2addr v9, v10

    add-float/2addr v1, v9

    move v11, v2

    move v2, v4

    move v4, v11

    .line 205
    goto :goto_2

    .line 206
    :cond_4
    cmpl-float v9, v8, v6

    if-nez v9, :cond_5

    .line 207
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3e19999a    # 0.15f

    mul-float/2addr v9, v10

    sub-float/2addr v3, v9

    .line 208
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3eb33333    # 0.35f

    mul-float/2addr v9, v10

    add-float/2addr v4, v9

    .line 209
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3eb33333    # 0.35f

    mul-float/2addr v9, v10

    add-float/2addr v2, v9

    move v11, v2

    move v2, v4

    move v4, v11

    .line 210
    goto :goto_2

    .line 211
    :cond_5
    sub-float v9, v5, v7

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v10, v6, v8

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    cmpl-float v9, v9, v10

    if-nez v9, :cond_6

    .line 214
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3e19999a    # 0.15f

    mul-float/2addr v9, v10

    sub-float/2addr v4, v9

    .line 215
    iget v9, p0, Lcom/wordloco/wordchallenge/c/i;->b:F

    const v10, 0x3e19999a    # 0.15f

    mul-float/2addr v9, v10

    sub-float/2addr v2, v9

    move v11, v2

    move v2, v4

    move v4, v11

    .line 216
    goto/16 :goto_2

    .line 217
    :cond_6
    const/4 v8, 0x0

    .line 218
    const/4 v7, 0x0

    .line 219
    const/4 v6, 0x0

    .line 220
    const/4 v5, 0x0

    move v11, v2

    move v2, v4

    move v4, v11

    goto/16 :goto_2

    .line 231
    :cond_7
    invoke-virtual {p0, v8, v2}, Lcom/wordloco/wordchallenge/c/i;->a(FF)F

    move-result v2

    .line 232
    invoke-virtual {p0, v7, v3}, Lcom/wordloco/wordchallenge/c/i;->a(FF)F

    move-result v3

    .line 233
    invoke-virtual {p0, v6, v4}, Lcom/wordloco/wordchallenge/c/i;->a(FF)F

    move-result v4

    .line 234
    invoke-virtual {p0, v5, v1}, Lcom/wordloco/wordchallenge/c/i;->a(FF)F

    move-result v5

    move-object/from16 v1, p5

    move-object/from16 v6, p6

    .line 236
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 237
    if-eqz p7, :cond_2

    .line 238
    iput v2, p0, Lcom/wordloco/wordchallenge/c/i;->d:F

    .line 239
    iput v3, p0, Lcom/wordloco/wordchallenge/c/i;->e:F

    .line 240
    iput v4, p0, Lcom/wordloco/wordchallenge/c/i;->f:F

    .line 241
    iput v5, p0, Lcom/wordloco/wordchallenge/c/i;->g:F

    goto/16 :goto_3

    :cond_8
    move/from16 v5, p4

    move v7, p2

    goto/16 :goto_1

    :cond_9
    move v6, p3

    move v8, p1

    goto/16 :goto_0
.end method
