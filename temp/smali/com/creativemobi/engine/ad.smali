.class public final Lcom/creativemobi/engine/ad;
.super Ljava/lang/Object;
.source "GarageView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# static fields
.field private static Y:I

.field static a:F

.field static b:F

.field static c:F


# instance fields
.field private A:I

.field private B:F

.field private C:I

.field private D:I

.field private E:Lcom/creativemobi/engine/m;

.field private F:Landroid/graphics/Paint;

.field private G:Landroid/graphics/Shader;

.field private H:Landroid/graphics/Shader;

.field private I:F

.field private J:F

.field private K:F

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:J

.field private Q:I

.field private R:[F

.field private S:Z

.field private T:I

.field private U:I

.field private V:I

.field private W:I

.field private X:Ljava/util/ArrayList;

.field private Z:Z

.field private aa:[Z

.field d:Lcom/creativemobi/engine/bl;

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:Lcom/creativemobi/engine/m;

.field private l:Lcom/creativemobi/engine/m;

.field private m:Landroid/graphics/Typeface;

.field private n:F

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:F

.field private t:[Z

.field private u:I

.field private v:I

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 26
    sput v0, Lcom/creativemobi/engine/ad;->a:F

    .line 27
    sput v0, Lcom/creativemobi/engine/ad;->b:F

    .line 28
    sput v0, Lcom/creativemobi/engine/ad;->c:F

    .line 1569
    const/16 v0, 0xa

    sput v0, Lcom/creativemobi/engine/ad;->Y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/16 v5, 0xc8

    const/4 v4, -0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v3, p0, Lcom/creativemobi/engine/ad;->e:F

    .line 31
    iput v2, p0, Lcom/creativemobi/engine/ad;->f:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/creativemobi/engine/ad;->g:I

    .line 37
    const/16 v0, 0x190

    iput v0, p0, Lcom/creativemobi/engine/ad;->h:I

    .line 38
    const/16 v0, 0x17c

    iput v0, p0, Lcom/creativemobi/engine/ad;->i:I

    .line 39
    const/16 v0, 0x9

    iput v0, p0, Lcom/creativemobi/engine/ad;->j:I

    .line 40
    iput-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    .line 41
    iput-object v1, p0, Lcom/creativemobi/engine/ad;->l:Lcom/creativemobi/engine/m;

    .line 44
    iput v3, p0, Lcom/creativemobi/engine/ad;->n:F

    .line 45
    iput-boolean v2, p0, Lcom/creativemobi/engine/ad;->o:Z

    .line 46
    iput-boolean v2, p0, Lcom/creativemobi/engine/ad;->p:Z

    .line 52
    iput-boolean v2, p0, Lcom/creativemobi/engine/ad;->q:Z

    .line 53
    iput-boolean v2, p0, Lcom/creativemobi/engine/ad;->r:Z

    .line 54
    iput v3, p0, Lcom/creativemobi/engine/ad;->s:F

    .line 55
    iput-object v1, p0, Lcom/creativemobi/engine/ad;->t:[Z

    .line 56
    iput v2, p0, Lcom/creativemobi/engine/ad;->u:I

    .line 57
    iput v2, p0, Lcom/creativemobi/engine/ad;->v:I

    .line 69
    iput-boolean v2, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 70
    iput-boolean v2, p0, Lcom/creativemobi/engine/ad;->x:Z

    .line 71
    iput-boolean v2, p0, Lcom/creativemobi/engine/ad;->y:Z

    .line 73
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/creativemobi/engine/ad;->z:J

    .line 74
    iput v2, p0, Lcom/creativemobi/engine/ad;->A:I

    .line 75
    iput v3, p0, Lcom/creativemobi/engine/ad;->B:F

    .line 520
    iput v2, p0, Lcom/creativemobi/engine/ad;->C:I

    .line 521
    iput v4, p0, Lcom/creativemobi/engine/ad;->D:I

    .line 932
    const/16 v0, 0x249

    iput v0, p0, Lcom/creativemobi/engine/ad;->L:I

    .line 933
    const/16 v0, 0xe1

    iput v0, p0, Lcom/creativemobi/engine/ad;->M:I

    .line 934
    const/16 v0, 0xbe

    iput v0, p0, Lcom/creativemobi/engine/ad;->N:I

    .line 935
    const/16 v0, 0xa8

    iput v0, p0, Lcom/creativemobi/engine/ad;->O:I

    .line 937
    iput v5, p0, Lcom/creativemobi/engine/ad;->Q:I

    .line 938
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    .line 1082
    iput v5, p0, Lcom/creativemobi/engine/ad;->T:I

    .line 1083
    const/16 v0, 0xe6

    iput v0, p0, Lcom/creativemobi/engine/ad;->U:I

    .line 1084
    const/16 v0, 0x195

    iput v0, p0, Lcom/creativemobi/engine/ad;->V:I

    .line 1277
    iput v4, p0, Lcom/creativemobi/engine/ad;->W:I

    .line 1568
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->X:Ljava/util/ArrayList;

    .line 1570
    iput-boolean v2, p0, Lcom/creativemobi/engine/ad;->Z:Z

    return-void
.end method

.method private a(Lcom/creativemobi/engine/w;Ljava/lang/String;IIFFFLjava/lang/String;)I
    .locals 15

    .prologue
    .line 1807
    new-instance v10, Lcom/creativemobi/engine/x;

    add-int/lit8 v4, p4, 0xe

    move-object v0, v10

    move-object/from16 v1, p8

    move/from16 v2, p3

    move v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1810
    const/16 v4, 0x10

    const v5, -0x141d33

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v10, v4, v5, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1811
    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1813
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1814
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1815
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1817
    cmpg-float v4, p5, p7

    if-gtz v4, :cond_0

    const v4, -0xe7cdb

    move v11, v4

    .line 1818
    :goto_0
    cmpl-float v4, p5, p7

    if-lez v4, :cond_1

    const v4, -0xe7cdb

    move v12, v4

    .line 1820
    :goto_1
    const/16 v4, 0xc

    .line 1821
    const/16 v5, 0xb

    .line 1823
    cmpl-float v6, p5, p7

    if-lez v6, :cond_2

    .line 1824
    const/16 v4, 0xb

    .line 1825
    const/16 v5, 0xc

    move v13, v5

    move v14, v4

    .line 1828
    :goto_2
    new-instance v4, Lcom/creativemobi/engine/cd;

    invoke-virtual/range {p1 .. p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v5

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    sub-int v7, v5, p3

    const/16 v8, 0x10

    const/4 v9, -0x1

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/creativemobi/engine/cd;-><init>(IIIII)V

    .line 1831
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1833
    new-instance v4, Lcom/creativemobi/engine/cd;

    invoke-virtual/range {p1 .. p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v5

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    const/16 v6, 0x3c

    sub-int/2addr v5, v6

    sub-int v5, v5, p3

    int-to-float v5, v5

    mul-float v5, v5, p5

    div-float v5, v5, p6

    float-to-int v5, v5

    add-int/lit8 v7, v5, 0x3c

    const/16 v8, 0x10

    move/from16 v5, p3

    move/from16 v6, p4

    move v9, v11

    invoke-direct/range {v4 .. v9}, Lcom/creativemobi/engine/cd;-><init>(IIIII)V

    .line 1834
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    invoke-virtual {v4, v14}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1836
    new-instance v4, Lcom/creativemobi/engine/cd;

    invoke-virtual/range {p1 .. p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v5

    const/16 v6, 0xa

    sub-int/2addr v5, v6

    const/16 v6, 0x3c

    sub-int/2addr v5, v6

    sub-int v5, v5, p3

    int-to-float v5, v5

    mul-float v5, v5, p7

    div-float v5, v5, p6

    float-to-int v5, v5

    add-int/lit8 v7, v5, 0x3c

    const/16 v8, 0x10

    move/from16 v5, p3

    move/from16 v6, p4

    move v9, v12

    invoke-direct/range {v4 .. v9}, Lcom/creativemobi/engine/cd;-><init>(IIIII)V

    .line 1837
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    invoke-virtual {v4, v13}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1839
    move/from16 v0, p3

    int-to-float v0, v0

    move v4, v0

    invoke-virtual {v10}, Lcom/creativemobi/engine/x;->a()F

    move-result v5

    add-float/2addr v4, v5

    const/high16 v5, 0x40a00000    # 5.0f

    add-float/2addr v4, v5

    float-to-int v4, v4

    return v4

    .line 1817
    :cond_0
    const v4, -0xea3401

    move v11, v4

    goto/16 :goto_0

    .line 1818
    :cond_1
    const v4, -0xea3401

    move v12, v4

    goto/16 :goto_1

    :cond_2
    move v13, v5

    move v14, v4

    goto/16 :goto_2
.end method

.method private a(Lcom/creativemobi/engine/w;FFZ)V
    .locals 6

    .prologue
    const/high16 v3, 0x44430000    # 780.0f

    const/high16 v5, 0x43b40000    # 360.0f

    const/high16 v1, 0x41200000    # 10.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 439
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->w:Z

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 441
    :cond_1
    const-string v0, "hue"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p4, :cond_7

    const-string v0, "cp_cursor"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 442
    :cond_2
    const/high16 v0, 0x41a00000    # 20.0f

    sub-float v0, p2, v0

    .line 443
    cmpg-float v1, v0, v2

    if-gez v1, :cond_3

    move v0, v2

    .line 444
    :cond_3
    cmpl-float v1, v0, v3

    if-lez v1, :cond_4

    move v0, v3

    .line 445
    :cond_4
    mul-float/2addr v0, v5

    const/high16 v1, 0x44480000    # 800.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/ad;->I:F

    .line 446
    if-nez p4, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/creativemobi/engine/ad;->P:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6

    .line 447
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/ad;->S:Z

    .line 448
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/creativemobi/engine/ad;->Q:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/creativemobi/engine/ad;->P:J

    .line 452
    :cond_6
    const-string v0, "cp_cursor"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ad;->I:F

    const/high16 v2, 0x44480000    # 800.0f

    mul-float/2addr v1, v2

    div-float/2addr v1, v5

    const/high16 v2, 0x42a40000    # 82.0f

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    goto :goto_0

    .line 453
    :cond_7
    const-string v0, "GRADIENT"

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 454
    iget v0, p0, Lcom/creativemobi/engine/ad;->L:I

    iget v1, p0, Lcom/creativemobi/engine/ad;->N:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_c

    iget v0, p0, Lcom/creativemobi/engine/ad;->L:I

    iget v1, p0, Lcom/creativemobi/engine/ad;->N:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    .line 455
    :goto_1
    iget v1, p0, Lcom/creativemobi/engine/ad;->L:I

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_8

    iget v0, p0, Lcom/creativemobi/engine/ad;->L:I

    int-to-float v0, v0

    .line 456
    :cond_8
    iget v1, p0, Lcom/creativemobi/engine/ad;->M:I

    iget v2, p0, Lcom/creativemobi/engine/ad;->O:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v1, p3, v1

    if-lez v1, :cond_b

    iget v1, p0, Lcom/creativemobi/engine/ad;->M:I

    iget v2, p0, Lcom/creativemobi/engine/ad;->O:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    .line 457
    :goto_2
    iget v2, p0, Lcom/creativemobi/engine/ad;->M:I

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gez v2, :cond_9

    iget v1, p0, Lcom/creativemobi/engine/ad;->M:I

    int-to-float v1, v1

    .line 459
    :cond_9
    iget v2, p0, Lcom/creativemobi/engine/ad;->L:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/creativemobi/engine/ad;->N:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    iput v0, p0, Lcom/creativemobi/engine/ad;->J:F

    .line 460
    iget v0, p0, Lcom/creativemobi/engine/ad;->M:I

    int-to-float v0, v0

    sub-float v0, v1, v0

    iget v1, p0, Lcom/creativemobi/engine/ad;->O:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    sub-float v0, v4, v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->K:F

    .line 463
    const-string v0, "cp_point"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ad;->L:I

    int-to-float v1, v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->J:F

    iget v3, p0, Lcom/creativemobi/engine/ad;->N:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x41600000    # 14.0f

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/creativemobi/engine/ad;->M:I

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/ad;->K:F

    sub-float v3, v4, v3

    iget v4, p0, Lcom/creativemobi/engine/ad;->O:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x41500000    # 13.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 466
    if-nez p4, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/creativemobi/engine/ad;->P:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 467
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/ad;->S:Z

    .line 468
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget v2, p0, Lcom/creativemobi/engine/ad;->Q:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/creativemobi/engine/ad;->P:J

    goto/16 :goto_0

    :cond_b
    move v1, p3

    goto :goto_2

    :cond_c
    move v0, p2

    goto :goto_1
.end method

.method private a(Lcom/creativemobi/engine/w;II)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x42a00000    # 80.0f

    const/4 v9, -0x1

    .line 1118
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1120
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "CONFIRMATION"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v2, v2, 0x23

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    sub-int/2addr v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1121
    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1122
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1124
    const-string v0, ""

    .line 1125
    if-lez p3, :cond_0

    const-string v0, "Tuning package for this car will cost you %1$d CREDITS and %2$d RESPECT POINTS. Are you sure?"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1128
    :cond_0
    new-instance v1, Lcom/creativemobi/engine/x;

    const/16 v2, 0x12c

    const/16 v3, 0xd2

    invoke-direct {v1, v0, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1129
    const/16 v2, 0x1c

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v9, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1131
    invoke-virtual {v1}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->V:I

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1133
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1134
    new-instance v3, Lcom/creativemobi/engine/x;

    iget v6, p0, Lcom/creativemobi/engine/ad;->T:I

    iget v7, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v7, v7, 0x28

    mul-int/lit8 v8, v2, 0x1e

    add-int/2addr v7, v8

    invoke-direct {v3, v0, v6, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1135
    const/16 v0, 0x1c

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0, v9, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1136
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1137
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1140
    :cond_1
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "YES"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1141
    const/16 v1, 0x2d

    const v2, -0x112555

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1142
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1144
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "NO"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit16 v2, v2, 0x10e

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1145
    const/16 v1, 0x2d

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1146
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1148
    const-string v1, "YES"

    iget v0, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1149
    const-string v1, "NO"

    iget v0, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit16 v0, v0, 0x104

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1150
    return-void
.end method

.method private a(Lcom/creativemobi/engine/w;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/16 v7, 0x1a

    .line 1153
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, ""

    const/16 v2, 0x12c

    const/16 v3, 0xd2

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1154
    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1156
    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ad;->V:I

    invoke-static {p2, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1157
    const/4 v1, 0x0

    .line 1158
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1159
    new-instance v3, Lcom/creativemobi/engine/x;

    iget v4, p0, Lcom/creativemobi/engine/ad;->T:I

    iget v5, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v5, v5, 0x52

    mul-int/lit8 v6, v1, 0x1e

    add-int/2addr v5, v6

    invoke-direct {v3, v0, v4, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1160
    const v0, -0x112555

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7, v0, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1161
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1162
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 1164
    :cond_0
    return-void
.end method

.method private a(Lcom/creativemobi/engine/w;Ljava/lang/String;I)V
    .locals 10

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x42a00000    # 80.0f

    const/4 v9, -0x1

    .line 1211
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1213
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "SELLING CAR"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v2, v2, 0x23

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    sub-int/2addr v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1214
    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1215
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1217
    const-string v0, "Do you really want to sell %1$s for %2$d CREDITS?"

    new-array v1, v8, [Ljava/lang/Object;

    aput-object p2, v1, v7

    const/4 v2, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1219
    new-instance v1, Lcom/creativemobi/engine/x;

    const/16 v2, 0x12c

    const/16 v3, 0xd2

    invoke-direct {v1, v0, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1220
    const/16 v2, 0x1c

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v9, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1222
    invoke-virtual {v1}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->V:I

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1224
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1225
    new-instance v3, Lcom/creativemobi/engine/x;

    iget v6, p0, Lcom/creativemobi/engine/ad;->T:I

    iget v7, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v7, v7, 0x28

    mul-int/lit8 v8, v2, 0x1e

    add-int/2addr v7, v8

    invoke-direct {v3, v0, v6, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1226
    const/16 v0, 0x1c

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0, v9, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1227
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1228
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1231
    :cond_0
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "YES"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1232
    const/16 v1, 0x2d

    const v2, -0x112555

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1233
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1235
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "NO"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit16 v2, v2, 0x10e

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1236
    const/16 v1, 0x2d

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1237
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1239
    const-string v1, "YES"

    iget v0, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1240
    const-string v1, "NO"

    iget v0, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit16 v0, v0, 0x104

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1241
    return-void
.end method

.method private a(Lcom/creativemobi/engine/w;Ljava/lang/String;Z)V
    .locals 12

    .prologue
    const/16 v11, 0x1c

    const/high16 v10, -0x10000

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x42a00000    # 80.0f

    const/4 v9, -0x1

    .line 1087
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1089
    new-instance v0, Lcom/creativemobi/engine/x;

    if-eqz p3, :cond_0

    const-string v1, "WARNING"

    :goto_0
    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v2, v2, 0x23

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    const/4 v6, 0x2

    sub-int/2addr v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1090
    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1091
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1093
    new-instance v0, Lcom/creativemobi/engine/x;

    const/16 v1, 0x12c

    const/16 v2, 0xd2

    invoke-direct {v0, p2, v1, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1094
    if-eqz p3, :cond_1

    move v1, v10

    :goto_1
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1096
    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ad;->V:I

    invoke-static {p2, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1097
    const/4 v1, 0x0

    .line 1098
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1099
    new-instance v3, Lcom/creativemobi/engine/x;

    iget v6, p0, Lcom/creativemobi/engine/ad;->T:I

    iget v7, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v7, v7, 0x28

    mul-int/lit8 v8, v1, 0x1e

    add-int/2addr v7, v8

    invoke-direct {v3, v0, v6, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1100
    if-eqz p3, :cond_2

    move v0, v10

    :goto_3
    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v3, v11, v0, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1101
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1102
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 1089
    :cond_0
    const-string v1, "CONFIRMATION"

    goto :goto_0

    :cond_1
    move v1, v9

    .line 1094
    goto :goto_1

    :cond_2
    move v0, v9

    .line 1100
    goto :goto_3

    .line 1105
    :cond_3
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "YES"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1106
    const/16 v1, 0x2d

    const v2, -0x112555

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1107
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1109
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "NO"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit16 v2, v2, 0x10e

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1110
    const/16 v1, 0x2d

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1111
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1113
    const-string v1, "YES"

    iget v0, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1114
    const-string v1, "NO"

    iget v0, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit16 v0, v0, 0x104

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1115
    return-void
.end method

.method private a(Lcom/creativemobi/engine/w;Z)V
    .locals 9

    .prologue
    const/16 v8, 0x50

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x5

    .line 816
    move v0, v6

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_4

    .line 817
    if-eqz p2, :cond_0

    .line 818
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 819
    iget v1, p0, Lcom/creativemobi/engine/ad;->D:I

    if-eq v0, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frame"

    mul-int/lit16 v3, v0, 0xdb

    invoke-virtual {p1, v1, v2, v3, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 823
    :cond_0
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgrades"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xdb

    add-int/lit8 v2, v2, 0x6e

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v2, v3

    const/high16 v3, 0x42ac0000    # 86.0f

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 824
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    mul-int/lit16 v2, v0, 0xdb

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v2, v3

    const/high16 v3, 0x42a00000    # 80.0f

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 825
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-eqz v1, :cond_3

    move v1, v6

    :goto_2
    if-ge v1, v5, :cond_3

    .line 826
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->a:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade_bar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    mul-int/lit16 v3, v0, 0xdb

    add-int/lit16 v3, v3, 0xc3

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v3, v4

    sub-int v4, v5, v1

    mul-int/lit8 v4, v4, 0xf

    add-int/lit8 v4, v4, 0x50

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 825
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 820
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frameHL"

    mul-int/lit16 v3, v0, 0xdb

    invoke-virtual {p1, v1, v2, v3, v8}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/creativemobi/engine/cd;->a(I)V

    goto/16 :goto_1

    .line 828
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade_bar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    mul-int/lit16 v3, v0, 0xdb

    add-int/lit16 v3, v3, 0xc3

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v3, v4

    sub-int v4, v5, v1

    mul-int/lit8 v4, v4, 0xf

    add-int/lit8 v4, v4, 0x50

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Lcom/creativemobi/engine/cd;->b(FF)V

    goto :goto_3

    .line 816
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 831
    :cond_4
    return-void
.end method

.method private b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;
    .locals 1

    .prologue
    .line 487
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0, p1, p2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v3, 0x3fa00000    # 1.25f

    .line 420
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ad;->c(I)Lcom/creativemobi/engine/cg;

    move-result-object v0

    .line 421
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cg;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 422
    iget v1, v0, Lcom/creativemobi/engine/cg;->g:F

    mul-float/2addr v1, v4

    div-float/2addr v1, v3

    float-to-int v1, v1

    iget v2, v0, Lcom/creativemobi/engine/cg;->h:F

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    iget v0, v0, Lcom/creativemobi/engine/cg;->i:F

    mul-float/2addr v0, v4

    div-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v1, v2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->R:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 424
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    aget v0, v0, v5

    iput v0, p0, Lcom/creativemobi/engine/ad;->I:F

    .line 425
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    aget v0, v0, v6

    iput v0, p0, Lcom/creativemobi/engine/ad;->J:F

    .line 426
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    aget v0, v0, v7

    iput v0, p0, Lcom/creativemobi/engine/ad;->K:F

    .line 436
    :goto_0
    return-void

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->P()F

    move-result v0

    mul-float/2addr v0, v4

    div-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->Q()F

    move-result v1

    mul-float/2addr v1, v4

    div-float/2addr v1, v3

    float-to-int v1, v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->R()F

    move-result v2

    mul-float/2addr v2, v4

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->R:[F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 432
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    aget v0, v0, v5

    iput v0, p0, Lcom/creativemobi/engine/ad;->I:F

    .line 433
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    aget v0, v0, v6

    iput v0, p0, Lcom/creativemobi/engine/ad;->J:F

    .line 434
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    aget v0, v0, v7

    iput v0, p0, Lcom/creativemobi/engine/ad;->K:F

    goto :goto_0
.end method

.method private b(Lcom/creativemobi/engine/w;)V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/16 v8, 0x140

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    .line 728
    const-string v0, "race_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "race_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 729
    :cond_0
    const-string v0, "tune_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, "tune_button"

    const-string v1, "tune_button"

    const/16 v2, 0x14a

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x39

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 732
    :goto_0
    const-string v0, "stat1"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_1

    .line 733
    const-string v0, "stat1"

    const-string v1, "stats"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x45

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 734
    const-string v0, "stat1"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 735
    const-string v0, "stat1"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 737
    const-string v0, "stat2"

    const-string v1, "stats"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x2f

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 738
    const-string v0, "stat2"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 739
    const-string v0, "stat2"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 741
    const-string v0, "stat3"

    const-string v1, "stats"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v8

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x19

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 742
    const-string v0, "stat3"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 743
    const-string v0, "stat3"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 745
    const-string v0, "bar_edge_lt1"

    const-string v1, "bar_edge_lt"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x53

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x45

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 746
    const-string v0, "bar_edge_lt2"

    const-string v1, "bar_edge_lt"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x53

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x2f

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 747
    const-string v0, "bar_edge_lt3"

    const-string v1, "bar_edge_lt"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v8

    add-int/lit8 v2, v2, 0x53

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x19

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 749
    const-string v0, "infinity"

    const-string v1, "infinity"

    const/16 v2, 0x3b

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x77

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 750
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 753
    const-string v0, "overlay_r"

    const-string v1, "overlay"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0x64

    sub-int/2addr v2, v3

    const/16 v3, 0x4b

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 755
    const-string v0, "overlay_l"

    const-string v1, "overlay"

    const/16 v2, 0x4b

    invoke-virtual {p1, v0, v1, v7, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 756
    const-string v0, "overlay_l"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(F)V

    .line 758
    const-string v0, "line_bottom"

    const-string v1, "line"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v2

    const/16 v3, 0x5a

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v7, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 761
    :cond_1
    const-string v0, "garage"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "garage"

    const-string v1, "garage"

    invoke-virtual {p1, v0, v1, v7, v7}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 763
    :cond_2
    const-string v0, "sell_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_3

    .line 764
    const-string v0, "sell_button"

    const-string v1, "remove"

    const/16 v2, 0x87

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x39

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 767
    :cond_3
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_4

    .line 768
    const-string v0, "upgrade_frame"

    const-string v1, "upgrade_frame"

    const/16 v2, 0x190

    const/16 v3, 0xb0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 769
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 770
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 773
    :cond_4
    const-string v0, "buy"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_5

    .line 774
    const-string v0, "buy"

    const-string v1, "buy"

    const/16 v2, 0x14

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x37

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 777
    :cond_5
    const-string v0, "upgrade"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_6

    .line 778
    const-string v0, "upgrade"

    const-string v1, "upgrade"

    const/16 v2, 0x27d

    const/16 v3, 0x10

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 781
    :cond_6
    const-string v0, "line"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_7

    .line 782
    const-string v0, "line"

    const-string v1, "line"

    const/16 v2, 0x3c

    invoke-virtual {p1, v0, v1, v7, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 784
    :cond_7
    const-string v0, "upgrades0"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_c

    move v0, v7

    .line 785
    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_c

    .line 786
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upgrades"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "upgrades"

    mul-int/lit16 v3, v0, 0xdb

    add-int/lit8 v3, v3, 0x6e

    const/16 v4, 0x56

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 787
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->k()V

    .line 788
    invoke-virtual {v1, v9, v6}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 789
    invoke-virtual {v1, v0}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 790
    iget v1, p0, Lcom/creativemobi/engine/ad;->D:I

    if-eq v0, v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frame"

    mul-int/lit16 v3, v0, 0xdb

    const/16 v4, 0x50

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    :goto_2
    move v1, v7

    .line 792
    :goto_3
    const/4 v2, 0x5

    if-ge v1, v2, :cond_b

    .line 793
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->a:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade_bar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgrade_bar_filled"

    mul-int/lit16 v4, v0, 0xdb

    add-int/lit16 v4, v4, 0xc3

    const/4 v5, 0x5

    sub-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x50

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 792
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 730
    :cond_8
    const-string v0, "tune_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(Z)V

    goto/16 :goto_0

    .line 791
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frameHL"

    mul-int/lit16 v3, v0, 0xdb

    const/16 v4, 0x50

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    goto :goto_2

    .line 795
    :cond_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade_bar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgrade_bar_empty"

    mul-int/lit16 v4, v0, 0xdb

    add-int/lit16 v4, v4, 0xc3

    const/4 v5, 0x5

    sub-int/2addr v5, v1

    mul-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x50

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    goto :goto_4

    .line 785
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 799
    :cond_c
    return-void
.end method

.method private b(Lcom/creativemobi/engine/w;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/16 v10, 0x2d

    const/4 v7, 0x0

    const/4 v9, -0x1

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x42a00000    # 80.0f

    .line 1167
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1169
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "NOT ENOUGH MONEY"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v2, v2, 0x23

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    const/4 v6, 0x2

    sub-int/2addr v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1170
    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1171
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1174
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "You don\'t have enough cash to buy %1$s "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1177
    :goto_0
    new-instance v1, Lcom/creativemobi/engine/x;

    const/16 v2, 0x12c

    const/16 v3, 0xd2

    invoke-direct {v1, v0, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1178
    const/16 v2, 0x1c

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v9, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1180
    invoke-virtual {v1}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->V:I

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1182
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1183
    new-instance v3, Lcom/creativemobi/engine/x;

    iget v6, p0, Lcom/creativemobi/engine/ad;->T:I

    iget v7, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v7, v7, 0x28

    mul-int/lit8 v8, v2, 0x1e

    add-int/2addr v7, v8

    invoke-direct {v3, v0, v6, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1184
    const/16 v0, 0x1c

    sget-object v6, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v7, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v3, v0, v9, v6, v7}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1185
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1186
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 1175
    :cond_0
    const-string v0, "You don\'t have enough cash or respect to buy %1$s "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v7

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1189
    :cond_1
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1190
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "OK"

    const/16 v2, 0x172

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1191
    const v1, -0x112555

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1192
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1194
    const-string v1, "OK"

    const/high16 v2, 0x43b40000    # 360.0f

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1208
    :goto_2
    return-void

    .line 1196
    :cond_2
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "OK"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1197
    const v1, -0x112555

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v10, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1198
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1200
    const-string v1, "OK"

    iget v0, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1202
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "GET RP"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit16 v2, v2, 0xfa

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1203
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v10, v9, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1204
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1206
    const-string v1, "get_money"

    iget v0, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit16 v0, v0, 0xf0

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    goto :goto_2
.end method

.method private b(I)Z
    .locals 2

    .prologue
    .line 1647
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/engine/cg;

    .line 1648
    iget v1, p0, Lcom/creativemobi/engine/cg;->a:I

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    .line 1650
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)Lcom/creativemobi/engine/cg;
    .locals 2

    .prologue
    .line 1654
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/creativemobi/engine/cg;

    .line 1655
    iget v1, p0, Lcom/creativemobi/engine/cg;->a:I

    if-ne v1, p1, :cond_0

    move-object v0, p0

    .line 1657
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c()Ljava/lang/String;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 1531
    const-string v0, "ALL CARS"

    move v2, v1

    move v3, v1

    move v4, v1

    .line 1536
    :goto_0
    iget-object v5, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    array-length v5, v5

    if-ge v1, v5, :cond_3

    .line 1537
    iget-object v5, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    aget-boolean v5, v5, v1

    if-eqz v5, :cond_2

    .line 1538
    if-nez v4, :cond_0

    move v3, v1

    .line 1539
    :cond_0
    sget v4, Lcom/creativemobi/engine/ad;->Y:I

    if-ge v1, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    move v4, v6

    .line 1536
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1544
    :cond_3
    if-eqz v4, :cond_4

    .line 1545
    sget v0, Lcom/creativemobi/engine/ad;->Y:I

    if-ne v3, v0, :cond_5

    const-string v0, "MY CARS"

    .line 1565
    :cond_4
    :goto_1
    return-object v0

    .line 1547
    :cond_5
    if-ne v2, v6, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LEVEL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1549
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LEVELS "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1551
    add-int/lit8 v1, v3, 0x1

    move-object v2, v0

    move v0, v6

    :goto_2
    sget v3, Lcom/creativemobi/engine/ad;->Y:I

    if-ge v1, v3, :cond_9

    .line 1553
    iget-object v3, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_8

    .line 1554
    const/4 v3, 0x2

    if-le v0, v3, :cond_7

    .line 1555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 1558
    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1559
    add-int/lit8 v0, v0, 0x1

    .line 1551
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_9
    move-object v0, v2

    goto :goto_1
.end method

.method private c(Lcom/creativemobi/engine/w;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x5

    .line 802
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-nez v0, :cond_1

    .line 813
    :cond_0
    return-void

    .line 803
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/ad;->q:Z

    move v0, v7

    .line 805
    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    move v1, v7

    .line 806
    :goto_1
    if-ge v1, v6, :cond_3

    .line 807
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade_bar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 808
    add-int/lit8 v2, v1, 0x1

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->a:[I

    aget v3, v3, v0

    if-ge v2, v3, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade_bar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgrade_bar_filled"

    mul-int/lit16 v4, v0, 0xdb

    add-int/lit16 v4, v4, 0xc3

    sub-int v5, v6, v1

    mul-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x50

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 806
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 810
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "upgrade_bar"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgrade_bar_empty"

    mul-int/lit16 v4, v0, 0xdb

    add-int/lit16 v4, v4, 0xc3

    sub-int v5, v6, v1

    mul-int/lit8 v5, v5, 0xf

    add-int/lit8 v5, v5, 0x50

    invoke-virtual {p1, v2, v3, v4, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    goto :goto_2

    .line 805
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private c(Lcom/creativemobi/engine/w;FF)V
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1843
    const-string v6, "lbar"

    .line 1848
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1849
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1850
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1852
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->w:Z

    if-eqz v0, :cond_0

    .line 1861
    :goto_0
    return-void

    .line 1856
    :cond_0
    new-instance v0, Lcom/creativemobi/engine/cd;

    const/16 v1, 0x140

    const/16 v2, 0xdf

    const/16 v3, 0xa0

    const/4 v4, 0x5

    const v5, -0x112555

    invoke-direct/range {v0 .. v5}, Lcom/creativemobi/engine/cd;-><init>(IIIII)V

    .line 1857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1859
    new-instance v0, Lcom/creativemobi/engine/cd;

    const/16 v1, 0x141

    const/16 v2, 0xe0

    const/high16 v3, 0x431e0000    # 158.0f

    mul-float/2addr v3, p2

    div-float/2addr v3, p3

    float-to-int v3, v3

    const v5, -0xe7cdb

    move v4, v9

    invoke-direct/range {v0 .. v5}, Lcom/creativemobi/engine/cd;-><init>(IIIII)V

    .line 1860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    goto :goto_0
.end method

.method private c(Lcom/creativemobi/engine/w;I)V
    .locals 1

    .prologue
    .line 491
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    .line 492
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->i()V

    .line 493
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    .line 494
    iput p2, p0, Lcom/creativemobi/engine/ad;->g:I

    .line 495
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/ad;->o:Z

    .line 496
    return-void
.end method

.method private d()I
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 1973
    sget v0, Lcom/creativemobi/engine/ad;->Y:I

    shl-int v0, v6, v0

    or-int/lit8 v1, v0, 0x1

    .line 1975
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->d()Ljava/util/ArrayList;

    move-result-object v0

    .line 1977
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 1978
    const/4 v2, 0x0

    .line 1979
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 1980
    iget-object v4, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    const/4 v5, 0x0

    iget v0, v0, Lcom/creativemobi/engine/cg;->a:I

    invoke-interface {v4, v5, v0}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    .line 1981
    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->x()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->x()I

    move-result v0

    :goto_1
    move v2, v0

    .line 1982
    goto :goto_0

    .line 1983
    :cond_0
    shl-int v0, v6, v2

    sget v1, Lcom/creativemobi/engine/ad;->Y:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    shl-int v1, v6, v1

    or-int/2addr v0, v1

    .line 1988
    :goto_2
    return v0

    .line 1985
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    goto :goto_1
.end method

.method private d(I)Lcom/creativemobi/engine/m;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1661
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->d()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 1662
    iget v2, v0, Lcom/creativemobi/engine/cg;->a:I

    if-ne v2, p1, :cond_0

    .line 1664
    :try_start_0
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    const/4 v3, 0x0

    invoke-interface {v2, v3, p1}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v2

    .line 1665
    invoke-virtual {v0}, Lcom/creativemobi/engine/cg;->b()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/m;->a([I)V

    .line 1666
    invoke-virtual {v0}, Lcom/creativemobi/engine/cg;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1667
    iget v3, v0, Lcom/creativemobi/engine/cg;->g:F

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/m;->c(F)V

    .line 1668
    iget v3, v0, Lcom/creativemobi/engine/cg;->h:F

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/m;->d(F)V

    .line 1669
    iget v0, v0, Lcom/creativemobi/engine/cg;->i:F

    invoke-virtual {v2, v0}, Lcom/creativemobi/engine/m;->e(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move-object v0, v2

    .line 1677
    :goto_1
    return-object v0

    .line 1672
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 1677
    goto :goto_1
.end method

.method private d(Lcom/creativemobi/engine/w;)V
    .locals 10

    .prologue
    const/16 v9, 0x140

    const/16 v8, 0x37

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    .line 834
    const-string v0, "overlay_r"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_0

    .line 835
    const-string v0, "stat1"

    const-string v1, "stats"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x45

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 836
    const-string v0, "stat1"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 837
    const-string v0, "stat1"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 839
    const-string v0, "stat2"

    const-string v1, "stats"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x2f

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 840
    const-string v0, "stat2"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 841
    const-string v0, "stat2"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 843
    const-string v0, "stat3"

    const-string v1, "stats"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x19

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 844
    const-string v0, "stat3"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7, v5}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 845
    const-string v0, "stat3"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->c(I)V

    .line 848
    const-string v0, "overlay_r"

    const-string v1, "overlay"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0x64

    sub-int/2addr v2, v3

    const/16 v3, 0x4b

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 850
    const-string v0, "overlay_l"

    const-string v1, "overlay"

    const/16 v2, 0x4b

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 851
    const-string v0, "overlay_l"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(F)V

    .line 853
    const-string v0, "line_bottom"

    const-string v1, "line"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v2

    const/16 v3, 0x5d

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 855
    const-string v0, "bar_edge_lt1"

    const-string v1, "bar_edge_lt"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x53

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x45

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 856
    const-string v0, "bar_edge_lt2"

    const-string v1, "bar_edge_lt"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x53

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x2f

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 857
    const-string v0, "bar_edge_lt3"

    const-string v1, "bar_edge_lt"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    sub-int/2addr v2, v9

    add-int/lit8 v2, v2, 0x53

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x19

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 859
    const-string v0, "infinity"

    const-string v1, "infinity"

    const/16 v2, 0x3b

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x77

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 860
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 863
    :cond_0
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->Z:Z

    if-nez v0, :cond_1

    const-string v0, "dropdown"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "dropdown"

    const-string v1, "dropdown"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0xdc

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x7d

    sub-int/2addr v3, v4

    const/16 v4, 0x1b

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 866
    :cond_1
    const-string v0, "test_drive"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, "test_drive"

    const-string v1, "test_drive"

    const/16 v2, 0x78

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 868
    :cond_2
    const-string v0, "tune_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "race_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 869
    :cond_3
    const-string v0, "race_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "race_button"

    const-string v1, "race_button"

    const/16 v2, 0x17c

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 872
    :goto_0
    const-string v0, "garage"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, "garage"

    const-string v1, "garage"

    invoke-virtual {p1, v0, v1, v6, v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 874
    :cond_4
    const-string v0, "buy"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_5

    .line 875
    const-string v0, "buy"

    const-string v1, "buy"

    const/16 v2, 0x14

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 878
    :cond_5
    const-string v0, "sell"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_6

    .line 879
    const-string v0, "sell"

    const-string v1, "sell"

    const/16 v2, 0x14

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 882
    :cond_6
    const-string v0, "upgrade"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_7

    .line 883
    const-string v0, "upgrade"

    const-string v1, "upgrade"

    const/16 v2, 0x6e

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 886
    :cond_7
    const-string v0, "paint"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_8

    .line 887
    const-string v0, "paint"

    const-string v1, "paint"

    const/16 v2, 0x10e

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    sub-int/2addr v3, v8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 890
    :cond_8
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_9

    .line 891
    const-string v0, "upgrade_frame"

    const-string v1, "upgrade_frame"

    const/16 v2, 0x190

    const/16 v3, 0xb0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 892
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 893
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 894
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 897
    :cond_9
    const-string v0, "header"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_a

    .line 898
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

    .line 901
    :cond_a
    const-string v0, "line"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_b

    .line 902
    const-string v0, "line"

    const-string v1, "line"

    const/16 v2, 0x3c

    invoke-virtual {p1, v0, v1, v6, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 905
    :cond_b
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ad;->b(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 906
    const-string v0, "buy"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 907
    const-string v0, "sell"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 908
    const-string v0, "upgrade"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 909
    const-string v0, "paint"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 910
    const-string v0, "race_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 911
    const-string v0, "test_drive"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 922
    :cond_c
    :goto_1
    return-void

    .line 870
    :cond_d
    const-string v0, "race_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->a(Z)V

    goto/16 :goto_0

    .line 913
    :cond_e
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->z()I

    move-result v0

    iget v1, p0, Lcom/creativemobi/engine/ad;->u:I

    if-gt v0, v1, :cond_f

    .line 914
    const-string v0, "test_drive"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 916
    :goto_2
    const-string v0, "sell"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 917
    const-string v0, "buy"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 918
    const-string v0, "upgrade"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 919
    const-string v0, "paint"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 920
    const-string v0, "race_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    goto :goto_1

    .line 915
    :cond_f
    const-string v0, "test_drive"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private e()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 1992
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "GARAGE_FILTER"

    invoke-direct {p0}, Lcom/creativemobi/engine/ad;->d()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    .line 1994
    sget v1, Lcom/creativemobi/engine/ad;->Y:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    move v1, v6

    .line 1995
    :goto_0
    sget v2, Lcom/creativemobi/engine/ad;->Y:I

    if-gt v1, v2, :cond_1

    .line 1996
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    shl-int v3, v4, v1

    and-int/2addr v3, v0

    if-eqz v3, :cond_0

    move v3, v4

    :goto_1
    aput-boolean v3, v2, v1

    .line 1995
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v3, v6

    .line 1996
    goto :goto_1

    :cond_1
    move v0, v6

    .line 1999
    :goto_2
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_e

    .line 2000
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    aget-boolean v1, v1, v0

    if-ne v1, v4, :cond_2

    move v0, v4

    .line 2006
    :goto_3
    if-nez v0, :cond_3

    move v0, v6

    .line 2007
    :goto_4
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->t:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_6

    .line 2008
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->t:[Z

    aput-boolean v4, v1, v0

    .line 2007
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1999
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 2011
    :cond_3
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v0

    .line 2012
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/m;

    .line 2013
    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->x()I

    move-result v2

    .line 2014
    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/creativemobi/engine/ad;->b(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 2015
    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/creativemobi/engine/ad;->d(I)Lcom/creativemobi/engine/m;

    move-result-object v2

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->x()I

    move-result v2

    .line 2018
    :cond_5
    iget-object v3, p0, Lcom/creativemobi/engine/ad;->t:[Z

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v4

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    aget-boolean v2, v5, v2

    aput-boolean v2, v3, v4

    .line 2019
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->t:[Z

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v3

    aget-boolean v2, v2, v3

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    sget v3, Lcom/creativemobi/engine/ad;->Y:I

    aget-boolean v2, v2, v3

    if-eqz v2, :cond_4

    .line 2020
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->t:[Z

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v3

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ad;->b(I)Z

    move-result v0

    aput-boolean v0, v2, v3

    goto :goto_5

    .line 2024
    :cond_6
    iput v6, p0, Lcom/creativemobi/engine/ad;->f:I

    move v0, v6

    .line 2025
    :goto_6
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->t:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 2026
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->t:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/creativemobi/engine/ad;->f:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/creativemobi/engine/ad;->f:I

    .line 2025
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 2028
    :cond_8
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SELECTED_CAR_IDX"

    iget v2, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->j:I

    .line 2029
    iget v0, p0, Lcom/creativemobi/engine/ad;->j:I

    if-gez v0, :cond_9

    iput v6, p0, Lcom/creativemobi/engine/ad;->j:I

    .line 2031
    :cond_9
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->t:[Z

    iget v1, p0, Lcom/creativemobi/engine/ad;->j:I

    aget-boolean v0, v0, v1

    if-nez v0, :cond_a

    move v0, v6

    .line 2032
    :goto_7
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->t:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_a

    .line 2033
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->t:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_c

    .line 2034
    iput v0, p0, Lcom/creativemobi/engine/ad;->j:I

    :cond_a
    move v0, v6

    move v1, v6

    .line 2041
    :goto_8
    iget v2, p0, Lcom/creativemobi/engine/ad;->j:I

    if-gt v0, v2, :cond_d

    .line 2042
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->t:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_b

    add-int/lit8 v1, v1, 0x1

    .line 2041
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 2032
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 2044
    :cond_d
    mul-int/lit16 v0, v1, -0xdc

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->n:F

    .line 2045
    return-void

    :cond_e
    move v0, v6

    goto/16 :goto_3
.end method

.method private e(Lcom/creativemobi/engine/w;)V
    .locals 11

    .prologue
    const/16 v10, 0x1c

    const/4 v7, 0x0

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x42a00000    # 80.0f

    const/4 v9, -0x1

    .line 1245
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1247
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "DOWNGRADE"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v2, v2, 0x23

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    const/4 v6, 0x2

    sub-int/2addr v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1248
    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1249
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1251
    const-string v0, "Are you sure you want to remove this upgrade? Money and RP spent on upgrade won\'t be refunded!"

    new-array v1, v7, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1253
    new-instance v1, Lcom/creativemobi/engine/x;

    const/16 v2, 0x12c

    const/16 v3, 0xd2

    invoke-direct {v1, v0, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1254
    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v1, v10, v9, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1256
    invoke-virtual {v1}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->V:I

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1258
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v7

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1259
    new-instance v3, Lcom/creativemobi/engine/x;

    iget v6, p0, Lcom/creativemobi/engine/ad;->T:I

    iget v7, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v7, v7, 0x28

    mul-int/lit8 v8, v2, 0x1e

    add-int/2addr v7, v8

    invoke-direct {v3, v0, v6, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1260
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v3, v10, v9, v0, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1261
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1262
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1265
    :cond_0
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "YES"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1266
    const/16 v1, 0x2d

    const v2, -0x112555

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1267
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1269
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "NO"

    iget v2, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit16 v2, v2, 0x10e

    iget v3, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1270
    const/16 v1, 0x2d

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v9, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1271
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1273
    const-string v1, "YES"

    iget v0, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1274
    const-string v1, "NO"

    iget v0, p0, Lcom/creativemobi/engine/ad;->T:I

    add-int/lit16 v0, v0, 0x104

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ad;->U:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1275
    return-void
.end method

.method private f(Lcom/creativemobi/engine/w;)V
    .locals 9

    .prologue
    const/16 v8, 0x2d

    const/4 v7, -0x1

    const/4 v5, 0x0

    .line 1574
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->Z:Z

    if-nez v0, :cond_0

    .line 1616
    :goto_0
    return-void

    .line 1575
    :cond_0
    const-string v0, "frame_funds"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v0, "frame_funds"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1576
    :cond_1
    const-string v0, "dropdown"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v0, "dropdown"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1578
    :cond_2
    const-string v0, "selectionLevel"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_6

    .line 1582
    const-string v0, "selectionLevel"

    const-string v1, "upgrade_frame"

    const/16 v2, 0x190

    const/16 v3, 0x41

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 1583
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1584
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 1585
    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->b(F)V

    move v0, v5

    .line 1587
    :goto_1
    sget v1, Lcom/creativemobi/engine/ad;->Y:I

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_4

    .line 1588
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frameHL"

    rem-int/lit8 v3, v0, 0x4

    mul-int/lit16 v3, v3, 0x99

    add-int/lit8 v3, v3, 0x64

    div-int/lit8 v4, v0, 0x4

    mul-int/lit8 v4, v4, 0x4a

    add-int/lit16 v4, v4, 0xa5

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 1590
    :goto_2
    const v2, 0x3f266666    # 0.65f

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 1591
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1587
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1589
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "frame"

    rem-int/lit8 v3, v0, 0x4

    mul-int/lit16 v3, v3, 0x99

    add-int/lit8 v3, v3, 0x64

    div-int/lit8 v4, v0, 0x4

    mul-int/lit8 v4, v4, 0x4a

    add-int/lit16 v4, v4, 0xa5

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    goto :goto_2

    .line 1593
    :cond_4
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v5

    .line 1594
    :goto_3
    sget v1, Lcom/creativemobi/engine/ad;->Y:I

    if-ge v0, v1, :cond_5

    .line 1595
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->X:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEVEL"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1594
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1596
    :cond_5
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->X:Ljava/util/ArrayList;

    const-string v1, "MY CARS"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move v6, v5

    .line 1599
    :goto_4
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_7

    .line 1600
    new-instance v1, Lcom/creativemobi/engine/x;

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    rem-int/lit8 v2, v6, 0x4

    mul-int/lit16 v2, v2, 0x99

    add-int/lit8 v2, v2, 0x64

    add-int/lit8 v2, v2, 0x47

    div-int/lit8 v3, v6, 0x4

    mul-int/lit8 v3, v3, 0x4a

    add-int/lit16 v3, v3, 0xd1

    invoke-direct {v1, v0, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1601
    const/16 v0, 0x1e

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v7, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1602
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1604
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    rem-int/lit8 v0, v6, 0x4

    mul-int/lit16 v0, v0, 0x99

    add-int/lit8 v0, v0, 0x64

    int-to-float v2, v0

    div-int/lit8 v0, v6, 0x4

    mul-int/lit8 v0, v0, 0x4a

    add-int/lit16 v0, v0, 0xa5

    int-to-float v3, v0

    const/high16 v4, 0x43190000    # 153.0f

    const/high16 v5, 0x42940000    # 74.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 1599
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    .line 1607
    :cond_7
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "FILTER CARS"

    const/16 v2, 0x9b

    const/16 v3, 0x8c

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1608
    const/high16 v1, -0x1000000

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v8, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1609
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1611
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "OK"

    const/16 v2, 0x275

    const/16 v3, 0x16b

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1612
    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v8, v7, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1613
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1615
    const-string v1, "OK"

    const v2, 0x4415c000    # 599.0f

    const v3, 0x439c8000    # 313.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x42a00000    # 80.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    goto/16 :goto_0
.end method

.method private g(Lcom/creativemobi/engine/w;)V
    .locals 8

    .prologue
    const/16 v7, 0x7d

    const/16 v6, 0x1b

    const/16 v5, 0x13

    .line 1623
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->Z:Z

    if-eqz v0, :cond_0

    .line 1624
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 1644
    :goto_0
    return-void

    .line 1628
    :cond_0
    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1631
    :goto_1
    const-string v0, "frame_funds"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "frame_funds"

    const-string v1, "frame_funds"

    const/16 v2, 0xa

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x9b

    sub-int/2addr v3, v4

    sub-int/2addr v3, v6

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 1633
    :cond_1
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "YOU HAVE:"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v2

    sub-int/2addr v2, v7

    const/16 v3, 0x21

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v5, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1634
    const/16 v1, 0x18

    const v2, -0xcfcfd0

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1635
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1637
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->u:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-direct {v0, v1, v5, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1638
    const/4 v1, -0x1

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1639
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 1641
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RP: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, ""

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v2

    const/16 v3, 0x60

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v5, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 1642
    const v1, -0x2676e5

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v6, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 1643
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    goto/16 :goto_0

    .line 1629
    :cond_2
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1641
    :cond_3
    iget v2, p0, Lcom/creativemobi/engine/ad;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_2
.end method

.method private h(Lcom/creativemobi/engine/w;)V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 1681
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 1683
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Disk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->i()F

    move-result v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v4}, Lcom/creativemobi/engine/m;->u()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->h()F

    move-result v4

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->u()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1689
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Disk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->i()F

    move-result v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v4}, Lcom/creativemobi/engine/m;->v()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->h()F

    move-result v4

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->v()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1695
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Wheel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->i()F

    move-result v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v4, v4, Lcom/creativemobi/engine/m;->d:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->h()F

    move-result v4

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v5, v5, Lcom/creativemobi/engine/m;->d:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1701
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Wheel"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->i()F

    move-result v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v4, v4, Lcom/creativemobi/engine/m;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->h()F

    move-result v4

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v5, v5, Lcom/creativemobi/engine/m;->e:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1707
    :goto_3
    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 1709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Disk1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 1710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Disk2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 1711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 1712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 1714
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->a()I

    move-result v0

    int-to-float v0, v0

    .line 1715
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->h()F

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Disk2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/creativemobi/engine/cd;->h()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1717
    const-string v2, "shadow"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    const/high16 v3, 0x43910000    # 290.0f

    div-float v3, v0, v3

    invoke-virtual {v2, v3}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 1718
    const-string v2, "shadow"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/creativemobi/engine/cd;->j()V

    .line 1719
    const-string v2, "shadow"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    iget v3, p0, Lcom/creativemobi/engine/ad;->h:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v0, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40e00000    # 7.0f

    add-float/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v5}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_Disk"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v4

    invoke-virtual {v4}, Lcom/creativemobi/engine/l;->b()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v1, v4

    const v4, 0x45b54000    # 5800.0f

    div-float v0, v4, v0

    add-float/2addr v0, v1

    invoke-virtual {v2, v3, v0}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 1721
    const-string v0, "shadow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 1722
    return-void

    .line 1686
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->i()F

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->u()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->h()F

    move-result v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v4}, Lcom/creativemobi/engine/m;->u()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    goto/16 :goto_0

    .line 1692
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->i()F

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->v()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->h()F

    move-result v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v4}, Lcom/creativemobi/engine/m;->v()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    goto/16 :goto_1

    .line 1698
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->i()F

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->d:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->h()F

    move-result v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v4, v4, Lcom/creativemobi/engine/m;->d:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    goto/16 :goto_2

    .line 1704
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->i()F

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->e:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->h()F

    move-result v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v4, v4, Lcom/creativemobi/engine/m;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    goto/16 :goto_3
.end method

.method private i(Lcom/creativemobi/engine/w;)V
    .locals 11

    .prologue
    const/16 v10, -0x3e8

    const/4 v9, 0x3

    const/4 v8, 0x4

    const/4 v7, 0x0

    .line 1725
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-eqz v0, :cond_0

    .line 1726
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Disk1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1728
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Disk2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1730
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selectedD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 1733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;)V

    .line 1734
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;)V

    .line 1735
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selectedD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;)V

    .line 1737
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 1741
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->l:Lcom/creativemobi/engine/m;

    if-eqz v0, :cond_1

    .line 1742
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->l:Lcom/creativemobi/engine/m;

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    .line 1744
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "frameHL"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 1747
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v0

    .line 1748
    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ad;->c(I)Lcom/creativemobi/engine/cg;

    move-result-object v6

    .line 1749
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ad;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1751
    if-eqz v6, :cond_3

    .line 1752
    :try_start_0
    iget-object v0, v6, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    .line 1753
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v3, v0}, Lcom/creativemobi/engine/m;->a(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1761
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_a

    .line 1762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_4

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Lcom/creativemobi/engine/cg;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 1763
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v4, v6, Lcom/creativemobi/engine/cg;->g:F

    iget v5, v6, Lcom/creativemobi/engine/cg;->h:F

    iget v6, v6, Lcom/creativemobi/engine/cg;->i:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    .line 1768
    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selectedD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selectedD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Detail.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1771
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1774
    :cond_6
    const-string v0, "shadow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, "shadow"

    const-string v1, "graphics/shadow.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1776
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_selected"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    move v3, v7

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;III)Lcom/creativemobi/engine/cd;

    .line 1778
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selectedD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selectedD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_selectedD"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    move v3, v7

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;III)Lcom/creativemobi/engine/cd;

    .line 1781
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 1782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_Wheel"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    move v3, v10

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;III)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1783
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_Wheel"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, p1

    move v3, v10

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;III)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v9}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1786
    :cond_9
    const-string v0, "shadow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v1, "shadow"

    const-string v2, "shadow"

    iget v0, p0, Lcom/creativemobi/engine/ad;->h:I

    const/16 v3, 0x8c

    sub-int v3, v0, v3

    iget v0, p0, Lcom/creativemobi/engine/ad;->i:I

    const/16 v4, 0x28

    sub-int v4, v0, v4

    move-object v0, p1

    move v5, v9

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;III)Lcom/creativemobi/engine/cd;

    .line 1788
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 1789
    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 1790
    iget v1, p0, Lcom/creativemobi/engine/ad;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 1791
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 1792
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->j()V

    .line 1794
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selectedD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 1795
    if-eqz v0, :cond_b

    .line 1796
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 1797
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 1798
    iget v1, p0, Lcom/creativemobi/engine/ad;->h:I

    int-to-float v1, v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->i:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 1799
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 1800
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->j()V

    .line 1803
    :cond_b
    const-string v0, "shadow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 1804
    return-void

    .line 1765
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_selected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->P()F

    move-result v4

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->Q()F

    move-result v5

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->R()F

    move-result v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    goto/16 :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 2053
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 2107
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 2

    .prologue
    const/high16 v1, 0x41a00000    # 20.0f

    .line 81
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->r:Z

    if-nez v0, :cond_1

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/ad;->r:Z

    .line 83
    iput p2, p0, Lcom/creativemobi/engine/ad;->s:F

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/creativemobi/engine/ad;->z:J

    .line 85
    iput p2, p0, Lcom/creativemobi/engine/ad;->B:F

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 89
    :cond_1
    const-string v0, "buy"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    const-string v0, "paint"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 91
    const-string v0, "upgrade"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    const-string v0, "sell"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    const-string v0, "sell_button"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    const-string v0, "tune_button"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    const-string v0, "race_button"

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->w:Z

    if-nez v0, :cond_2

    .line 98
    iget v0, p0, Lcom/creativemobi/engine/ad;->n:F

    iget v1, p0, Lcom/creativemobi/engine/ad;->s:F

    sub-float v1, p2, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/ad;->n:F

    .line 99
    iput p2, p0, Lcom/creativemobi/engine/ad;->s:F

    .line 102
    :cond_2
    iget v0, p0, Lcom/creativemobi/engine/ad;->g:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;FFZ)V

    goto :goto_0
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 2113
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 11

    .prologue
    .line 501
    :try_start_0
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->b()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->u:I

    .line 502
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->c()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->v:I

    .line 504
    iget v0, p0, Lcom/creativemobi/engine/ad;->g:I

    packed-switch v0, :pswitch_data_0

    .line 518
    :cond_0
    :goto_0
    return-void

    .line 506
    :pswitch_0
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->a()V

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->d(Lcom/creativemobi/engine/w;)V

    const-string v0, "GRADIENT"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/creativemobi/engine/ad;->n:F

    iget v1, p0, Lcom/creativemobi/engine/ad;->A:I

    int-to-long v1, v1

    mul-long/2addr v1, p2

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/ad;->n:F

    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    if-lez v0, :cond_8

    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    int-to-long v0, v0

    sub-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I

    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I

    :cond_1
    :goto_1
    iget v0, p0, Lcom/creativemobi/engine/ad;->W:I

    iget v1, p0, Lcom/creativemobi/engine/ad;->f:I

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/ad;->W:I

    :cond_2
    iget v0, p0, Lcom/creativemobi/engine/ad;->W:I

    if-gez v0, :cond_a

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    iget v0, v0, Lcom/creativemobi/engine/cg;->a:I

    iput v0, p0, Lcom/creativemobi/engine/ad;->W:I

    :goto_2
    iget v0, p0, Lcom/creativemobi/engine/ad;->W:I

    mul-int/lit16 v0, v0, -0xdc

    add-int/lit16 v0, v0, 0x12c

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->n:F

    :cond_3
    :goto_3
    iget v0, p0, Lcom/creativemobi/engine/ad;->f:I

    mul-int/lit16 v0, v0, -0xdc

    add-int/lit16 v0, v0, 0x320

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :cond_4
    iget v1, p0, Lcom/creativemobi/engine/ad;->n:F

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_b

    int-to-float v1, v0

    iput v1, p0, Lcom/creativemobi/engine/ad;->n:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/creativemobi/engine/ad;->A:I

    :cond_5
    :goto_4
    const-string v1, "overlay_l"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    const-string v1, "overlay_r"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    iget v1, p0, Lcom/creativemobi/engine/ad;->n:F

    const/high16 v2, -0x3cb80000    # -200.0f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_6

    const-string v1, "overlay_l"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    :cond_6
    iget v1, p0, Lcom/creativemobi/engine/ad;->n:F

    add-int/lit16 v0, v0, 0xdc

    const/16 v2, 0x14

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_7

    const-string v0, "overlay_r"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    :cond_7
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->o:Z

    if-nez v0, :cond_18

    iget v0, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->l:Lcom/creativemobi/engine/m;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/ad;->o:Z

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/creativemobi/engine/m;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Lcom/creativemobi/engine/m;

    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    array-length v2, p2

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v2, :cond_c

    aget-object v4, p2, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I

    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 515
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 506
    :cond_9
    const/16 v0, 0x9

    :try_start_1
    iput v0, p0, Lcom/creativemobi/engine/ad;->W:I

    goto/16 :goto_2

    :cond_a
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-nez v0, :cond_3

    iget v0, p0, Lcom/creativemobi/engine/ad;->W:I

    mul-int/lit16 v0, v0, -0xdc

    add-int/lit16 v0, v0, 0x12c

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->n:F

    goto/16 :goto_3

    :cond_b
    iget v1, p0, Lcom/creativemobi/engine/ad;->n:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_5

    const/4 v1, 0x0

    iput v1, p0, Lcom/creativemobi/engine/ad;->n:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/creativemobi/engine/ad;->A:I

    goto/16 :goto_4

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v0

    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/creativemobi/engine/m;

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    const/4 v1, 0x0

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v9

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->B()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ad;->c(I)Lcom/creativemobi/engine/cg;

    move-result-object v0

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    if-nez v1, :cond_d

    if-eqz v0, :cond_17

    iget v1, v0, Lcom/creativemobi/engine/cg;->g:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "graphics/cars/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v4, v0, Lcom/creativemobi/engine/cg;->g:F

    iget v5, v0, Lcom/creativemobi/engine/cg;->h:F

    iget v6, v0, Lcom/creativemobi/engine/cg;->i:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    :cond_d
    :goto_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DetailsS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DetailsS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Detail.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    :cond_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DiskS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DiskS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->c()V

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_WheelS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_WheelS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->c()V

    :cond_10
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->t:[Z

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->B()I

    move-result v1

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v8

    iget v3, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v2, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x43250000    # 165.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->j()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_small"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DetailsS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_DetailsS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v8

    iget v3, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v2, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x43250000    # 165.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->j()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallWheel1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_WheelS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-eqz v0, :cond_13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallWheel1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_WheelS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x64

    const/16 v3, 0xa5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallWheel2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_WheelS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallWheel2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_WheelS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, -0x64

    const/16 v3, 0xa5

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallDisk1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DiskS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallDisk1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_DiskS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v8

    iget v3, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v2, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x43250000    # 165.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallDisk1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallDisk2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_DiskS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallDisk2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_DiskS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, v8

    iget v3, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v2, v3

    const/high16 v3, 0x42dc0000    # 110.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x43250000    # 165.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_smallDisk2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_16
    add-int/lit16 v0, v8, 0xdc

    move v8, v0

    goto/16 :goto_6

    :cond_17
    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->P()F

    move-result v4

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->Q()F

    move-result v5

    invoke-virtual {v9}, Lcom/creativemobi/engine/m;->R()F

    move-result v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    goto/16 :goto_7

    :cond_18
    iget v0, p0, Lcom/creativemobi/engine/ad;->n:F

    const/high16 v1, 0x435c0000    # 220.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v2}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_19
    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/creativemobi/engine/m;

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v0

    if-ne v3, v1, :cond_1a

    neg-int v1, v0

    :cond_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_small"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v3

    if-eqz v3, :cond_19

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_small"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v3

    mul-int/lit16 v4, v1, 0xdc

    int-to-float v4, v4

    iget v5, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v4, v5

    const/high16 v5, 0x42dc0000    # 110.0f

    add-float/2addr v4, v5

    const/high16 v5, 0x43250000    # 165.0f

    invoke-virtual {v3, v4, v5}, Lcom/creativemobi/engine/cd;->b(FF)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    if-eqz v4, :cond_1b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallD"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    mul-int/lit16 v5, v1, 0xdc

    int-to-float v5, v5

    iget v6, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v5, v6

    const/high16 v6, 0x42dc0000    # 110.0f

    add-float/2addr v5, v6

    const/high16 v6, 0x43250000    # 165.0f

    invoke-virtual {v4, v5, v6}, Lcom/creativemobi/engine/cd;->b(FF)V

    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallWheel1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    if-eqz v4, :cond_1c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallWheel1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    invoke-virtual {v3}, Lcom/creativemobi/engine/cd;->i()F

    move-result v5

    iget-object v6, p2, Lcom/creativemobi/engine/m;->d:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/creativemobi/engine/cd;->h()F

    move-result v6

    iget-object v7, p2, Lcom/creativemobi/engine/m;->d:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const v8, 0x3f0ccccd    # 0.55f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/creativemobi/engine/cd;->b(FF)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallWheel1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    :cond_1c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallWheel2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    if-eqz v4, :cond_1d

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallWheel2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    invoke-virtual {v3}, Lcom/creativemobi/engine/cd;->i()F

    move-result v5

    iget-object v6, p2, Lcom/creativemobi/engine/m;->e:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/creativemobi/engine/cd;->h()F

    move-result v6

    iget-object v7, p2, Lcom/creativemobi/engine/m;->e:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const v8, 0x3f0ccccd    # 0.55f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/creativemobi/engine/cd;->b(FF)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallWheel2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    :cond_1d
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallDisk1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    if-eqz v4, :cond_1e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallDisk1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    invoke-virtual {v3}, Lcom/creativemobi/engine/cd;->i()F

    move-result v5

    iget-object v6, p2, Lcom/creativemobi/engine/m;->b:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/creativemobi/engine/cd;->h()F

    move-result v6

    iget-object v7, p2, Lcom/creativemobi/engine/m;->b:Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    const v8, 0x3f0ccccd    # 0.55f

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Lcom/creativemobi/engine/cd;->b(FF)V

    :cond_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallDisk2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    if-eqz v4, :cond_1f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_smallDisk2"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    invoke-virtual {v3}, Lcom/creativemobi/engine/cd;->i()F

    move-result v5

    iget-object v6, p2, Lcom/creativemobi/engine/m;->c:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->x:I

    int-to-float v6, v6

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v3}, Lcom/creativemobi/engine/cd;->h()F

    move-result v3

    iget-object v6, p2, Lcom/creativemobi/engine/m;->c:Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    const v7, 0x3f0ccccd    # 0.55f

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    invoke-virtual {v4, v5, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    :cond_1f
    mul-int/lit16 v3, v1, 0xdc

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frame"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    if-nez v4, :cond_20

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frame"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "frame"

    const/4 v6, 0x0

    const/16 v7, 0x50

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frame"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_20
    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->B()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/creativemobi/engine/ad;->b(I)Z

    move-result v4

    if-eqz v4, :cond_22

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "owned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    if-nez v4, :cond_21

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "owned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "owned"

    const/4 v6, 0x0

    const/16 v7, 0x4c

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "owned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "owned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    const/high16 v5, 0x40c00000    # 6.0f

    add-float/2addr v5, v3

    const/high16 v6, 0x42980000    # 76.0f

    invoke-virtual {v4, v5, v6}, Lcom/creativemobi/engine/cd;->b(FF)V

    :goto_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "frame"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    const/high16 v5, 0x42a00000    # 80.0f

    invoke-virtual {v4, v3, v5}, Lcom/creativemobi/engine/cd;->b(FF)V

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    :cond_22
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "owned"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    goto :goto_9

    :cond_23
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget v1, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-interface {v0, p1, v1}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    :cond_24
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->l:Lcom/creativemobi/engine/m;

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-eq v0, v1, :cond_27

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->i(Lcom/creativemobi/engine/w;)V

    :goto_a
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->w:Z

    if-nez v0, :cond_2a

    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->Z:Z

    if-nez v0, :cond_2a

    new-instance v0, Lcom/creativemobi/engine/x;

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->A()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0xd9

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    const-string v0, "buy"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->f()Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->z()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->x()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0xfa

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->z()I

    move-result v2

    iget v3, p0, Lcom/creativemobi/engine/ad;->u:I

    if-gt v2, v3, :cond_28

    const v2, -0x112555

    :goto_b
    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    :cond_25
    :goto_c
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->g(Lcom/creativemobi/engine/w;)V

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->f(Lcom/creativemobi/engine/w;)V

    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->Z:Z

    if-nez v0, :cond_2d

    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->w:Z

    if-nez v0, :cond_2d

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "FILTER CARS:"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0xd2

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x80

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const v2, -0xcfcfd0

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    invoke-direct {p0}, Lcom/creativemobi/engine/ad;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0xd2

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x5f

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1b

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    const-string v0, "dropdown"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    const-string v1, "FILTER"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v0

    const/16 v2, 0xc3

    sub-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v0

    const/16 v3, 0xa0

    sub-int/2addr v0, v3

    int-to-float v3, v0

    const/high16 v4, 0x433e0000    # 190.0f

    const/high16 v5, 0x42c80000    # 100.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    :goto_d
    const-string v2, "POWER"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v0

    const/16 v1, 0x140

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x5a

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v0

    const/16 v1, 0x45

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->e()F

    move-result v5

    sget v6, Lcom/creativemobi/engine/ad;->b:F

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->e()F

    move-result v7

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->e()F

    move-result v1

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v1, v8

    invoke-static {v0, v1}, Lcom/creativemobi/engine/h;->c(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;IIFFFLjava/lang/String;)I

    move-result v9

    const-string v2, "WEIGHT"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v0

    const/16 v1, 0x140

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x5a

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v0

    const/16 v1, 0x2f

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->f()F

    move-result v5

    sget v6, Lcom/creativemobi/engine/ad;->c:F

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->f()F

    move-result v7

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->f()F

    move-result v1

    invoke-static {v0, v1}, Lcom/creativemobi/engine/h;->a(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;IIFFFLjava/lang/String;)I

    const-string v2, "SPEED"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v0

    const/16 v1, 0x140

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x5a

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v0

    const/16 v1, 0x19

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->K()F

    move-result v5

    sget v6, Lcom/creativemobi/engine/ad;->a:F

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->K()F

    move-result v7

    const-string v0, "%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v10}, Lcom/creativemobi/engine/m;->K()F

    move-result v10

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;IIFFFLjava/lang/String;)I

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_26

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {v0}, Lcom/creativemobi/engine/i;->a(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Lcom/creativemobi/engine/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/creativemobi/engine/h;->c(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " N20"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v2

    const/16 v3, 0x45

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v0, v9, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0x10

    const v2, -0xff8101

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    :cond_26
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->y()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->w()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/creativemobi/engine/ad;->c(Lcom/creativemobi/engine/w;FF)V

    goto/16 :goto_0

    :cond_27
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->h(Lcom/creativemobi/engine/w;)V

    goto/16 :goto_a

    :cond_28
    const/high16 v2, -0x10000

    goto/16 :goto_b

    :cond_29
    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->y()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->x()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0xfa

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const v2, -0x112555

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    goto/16 :goto_c

    :cond_2a
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->w:Z

    if-eqz v0, :cond_25

    const-string v0, "buy"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->f()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget v0, p0, Lcom/creativemobi/engine/ad;->u:I

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->z()I

    move-result v1

    if-lt v0, v1, :cond_2b

    iget v0, p0, Lcom/creativemobi/engine/ad;->v:I

    if-ltz v0, :cond_2b

    const-string v0, "Do you really want to spend %1$d CREDITS to buy %2$s?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->z()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->A()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Z)V

    goto/16 :goto_c

    :cond_2b
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->A()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->b(Lcom/creativemobi/engine/w;Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_2c
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->A()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->y()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;I)V

    goto/16 :goto_c

    :cond_2d
    const-string v0, "dropdown"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    goto/16 :goto_d

    .line 509
    :pswitch_1
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->a()V

    const-string v0, "GRADIENT"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    if-eqz v0, :cond_2e

    iget v0, p0, Lcom/creativemobi/engine/ad;->n:F

    iget v1, p0, Lcom/creativemobi/engine/ad;->A:I

    int-to-long v1, v1

    mul-long/2addr v1, p2

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/ad;->n:F

    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    if-lez v0, :cond_36

    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    int-to-long v0, v0

    sub-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I

    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    if-gez v0, :cond_2e

    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I

    :cond_2e
    :goto_e
    iget v0, p0, Lcom/creativemobi/engine/ad;->n:F

    const/high16 v1, -0x3bfe0000    # -520.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_37

    const/high16 v0, -0x3bfe0000    # -520.0f

    iput v0, p0, Lcom/creativemobi/engine/ad;->n:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I

    :cond_2f
    :goto_f
    const-string v0, "overlay_l"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    const-string v0, "overlay_r"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    iget v0, p0, Lcom/creativemobi/engine/ad;->n:F

    const/high16 v1, -0x3cb80000    # -200.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_30

    const-string v0, "overlay_l"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    :cond_30
    iget v0, p0, Lcom/creativemobi/engine/ad;->n:F

    const/high16 v1, -0x3c600000    # -320.0f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_31

    const-string v0, "overlay_r"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    :cond_31
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-nez v0, :cond_32

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget v1, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-interface {v0, p1, v1}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->i(Lcom/creativemobi/engine/w;)V

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->b(Lcom/creativemobi/engine/w;)V

    :cond_32
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->c(Lcom/creativemobi/engine/w;)V

    iget v0, p0, Lcom/creativemobi/engine/ad;->D:I

    iget v1, p0, Lcom/creativemobi/engine/ad;->C:I

    if-eq v0, v1, :cond_38

    const/4 v0, 0x1

    :goto_10
    iget v1, p0, Lcom/creativemobi/engine/ad;->D:I

    iget v2, p0, Lcom/creativemobi/engine/ad;->C:I

    if-ne v1, v2, :cond_33

    iget-boolean v1, p0, Lcom/creativemobi/engine/ad;->p:Z

    if-eqz v1, :cond_35

    :cond_33
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/creativemobi/engine/ad;->p:Z

    iget v1, p0, Lcom/creativemobi/engine/ad;->D:I

    iget v2, p0, Lcom/creativemobi/engine/ad;->C:I

    if-eq v1, v2, :cond_34

    iget v1, p0, Lcom/creativemobi/engine/ad;->C:I

    iput v1, p0, Lcom/creativemobi/engine/ad;->D:I

    :cond_34
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v1

    iput-object v1, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v2, v2, Lcom/creativemobi/engine/m;->a:[I

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/m;->a([I)V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v1, v1, Lcom/creativemobi/engine/m;->a:[I

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v1, v1, v2

    const/4 v2, 0x6

    if-ge v1, v2, :cond_39

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->a:[I

    iget v4, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/m;->a(II)V

    :cond_35
    :goto_11
    const-string v1, "sell_button"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v2, v2, Lcom/creativemobi/engine/m;->a:[I

    iget v3, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v2, v2, v3

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->b()[I

    move-result-object v3

    iget v4, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v3, v3, v4

    if-le v2, v3, :cond_3a

    const/4 v2, 0x1

    :goto_12
    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->h(Lcom/creativemobi/engine/w;)V

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Z)V

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->g(Lcom/creativemobi/engine/w;)V

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->z()I

    move-result v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->w()I

    move-result v1

    iget-boolean v2, p0, Lcom/creativemobi/engine/ad;->y:Z

    if-eqz v2, :cond_3c

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->b()I

    move-result v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->z()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/creativemobi/engine/i;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lt v0, v1, :cond_3b

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->c()I

    move-result v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->z()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/creativemobi/engine/i;->c:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    if-lt v0, v1, :cond_3b

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->z()I

    move-result v0

    int-to-float v0, v0

    sget v1, Lcom/creativemobi/engine/i;->b:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->z()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/creativemobi/engine/i;->c:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;II)V

    :goto_13
    const-string v2, "POWER"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v0

    const/16 v1, 0x140

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x5a

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v0

    const/16 v1, 0x45

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->e()F

    move-result v5

    sget v6, Lcom/creativemobi/engine/ad;->b:F

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->e()F

    move-result v7

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->e()F

    move-result v1

    const/high16 v8, 0x447a0000    # 1000.0f

    div-float/2addr v1, v8

    invoke-static {v0, v1}, Lcom/creativemobi/engine/h;->c(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;IIFFFLjava/lang/String;)I

    move-result v9

    const-string v2, "WEIGHT"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v0

    const/16 v1, 0x140

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x5a

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v0

    const/16 v1, 0x2f

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->f()F

    move-result v5

    sget v6, Lcom/creativemobi/engine/ad;->c:F

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->f()F

    move-result v7

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->f()F

    move-result v1

    invoke-static {v0, v1}, Lcom/creativemobi/engine/h;->a(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;IIFFFLjava/lang/String;)I

    const-string v2, "SPEED"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v0

    const/16 v1, 0x140

    sub-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x5a

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v0

    const/16 v1, 0x19

    sub-int v4, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->K()F

    move-result v5

    sget v6, Lcom/creativemobi/engine/ad;->a:F

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->K()F

    move-result v7

    const-string v0, "%1$d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v10, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v10}, Lcom/creativemobi/engine/m;->K()F

    move-result v10

    float-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;IIFFFLjava/lang/String;)I

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/ad;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4d

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4d

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/creativemobi/engine/i;->a(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Lcom/creativemobi/engine/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/creativemobi/engine/h;->c(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " N20"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v2

    const/16 v3, 0x45

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v0, v9, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0x10

    const v2, -0xff8101

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    goto/16 :goto_0

    :cond_36
    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    int-to-long v0, v0

    add-long/2addr v0, p2

    long-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I

    iget v0, p0, Lcom/creativemobi/engine/ad;->A:I

    if-lez v0, :cond_2e

    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I

    goto/16 :goto_e

    :cond_37
    iget v0, p0, Lcom/creativemobi/engine/ad;->n:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2f

    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/ad;->n:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I

    goto/16 :goto_f

    :cond_38
    const/4 v0, 0x0

    goto/16 :goto_10

    :cond_39
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->a:[I

    iget v4, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v3, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/m;->a(II)V

    goto/16 :goto_11

    :cond_3a
    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_3b
    const-string v0, "tuning package (need $%d + %d RP)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->z()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/creativemobi/engine/i;->b:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->z()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/creativemobi/engine/i;->c:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->b(Lcom/creativemobi/engine/w;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_3c
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v2, v2, Lcom/creativemobi/engine/m;->a:[I

    iget v3, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v2, v2, v3

    const/4 v3, 0x6

    if-lt v2, v3, :cond_3d

    iget-boolean v2, p0, Lcom/creativemobi/engine/ad;->x:Z

    if-eqz v2, :cond_4c

    :cond_3d
    iget-boolean v2, p0, Lcom/creativemobi/engine/ad;->w:Z

    if-eqz v2, :cond_42

    iget-boolean v1, p0, Lcom/creativemobi/engine/ad;->x:Z

    if-nez v1, :cond_41

    iget v1, p0, Lcom/creativemobi/engine/ad;->D:I

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v2, v2, Lcom/creativemobi/engine/m;->a:[I

    iget v3, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/i;->b(III)F

    move-result v1

    float-to-int v1, v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->a:[I

    iget v4, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/creativemobi/engine/i;->a(III)I

    move-result v2

    iget v3, p0, Lcom/creativemobi/engine/ad;->u:I

    if-lt v3, v1, :cond_40

    iget v3, p0, Lcom/creativemobi/engine/ad;->v:I

    if-lt v3, v2, :cond_40

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->y()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/ad;->D:I

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v5, v5, Lcom/creativemobi/engine/m;->a:[I

    iget v6, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    invoke-static {v0, v4, v5}, Lcom/creativemobi/engine/i;->b(III)F

    move-result v0

    add-float/2addr v0, v3

    float-to-int v0, v0

    invoke-static {v0}, Lcom/creativemobi/engine/m;->a(I)I

    move-result v0

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->x()I

    move-result v3

    if-le v0, v3, :cond_3e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This upgrade will advance your car to level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "! Are you sure?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Z)V

    goto/16 :goto_13

    :cond_3e
    if-lez v2, :cond_3f

    const-string v0, "Do you really want to spend %1$d CREDITS and %2$d RESPECT POINTS to buy %3$s?"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    const/4 v1, 0x2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/creativemobi/engine/i;->a:[Ljava/lang/String;

    iget v5, p0, Lcom/creativemobi/engine/ad;->D:I

    aget-object v4, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " UPGRADE"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_14
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Z)V

    goto/16 :goto_13

    :cond_3f
    const-string v0, "Do you really want to spend %1$d CREDITS to buy %2$s?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    const/4 v1, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/creativemobi/engine/i;->a:[Ljava/lang/String;

    iget v5, p0, Lcom/creativemobi/engine/ad;->D:I

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " UPGRADE"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/creativemobi/engine/i;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v1, v1, Lcom/creativemobi/engine/m;->a:[I

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->b(Lcom/creativemobi/engine/w;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_41
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->e(Lcom/creativemobi/engine/w;)V

    goto/16 :goto_13

    :cond_42
    new-instance v2, Lcom/creativemobi/engine/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LEVEL "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v4}, Lcom/creativemobi/engine/m;->x()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v4}, Lcom/creativemobi/engine/m;->y()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x19a

    const/16 v4, 0xe1

    invoke-direct {v2, v1, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/high16 v3, -0x1000000

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v1, Lcom/creativemobi/engine/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/creativemobi/engine/i;->a:[Ljava/lang/String;

    iget v4, p0, Lcom/creativemobi/engine/ad;->D:I

    aget-object v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " STAGE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->a:[I

    iget v4, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x190

    const/16 v4, 0x104

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x1c

    const v3, -0x112555

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget v1, p0, Lcom/creativemobi/engine/ad;->D:I

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v2, v2, Lcom/creativemobi/engine/m;->a:[I

    iget v3, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v2, v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/i;->a(III)I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_5f

    new-instance v2, Lcom/creativemobi/engine/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x258

    const/16 v5, 0x179

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x1a

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v4}, Lcom/creativemobi/engine/bl;->b()I

    move-result v4

    if-lt v4, v1, :cond_4a

    const v1, -0x2676e5

    :goto_15
    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    invoke-virtual {v2}, Lcom/creativemobi/engine/x;->a()F

    move-result v1

    float-to-int v1, v1

    :goto_16
    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->a:[I

    iget v4, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/creativemobi/engine/i;->b(III)F

    move-result v0

    float-to-int v0, v0

    new-instance v2, Lcom/creativemobi/engine/x;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UPGRADE COST: $"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x258

    sub-int v1, v4, v1

    const/16 v4, 0x179

    invoke-direct {v2, v3, v1, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1a

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->b()I

    move-result v3

    if-lt v3, v0, :cond_4b

    const/4 v0, -0x1

    :goto_17
    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v2, v1, v0, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    const-string v0, ""

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->e()F

    move-result v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->e()F

    move-result v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "power "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->e()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/creativemobi/engine/h;->c(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->e()F

    move-result v2

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    invoke-static {v1, v2}, Lcom/creativemobi/engine/h;->c(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_43
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->f()F

    move-result v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->f()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_45

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_44

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "weight "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->f()F

    move-result v2

    invoke-static {v1, v2}, Lcom/creativemobi/engine/h;->a(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->f()F

    move-result v2

    invoke-static {v1, v2}, Lcom/creativemobi/engine/h;->a(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_45
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->K()F

    move-result v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->K()F

    move-result v2

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_47

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_46

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_46
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "grip "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->K()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->E:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->K()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_47
    iget v1, p0, Lcom/creativemobi/engine/ad;->D:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_49

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_48

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_48
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v1

    const/4 v2, 0x3

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/creativemobi/engine/i;->a(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v2

    const/4 v3, 0x3

    aget v2, v2, v3

    invoke-static {v2}, Lcom/creativemobi/engine/i;->a(I)F

    move-result v2

    float-to-int v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "  +"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v3

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/creativemobi/engine/h;->c(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " nitrous"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_49
    new-instance v1, Lcom/creativemobi/engine/x;

    const/16 v2, 0x190

    const/16 v3, 0x11b

    invoke-direct {v1, v0, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0x14

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget v0, p0, Lcom/creativemobi/engine/ad;->D:I

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v1, v1, Lcom/creativemobi/engine/m;->a:[I

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/creativemobi/engine/i;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;)V

    goto/16 :goto_13

    :cond_4a
    const/high16 v1, -0x10000

    goto/16 :goto_15

    :cond_4b
    const/high16 v0, -0x10000

    goto/16 :goto_17

    :cond_4c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/ad;->w:Z

    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "LEVEL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->x()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->y()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0xe1

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    sget-object v1, Lcom/creativemobi/engine/i;->a:[Ljava/lang/String;

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    aget-object v1, v1, v2

    const/16 v2, 0x190

    const/16 v3, 0x104

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const v2, -0x112555

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "MAX UPGRADE REACHED"

    const/16 v2, 0x190

    const/16 v3, 0x136

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    goto/16 :goto_13

    :cond_4d
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    invoke-static {v0}, Lcom/creativemobi/engine/i;->a(I)F

    move-result v0

    float-to-int v0, v0

    new-instance v1, Lcom/creativemobi/engine/x;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v3

    int-to-float v0, v0

    invoke-static {v3, v0}, Lcom/creativemobi/engine/h;->c(Landroid/content/Context;F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " N20"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v2

    const/16 v3, 0x45

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0xe

    invoke-direct {v1, v0, v9, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v0, 0x10

    const v2, -0xff8101

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    goto/16 :goto_0

    .line 512
    :pswitch_2
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->a()V

    const-string v0, "GRADIENT"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget v1, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-interface {v0, p1, v1}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->i(Lcom/creativemobi/engine/w;)V

    const-string v0, "line_bottom"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_4e

    const-string v0, "line_bottom"

    const-string v1, "line"

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x5d

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_4e
    const-string v0, "line"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_4f

    const-string v0, "line"

    const-string v1, "line"

    const/4 v2, 0x0

    const/16 v3, 0x3c

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_4f
    const-string v0, "hue"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_50

    const-string v0, "hue"

    const-string v1, "hue"

    const/4 v2, 0x0

    const/16 v3, 0x5a

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_50
    const-string v0, "garage"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_51

    const-string v0, "garage"

    const-string v1, "garage"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_51
    const-string v0, "apply"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_52

    const-string v0, "apply"

    const-string v1, "apply"

    const/16 v2, 0x14

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x37

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_52
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_53

    const-string v0, "reset"

    const-string v1, "reset"

    const/16 v2, 0x96

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x38

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    const-string v0, "reset"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    :cond_53
    const-string v0, "palette"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_54

    const-string v0, "palette"

    const-string v1, "palette"

    iget v2, p0, Lcom/creativemobi/engine/ad;->L:I

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/creativemobi/engine/ad;->M:I

    const/16 v4, 0x1f

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_54
    const-string v0, "cp_cursor"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_55

    const-string v0, "cp_cursor"

    const-string v1, "cp_cursor"

    iget v2, p0, Lcom/creativemobi/engine/ad;->I:F

    const/high16 v3, 0x44480000    # 800.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42a40000    # 82.0f

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_55
    const-string v0, "cp_point"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_56

    const-string v0, "cp_point"

    const-string v1, "cp_point"

    iget v2, p0, Lcom/creativemobi/engine/ad;->L:I

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/ad;->J:F

    iget v4, p0, Lcom/creativemobi/engine/ad;->N:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x41600000    # 14.0f

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/creativemobi/engine/ad;->M:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    iget v5, p0, Lcom/creativemobi/engine/ad;->K:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/creativemobi/engine/ad;->O:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x41500000    # 13.0f

    sub-float/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_56
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_57

    const-string v0, "upgrade_frame"

    const-string v1, "upgrade_frame"

    const/16 v2, 0x190

    const/16 v3, 0xb0

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    :cond_57
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_58

    const-string v0, "infinity"

    const-string v1, "infinity"

    const/16 v2, 0x3b

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x77

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    :cond_58
    const-string v0, "infinity"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    const-string v0, "header"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_59

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

    :cond_59
    const-string v0, "buy"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    const-string v0, "sell"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    const-string v0, "dropdown"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    const-string v0, "upgrade"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    const-string v0, "paint"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    const-string v0, "race_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    :goto_18
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->g(Lcom/creativemobi/engine/w;)V

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->y()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->w()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, p1, v0, v1}, Lcom/creativemobi/engine/ad;->c(Lcom/creativemobi/engine/w;FF)V

    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->w:Z

    if-eqz v0, :cond_5c

    const-string v0, "cp_point"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    const-string v0, "palette"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    iget v0, p0, Lcom/creativemobi/engine/ad;->v:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->z()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/creativemobi/engine/i;->d:F

    mul-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_5b

    const-string v0, "Respraying this car will cost you %1$d RP. Are you sure?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->z()I

    move-result v3

    int-to-float v3, v3

    sget v4, Lcom/creativemobi/engine/i;->d:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5a
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->h(Lcom/creativemobi/engine/w;)V

    goto :goto_18

    :cond_5b
    const-string v0, "this paint."

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->b(Lcom/creativemobi/engine/w;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5c
    const-string v0, "cp_point"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    const-string v0, "palette"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->A()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0xd9

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->y()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (level "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->x()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x190

    const/16 v3, 0xfa

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const v2, -0x112555

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "COLOR:"

    iget v2, p0, Lcom/creativemobi/engine/ad;->L:I

    add-int/lit8 v2, v2, 0x7

    iget v3, p0, Lcom/creativemobi/engine/ad;->M:I

    const/4 v4, 0x6

    sub-int/2addr v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const v2, -0xcfcfd0

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->F:Landroid/graphics/Paint;

    if-nez v0, :cond_5d

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->F:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->F:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/creativemobi/engine/ad;->L:I

    int-to-float v1, v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->M:I

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/ad;->L:I

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/ad;->M:I

    iget v5, p0, Lcom/creativemobi/engine/ad;->O:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->H:Landroid/graphics/Shader;

    :cond_5d
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/creativemobi/engine/ad;->I:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, p0, Lcom/creativemobi/engine/ad;->L:I

    int-to-float v1, v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->M:I

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/ad;->L:I

    iget v4, p0, Lcom/creativemobi/engine/ad;->N:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/ad;->M:I

    int-to-float v4, v4

    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->G:Landroid/graphics/Shader;

    new-instance v0, Landroid/graphics/ComposeShader;

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->H:Landroid/graphics/Shader;

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->G:Landroid/graphics/Shader;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->F:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    const/4 v1, 0x1

    iget v2, p0, Lcom/creativemobi/engine/ad;->J:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    const/4 v1, 0x2

    iget v2, p0, Lcom/creativemobi/engine/ad;->K:F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    new-instance v0, Lcom/creativemobi/engine/cd;

    iget v1, p0, Lcom/creativemobi/engine/ad;->L:I

    iget v2, p0, Lcom/creativemobi/engine/ad;->M:I

    iget v3, p0, Lcom/creativemobi/engine/ad;->N:I

    iget v4, p0, Lcom/creativemobi/engine/ad;->O:I

    iget-object v5, p0, Lcom/creativemobi/engine/ad;->F:Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v5}, Lcom/creativemobi/engine/cd;-><init>(IIIILandroid/graphics/Paint;)V

    const-string v1, "GRADIENT"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/cd;Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->S:Z

    if-eqz v0, :cond_0

    shr-int/lit8 v0, v6, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    shr-int/lit8 v1, v6, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    and-int/lit16 v2, v6, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-eqz v3, :cond_5e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v4}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_selected"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v3

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v4}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v4

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float/2addr v0, v5

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float/2addr v1, v5

    const/high16 v5, 0x3fa00000    # 1.25f

    mul-float/2addr v2, v5

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/creativemobi/engine/l;->a(Landroid/content/Context;FFF)V

    :cond_5e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/creativemobi/engine/ad;->S:Z

    const-string v0, "reset"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_5f
    move v1, v2

    goto/16 :goto_16

    .line 504
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 1866
    :try_start_0
    iput-object p3, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    .line 1869
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "electrotome.ttf"

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    iput-object v1, p0, Lcom/creativemobi/engine/ad;->m:Landroid/graphics/Typeface;

    .line 1871
    const-string v1, "graphics/loading.jpg"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 1872
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 1875
    const-string v1, "upgrades"

    const-string v2, "graphics/garage/upgrades.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1876
    const-string v1, "upgrade_frame"

    const-string v2, "graphics/garage/upgrade_frame.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1877
    const-string v1, "upgrade_bar_filled"

    const-string v2, "graphics/garage/upgrade_bar_filled.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1878
    const-string v1, "upgrade_bar_empty"

    const-string v2, "graphics/garage/upgrade_bar_empty.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1880
    const-string v1, "dropdown"

    const-string v2, "graphics/garage/dropdown.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1881
    const-string v1, "frame_funds"

    const-string v2, "graphics/garage/frame_funds.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1883
    const-string v1, "frame"

    const-string v2, "graphics/garage/frame.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1884
    const-string v1, "frameHL"

    const-string v2, "graphics/garage/frame_hl.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1886
    const-string v1, "garage"

    const-string v2, "graphics/garage/garage.jpg"

    sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1888
    const-string v1, "line"

    const-string v2, "graphics/garage/line.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1889
    const-string v1, "owned"

    const-string v2, "graphics/garage/owned.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1890
    const-string v1, "test_drive"

    const-string v2, "graphics/garage/test_drive.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1891
    const-string v1, "apply"

    const-string v2, "graphics/garage/apply.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1894
    const-string v1, "hue"

    const-string v2, "graphics/garage/hue.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1895
    const-string v1, "reset"

    const-string v2, "graphics/menu/reset.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1896
    const-string v1, "cp_cursor"

    const-string v2, "graphics/garage/cp_cursor.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1897
    const-string v1, "cp_point"

    const-string v2, "graphics/garage/cp_point.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1898
    const-string v1, "palette"

    const-string v2, "graphics/garage/palette.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1901
    const-string v1, "header"

    const-string v2, "graphics/garage/garage_header.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1903
    const-string v1, "race_button"

    const-string v2, "graphics/garage/garage_race.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1904
    const-string v1, "tune_button"

    const-string v2, "graphics/garage/tune.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1907
    const-string v1, "buy"

    const-string v2, "graphics/garage/garage_buy.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1908
    const-string v1, "sell"

    const-string v2, "graphics/garage/garage_sell.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1909
    const-string v1, "remove"

    const-string v2, "graphics/garage/garage_remove.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1910
    const-string v1, "upgrade"

    const-string v2, "graphics/garage/garage_upgrade.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1911
    const-string v1, "paint"

    const-string v2, "graphics/garage/paint.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1913
    const-string v1, "overlay"

    const-string v2, "graphics/garage/garage_overlay.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1915
    const-string v1, "stats"

    const-string v2, "graphics/garage/garage_stats.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1916
    const-string v1, "bar_edge_lt"

    const-string v2, "graphics/garage/bar_edge_lt.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1917
    const-string v1, "bar_edge_rt"

    const-string v2, "graphics/garage/bar_edge_rt.png"

    invoke-virtual {p1, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 1918
    const-string v1, "infinity"

    const-string v2, "graphics/menu/infinity.png"

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1920
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ad;->d(Lcom/creativemobi/engine/w;)V

    .line 1923
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v2

    .line 1924
    const/4 v1, 0x0

    new-array v1, v1, [Lcom/creativemobi/engine/m;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/creativemobi/engine/m;

    .line 1925
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1926
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1927
    array-length v3, v1

    move v4, v6

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v1, v4

    .line 1928
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1927
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1930
    :cond_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/creativemobi/engine/ad;->t:[Z

    .line 1931
    sget v1, Lcom/creativemobi/engine/ad;->Y:I

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    .line 1933
    invoke-direct {p0}, Lcom/creativemobi/engine/ad;->e()V

    .line 1935
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v6

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/creativemobi/engine/m;

    move-object v8, v0

    .line 1936
    invoke-virtual {v8}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    if-nez v1, :cond_4

    .line 1937
    const/4 v1, 0x0

    invoke-virtual {v8}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    invoke-interface {p3, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v11

    .line 1938
    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->B()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/creativemobi/engine/ad;->c(I)Lcom/creativemobi/engine/cg;

    move-result-object v1

    .line 1940
    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v2

    if-nez v2, :cond_1

    .line 1941
    if-eqz v1, :cond_6

    iget v2, v1, Lcom/creativemobi/engine/cg;->g:F

    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_6

    .line 1942
    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "graphics/cars/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v5, v1, Lcom/creativemobi/engine/cg;->g:F

    iget v6, v1, Lcom/creativemobi/engine/cg;->h:F

    iget v7, v1, Lcom/creativemobi/engine/cg;->i:F

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    .line 1948
    :cond_1
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_DetailsS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_DetailsS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "graphics/cars/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Detail.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 1950
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_DiskS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_DiskS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "graphics/cars/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Disk.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/creativemobi/engine/l;->c()V

    .line 1952
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_WheelS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_WheelS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "graphics/cars/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_Wheel.png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/creativemobi/engine/l;->c()V

    .line 1956
    :cond_4
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->t:[Z

    invoke-virtual {v8}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    if-nez v1, :cond_5

    .line 1957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_small"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v10

    iget v4, p0, Lcom/creativemobi/engine/ad;->n:F

    add-float/2addr v3, v4

    const/high16 v4, 0x42dc0000    # 110.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x43250000    # 165.0f

    invoke-virtual {p1, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 1958
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->j()V

    .line 1959
    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->k()V

    .line 1962
    :cond_5
    add-int/lit16 v1, v10, 0xdc

    move v10, v1

    goto/16 :goto_1

    .line 1944
    :cond_6
    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "graphics/cars/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".png"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->P()F

    move-result v5

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->Q()F

    move-result v6

    invoke-virtual {v11}, Lcom/creativemobi/engine/m;->R()F

    move-result v7

    move-object v1, p1

    invoke-virtual/range {v1 .. v7}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    goto/16 :goto_2

    .line 1970
    :catch_0
    move-exception v1

    :goto_3
    return-void

    .line 1965
    :cond_7
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->c()I

    move-result v1

    const/16 v2, 0x320

    if-lt v1, v2, :cond_8

    const/16 v1, 0x3c

    iput v1, p0, Lcom/creativemobi/engine/ad;->Q:I

    goto :goto_3

    .line 1966
    :cond_8
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->c()I

    move-result v1

    const/16 v2, 0x1e0

    if-lt v1, v2, :cond_9

    const/16 v1, 0x78

    iput v1, p0, Lcom/creativemobi/engine/ad;->Q:I

    goto :goto_3

    .line 1967
    :cond_9
    const/16 v1, 0xfa

    iput v1, p0, Lcom/creativemobi/engine/ad;->Q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 8

    .prologue
    const/4 v1, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2057
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->Z:Z

    if-eqz v0, :cond_0

    .line 2058
    iput-boolean v5, p0, Lcom/creativemobi/engine/ad;->Z:Z

    .line 2059
    invoke-direct {p0, p1, v6}, Lcom/creativemobi/engine/ad;->c(Lcom/creativemobi/engine/w;I)V

    move v0, v6

    .line 2100
    :goto_0
    return v0

    .line 2062
    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/ad;->g:I

    if-ne v0, v1, :cond_1

    .line 2064
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    if-eqz v0, :cond_1

    .line 2065
    new-array v0, v1, [F

    .line 2073
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->B()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/creativemobi/engine/ad;->c(I)Lcom/creativemobi/engine/cg;

    move-result-object v1

    .line 2074
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/creativemobi/engine/cg;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2075
    iget v2, v1, Lcom/creativemobi/engine/cg;->g:F

    aput v2, v0, v5

    .line 2076
    iget v2, v1, Lcom/creativemobi/engine/cg;->h:F

    aput v2, v0, v6

    .line 2077
    iget v1, v1, Lcom/creativemobi/engine/cg;->i:F

    aput v1, v0, v7

    .line 2085
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_selected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v2}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v2

    aget v3, v0, v5

    aget v4, v0, v6

    aget v0, v0, v7

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/creativemobi/engine/l;->a(Landroid/content/Context;FFF)V

    .line 2094
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/ad;->g:I

    if-ne v0, v6, :cond_3

    move v0, v5

    goto :goto_0

    .line 2079
    :cond_2
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->P()F

    move-result v1

    aput v1, v0, v5

    .line 2080
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->Q()F

    move-result v1

    aput v1, v0, v6

    .line 2081
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->R()F

    move-result v1

    aput v1, v0, v7

    goto :goto_1

    .line 2095
    :cond_3
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->W:I

    .line 2096
    invoke-direct {p0, p1, v6}, Lcom/creativemobi/engine/ad;->c(Lcom/creativemobi/engine/w;I)V

    .line 2097
    iput-boolean v5, p0, Lcom/creativemobi/engine/ad;->y:Z

    .line 2098
    iput-boolean v5, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 2099
    iput-boolean v5, p0, Lcom/creativemobi/engine/ad;->x:Z

    move v0, v6

    .line 2100
    goto/16 :goto_0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 9

    .prologue
    const/high16 v8, 0x3fa00000    # 1.25f

    const/high16 v5, 0x42480000    # 50.0f

    const/high16 v2, 0x41a00000    # 20.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 110
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->r:Z

    .line 111
    iget v0, p0, Lcom/creativemobi/engine/ad;->B:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41c80000    # 25.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 112
    iget v0, p0, Lcom/creativemobi/engine/ad;->g:I

    packed-switch v0, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    iget-wide v0, p0, Lcom/creativemobi/engine/ad;->z:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 415
    const/high16 v0, 0x447a0000    # 1000.0f

    iget v1, p0, Lcom/creativemobi/engine/ad;->B:F

    sub-float v1, p2, v1

    mul-float/2addr v0, v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/creativemobi/engine/ad;->z:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ad;->A:I

    .line 417
    :cond_1
    :goto_1
    return-void

    .line 114
    :pswitch_0
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->Z:Z

    if-eqz v0, :cond_8

    move v1, v6

    .line 115
    :goto_2
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->X:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->X:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 117
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    aget-boolean v2, v2, v1

    if-nez v2, :cond_2

    move v2, v7

    :goto_3
    aput-boolean v2, v0, v1

    .line 118
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "frameHL"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    goto :goto_1

    :cond_2
    move v2, v6

    .line 117
    goto :goto_3

    .line 119
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "frame"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    goto :goto_1

    .line 115
    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 123
    :cond_5
    const-string v0, "OK"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v6

    move v1, v6

    .line 125
    :goto_4
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->X:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_7

    .line 126
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->aa:[Z

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_6

    shl-int v2, v7, v0

    or-int/2addr v1, v2

    .line 125
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 128
    :cond_7
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "GARAGE_FILTER"

    invoke-static {v0, v2, v1}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 130
    invoke-direct {p0}, Lcom/creativemobi/engine/ad;->e()V

    .line 131
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->Z:Z

    .line 132
    invoke-direct {p0, p1, v7}, Lcom/creativemobi/engine/ad;->c(Lcom/creativemobi/engine/w;I)V

    goto/16 :goto_1

    .line 137
    :cond_8
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->w:Z

    if-nez v0, :cond_11

    .line 138
    const-string v0, "FILTER"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 139
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->Z:Z

    goto/16 :goto_1

    .line 143
    :cond_9
    const-string v0, "test_drive"

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 144
    new-instance v0, Lcom/creativemobi/engine/k;

    invoke-direct {v0}, Lcom/creativemobi/engine/k;-><init>()V

    .line 145
    iput v6, v0, Lcom/creativemobi/engine/k;->e:I

    .line 146
    iput v6, v0, Lcom/creativemobi/engine/k;->d:I

    .line 147
    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->b(I)V

    .line 148
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->a(Lcom/creativemobi/engine/m;)V

    .line 149
    new-instance v1, Lcom/creativemobi/engine/cg;

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->a()[I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    iput-object v1, v0, Lcom/creativemobi/engine/k;->h:Lcom/creativemobi/engine/cg;

    .line 150
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v1, v0, v6}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 151
    invoke-static {v6}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    goto/16 :goto_1

    .line 155
    :cond_a
    const-string v0, "race_button"

    invoke-virtual {p1, v0, p2, p3, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 156
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->B()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/bl;->d(I)V

    .line 157
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/an;

    invoke-direct {v1}, Lcom/creativemobi/engine/an;-><init>()V

    invoke-interface {v0, v1, v6}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto/16 :goto_1

    .line 161
    :cond_b
    const-string v0, "upgrade"

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 162
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->c(Lcom/creativemobi/engine/w;I)V

    .line 163
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->p:Z

    goto/16 :goto_1

    .line 166
    :cond_c
    const-string v0, "buy"

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 167
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->w:Z

    goto/16 :goto_1

    .line 170
    :cond_d
    const-string v0, "sell"

    invoke-virtual {p1, v0, p2, p3, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 171
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->w:Z

    goto/16 :goto_1

    .line 174
    :cond_e
    const-string v0, "paint"

    const/high16 v1, 0x42200000    # 40.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 175
    invoke-direct {p0}, Lcom/creativemobi/engine/ad;->b()V

    .line 177
    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->c(Lcom/creativemobi/engine/w;I)V

    goto/16 :goto_1

    .line 181
    :cond_f
    const/4 v1, -0x1

    .line 182
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/m;

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "frame"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, p2, p3, v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 184
    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->B()I

    move-result v0

    .line 185
    iget v1, p0, Lcom/creativemobi/engine/ad;->j:I

    if-eq v0, v1, :cond_1

    .line 187
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v1

    iput-object v1, p0, Lcom/creativemobi/engine/ad;->l:Lcom/creativemobi/engine/m;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 195
    :goto_5
    if-ltz v0, :cond_0

    .line 196
    iput v0, p0, Lcom/creativemobi/engine/ad;->j:I

    .line 197
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "SELECTED_CAR_IDX"

    iget v2, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;I)V

    .line 198
    iget v0, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ad;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget v1, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/bl;->d(I)V

    goto/16 :goto_0

    .line 201
    :cond_11
    const-string v0, "NO"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 202
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    goto/16 :goto_0

    .line 203
    :cond_12
    const-string v0, "OK"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 204
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    goto/16 :goto_0

    .line 205
    :cond_13
    const-string v0, "get_money"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 206
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ba;

    invoke-direct {v1}, Lcom/creativemobi/engine/ba;-><init>()V

    invoke-interface {v0, v1, v6}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 207
    invoke-static {v7}, Lcom/creativemobi/DragRacing/menus/MainMenu;->a(I)V

    goto/16 :goto_0

    .line 208
    :cond_14
    const-string v0, "YES"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    const-string v0, "buy"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->f()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 210
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->z()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/m;I)V

    .line 212
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 215
    iget v0, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ad;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget v1, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/bl;->d(I)V

    goto/16 :goto_0

    .line 217
    :cond_15
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->B()I

    move-result v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->y()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x3f400000    # 0.75f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(II)V

    .line 219
    :try_start_1
    iget v0, p0, Lcom/creativemobi/engine/ad;->j:I

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ad;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 223
    :goto_6
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 224
    invoke-direct {p0, p1, v7}, Lcom/creativemobi/engine/ad;->c(Lcom/creativemobi/engine/w;I)V

    goto/16 :goto_0

    .line 231
    :pswitch_1
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->w:Z

    if-nez v0, :cond_20

    .line 232
    const-string v0, "buy"

    invoke-virtual {p1, v0, p2, p3, v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 233
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 234
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->x:Z

    goto/16 :goto_1

    .line 236
    :cond_16
    const-string v0, "sell_button"

    invoke-virtual {p1, v0, p2, p3, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 241
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 242
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->x:Z

    goto/16 :goto_1

    .line 244
    :cond_17
    const-string v0, "tune_button"

    invoke-virtual {p1, v0, p2, p3, v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 246
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 247
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    iget-object v0, v0, Lcom/creativemobi/engine/cg;->e:[F

    if-nez v0, :cond_18

    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->y:Z

    goto/16 :goto_1

    .line 248
    :cond_18
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ae;

    invoke-direct {v1}, Lcom/creativemobi/engine/ae;-><init>()V

    invoke-interface {v0, v1, v6}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto/16 :goto_1

    :cond_19
    move v0, v6

    .line 253
    :goto_7
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1a

    .line 254
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, p3, v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 255
    iput v0, p0, Lcom/creativemobi/engine/ad;->C:I

    .line 259
    :cond_1a
    const-string v0, "NO"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 260
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 261
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->y:Z

    goto/16 :goto_0

    .line 253
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 262
    :cond_1c
    const-string v0, "OK"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 263
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 264
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->y:Z

    goto/16 :goto_0

    .line 265
    :cond_1d
    const-string v0, "get_money"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 266
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ba;

    invoke-direct {v1}, Lcom/creativemobi/engine/ba;-><init>()V

    invoke-interface {v0, v1, v6}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto/16 :goto_0

    .line 267
    :cond_1e
    const-string v0, "YES"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-boolean v0, p0, Lcom/creativemobi/engine/ad;->y:Z

    if-eqz v0, :cond_0

    .line 269
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->y:Z

    .line 271
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->O()I

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/cg;->f:I

    .line 274
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->L()F

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/cg;->d:F

    .line 275
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/creativemobi/engine/cg;->e:[F

    move v1, v6

    .line 277
    :goto_8
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1f

    .line 278
    iget-object v2, v0, Lcom/creativemobi/engine/cg;->e:[F

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v3

    aget v3, v3, v1

    aput v3, v2, v1

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 281
    :cond_1f
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v1, v0}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/cg;)V

    .line 282
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->z()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/creativemobi/engine/i;->b:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->z()I

    move-result v2

    int-to-float v2, v2

    sget v3, Lcom/creativemobi/engine/i;->c:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(II)V

    .line 285
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ae;

    invoke-direct {v1}, Lcom/creativemobi/engine/ae;-><init>()V

    invoke-interface {v0, v1, v6}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto/16 :goto_0

    .line 290
    :cond_20
    const-string v0, "NO"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 291
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    goto/16 :goto_0

    .line 292
    :cond_21
    const-string v0, "OK"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 293
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 294
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->y:Z

    goto/16 :goto_0

    .line 295
    :cond_22
    const-string v0, "get_money"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 296
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ba;

    invoke-direct {v1}, Lcom/creativemobi/engine/ba;-><init>()V

    invoke-interface {v0, v1, v6}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto/16 :goto_0

    .line 297
    :cond_23
    const-string v0, "YES"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->x()I

    move-result v0

    .line 299
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->z()I

    move-result v1

    .line 301
    iget-boolean v2, p0, Lcom/creativemobi/engine/ad;->x:Z

    if-eqz v2, :cond_26

    .line 302
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    iget v3, p0, Lcom/creativemobi/engine/ad;->D:I

    invoke-interface {v1, v2, v3}, Lcom/creativemobi/engine/bl;->c(II)V

    .line 303
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v1, v1, Lcom/creativemobi/engine/m;->a:[I

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v3, v1, v2

    sub-int/2addr v3, v7

    aput v3, v1, v2

    .line 304
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v2, v2, Lcom/creativemobi/engine/m;->a:[I

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/m;->a([I)V

    .line 305
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->x()I

    move-result v1

    .line 306
    if-le v0, v1, :cond_24

    .line 307
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/creativemobi/engine/e;

    invoke-direct {v2, p0, v1}, Lcom/creativemobi/engine/e;-><init>(Lcom/creativemobi/engine/ad;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 316
    :cond_24
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v0, v0, Lcom/creativemobi/engine/m;->a:[I

    iget v1, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v0, v0, v1

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->b()[I

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v1, v1, v2

    if-ne v0, v1, :cond_25

    const-string v0, "sell_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 318
    :cond_25
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->q:Z

    .line 319
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->p:Z

    .line 320
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 321
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->x:Z

    goto/16 :goto_0

    .line 325
    :cond_26
    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->a:[I

    iget v4, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v3, v3, v4

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/creativemobi/engine/i;->b(III)F

    move-result v2

    float-to-int v2, v2

    .line 326
    iget v3, p0, Lcom/creativemobi/engine/ad;->D:I

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v4, v4, Lcom/creativemobi/engine/m;->a:[I

    iget v5, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v4, v4, v5

    add-int/lit8 v4, v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/creativemobi/engine/i;->a(III)I

    move-result v1

    .line 328
    iget-object v3, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget-object v4, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v4}, Lcom/creativemobi/engine/m;->B()I

    move-result v4

    iget v5, p0, Lcom/creativemobi/engine/ad;->D:I

    invoke-interface {v3, v4, v5, v2, v1}, Lcom/creativemobi/engine/bl;->a(IIII)V

    .line 329
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v1, v1, Lcom/creativemobi/engine/m;->a:[I

    iget v2, p0, Lcom/creativemobi/engine/ad;->D:I

    aget v3, v1, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v2

    .line 330
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v2, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v2, v2, Lcom/creativemobi/engine/m;->a:[I

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/m;->a([I)V

    .line 331
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->x()I

    move-result v1

    .line 332
    if-ge v0, v1, :cond_27

    .line 333
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/creativemobi/engine/d;

    invoke-direct {v2, p0, v1}, Lcom/creativemobi/engine/d;-><init>(Lcom/creativemobi/engine/ad;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 341
    :cond_27
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 342
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->q:Z

    .line 343
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->p:Z

    .line 344
    const-string v0, "sell_button"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->a(Z)V

    move v0, v6

    .line 347
    :goto_9
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v1, v1, Lcom/creativemobi/engine/m;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2e

    .line 348
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    iget-object v1, v1, Lcom/creativemobi/engine/m;->a:[I

    aget v1, v1, v0

    const/4 v2, 0x6

    if-eq v1, v2, :cond_28

    move v0, v6

    .line 353
    :goto_a
    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0xa

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;IF)V

    .line 356
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/creativemobi/engine/be;->b(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v1}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/creativemobi/engine/be;->a(Landroid/content/Context;)V

    .line 359
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/be;

    .line 360
    iget-object v2, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget v3, v0, Lcom/creativemobi/engine/be;->f:I

    invoke-interface {v2, v3}, Lcom/creativemobi/engine/bl;->f(I)V

    .line 361
    iget-object v2, v0, Lcom/creativemobi/engine/be;->b:Ljava/lang/String;

    iget v0, v0, Lcom/creativemobi/engine/be;->f:I

    iget-object v3, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v3}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lcom/creativemobi/engine/g;

    invoke-direct {v4, p0, v2, v0}, Lcom/creativemobi/engine/g;-><init>(Lcom/creativemobi/engine/ad;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_b

    .line 347
    :cond_28
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .line 371
    :pswitch_2
    invoke-direct {p0, p1, p2, p3, v7}, Lcom/creativemobi/engine/ad;->a(Lcom/creativemobi/engine/w;FFZ)V

    .line 373
    const-string v0, "apply"

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 374
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 386
    :cond_29
    :goto_c
    const-string v0, "NO"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 387
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    goto/16 :goto_0

    .line 375
    :cond_2a
    const-string v0, "reset"

    invoke-virtual {p1, v0, p2, p3, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 377
    invoke-direct {p0}, Lcom/creativemobi/engine/ad;->b()V

    .line 379
    const-string v0, "cp_cursor"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ad;->I:F

    const/high16 v2, 0x44480000    # 800.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x42a40000    # 82.0f

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 380
    const-string v0, "cp_point"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ad;->L:I

    int-to-float v1, v1

    iget v2, p0, Lcom/creativemobi/engine/ad;->J:F

    iget v3, p0, Lcom/creativemobi/engine/ad;->N:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/high16 v2, 0x41600000    # 14.0f

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/creativemobi/engine/ad;->M:I

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/creativemobi/engine/ad;->K:F

    sub-float/2addr v3, v4

    iget v4, p0, Lcom/creativemobi/engine/ad;->O:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const/high16 v3, 0x41500000    # 13.0f

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 383
    iput-boolean v7, p0, Lcom/creativemobi/engine/ad;->S:Z

    goto :goto_c

    .line 388
    :cond_2b
    const-string v0, "OK"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 389
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    goto/16 :goto_0

    .line 390
    :cond_2c
    const-string v0, "get_money"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 391
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ba;

    invoke-direct {v1}, Lcom/creativemobi/engine/ba;-><init>()V

    invoke-interface {v0, v1, v6}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto/16 :goto_0

    .line 392
    :cond_2d
    const-string v0, "YES"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 393
    iput-boolean v6, p0, Lcom/creativemobi/engine/ad;->w:Z

    .line 395
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->R:[F

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 397
    shr-int/lit8 v1, v0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    .line 398
    shr-int/lit8 v2, v0, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-float v2, v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v2, v3

    .line 399
    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v0, v3

    .line 401
    iget-object v3, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->B()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/creativemobi/engine/ad;->c(I)Lcom/creativemobi/engine/cg;

    move-result-object v3

    .line 402
    if-eqz v3, :cond_1

    .line 403
    mul-float/2addr v1, v8

    iput v1, v3, Lcom/creativemobi/engine/cg;->g:F

    .line 404
    mul-float v1, v2, v8

    iput v1, v3, Lcom/creativemobi/engine/cg;->h:F

    .line 405
    mul-float/2addr v0, v8

    iput v0, v3, Lcom/creativemobi/engine/cg;->i:F

    .line 406
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    invoke-interface {v0, v3}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/cg;)V

    .line 408
    iget-object v0, p0, Lcom/creativemobi/engine/ad;->d:Lcom/creativemobi/engine/bl;

    iget-object v1, p0, Lcom/creativemobi/engine/ad;->k:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->z()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcom/creativemobi/engine/i;->d:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/bl;->c(I)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_6

    .line 191
    :catch_1
    move-exception v1

    goto/16 :goto_5

    :cond_2e
    move v0, v7

    goto/16 :goto_a

    :cond_2f
    move v0, v1

    goto/16 :goto_5

    .line 112
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
