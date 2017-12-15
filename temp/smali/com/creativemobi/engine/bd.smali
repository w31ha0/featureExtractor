.class public final Lcom/creativemobi/engine/bd;
.super Ljava/lang/Object;
.source "ProLeagueView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# static fields
.field public static d:Ljava/lang/String;

.field private static l:[I


# instance fields
.field a:Ljava/util/ArrayList;

.field b:[Ljava/lang/String;

.field c:Lcom/creativemobi/engine/bl;

.field private e:Ljava/lang/String;

.field private f:I

.field private g:I

.field private h:I

.field private i:Landroid/graphics/Typeface;

.field private j:Z

.field private k:Ljava/util/ArrayList;

.field private m:Z

.field private n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/creativemobi/engine/bd;->l:[I

    .line 53
    const/4 v0, 0x0

    sput-object v0, Lcom/creativemobi/engine/bd;->d:Ljava/lang/String;

    return-void

    .line 28
    nop

    :array_0
    .array-data 4
        0x12c
        0x15e
        0x190
        0x1b8
        0x1db
        0x1f4
        0x20d
        0x226
        0x23f
        0x258
        0x0
        0x258
        0x258
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/bd;->a:Ljava/util/ArrayList;

    .line 17
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/creativemobi/engine/bd;->b:[Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/creativemobi/engine/bd;->e:Ljava/lang/String;

    .line 21
    const/4 v0, -0x1

    iput v0, p0, Lcom/creativemobi/engine/bd;->f:I

    .line 22
    iput v1, p0, Lcom/creativemobi/engine/bd;->g:I

    .line 23
    const/16 v0, 0x190

    iput v0, p0, Lcom/creativemobi/engine/bd;->h:I

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/bd;->j:Z

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    .line 54
    iput-boolean v1, p0, Lcom/creativemobi/engine/bd;->m:Z

    .line 537
    iput-boolean v1, p0, Lcom/creativemobi/engine/bd;->n:Z

    return-void
.end method

.method static synthetic a(Lcom/creativemobi/engine/bd;Ljava/lang/String;I)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Lcom/creativemobi/engine/bd;->a(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;II)Ljava/util/ArrayList;
    .locals 17

    .prologue
    .line 251
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 252
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x7e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x7e

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 255
    move-object/from16 v0, p1

    move-object v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 256
    const/4 v6, -0x1

    .line 257
    if-lez v4, :cond_f

    .line 258
    add-int/lit8 v6, v4, 0x3

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 259
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 260
    const/4 v7, 0x0

    move-object/from16 v0, p1

    move v1, v7

    move v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move/from16 v16, v6

    move-object v6, v4

    move/from16 v4, v16

    .line 262
    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 264
    array-length v6, v5

    const/4 v7, 0x0

    move/from16 v8, p2

    :goto_1
    if-ge v7, v6, :cond_0

    aget-object v9, v5, v7

    .line 265
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_0

    .line 266
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/16 v11, 0x7e

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 267
    new-instance v10, Lcom/creativemobi/engine/n;

    const/4 v11, 0x0

    aget-object v11, v9, v11

    const/4 v12, 0x1

    aget-object v9, v9, v12

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v10, v11, v9, v8}, Lcom/creativemobi/engine/n;-><init>(Ljava/lang/String;II)V

    .line 268
    add-int/lit8 v8, v8, 0x1

    .line 269
    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 273
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    invoke-interface {v5}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v5

    move-object v0, v5

    move/from16 v1, p3

    invoke-static {v0, v1}, Lcom/creativemobi/engine/bp;->a(Landroid/content/Context;I)I

    move-result v5

    .line 274
    const v6, 0x13880

    if-eq v4, v6, :cond_2

    const/4 v6, 0x1

    .line 275
    :goto_2
    if-nez v6, :cond_1

    const-wide v9, 0x40f3880000000000L    # 80000.0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->f:I

    move v4, v0

    add-int/lit8 v4, v4, 0x1

    int-to-double v11, v4

    invoke-static {v11, v12}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    double-to-int v4, v9

    .line 276
    :cond_1
    const/4 v7, 0x0

    .line 280
    const/4 v9, 0x0

    new-array v9, v9, [Lcom/creativemobi/engine/n;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/creativemobi/engine/n;

    .line 281
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 282
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 283
    const/4 v9, 0x0

    .line 285
    move-object/from16 v0, p1

    array-length v0, v0

    move v10, v0

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_3

    aget-object v12, p1, v11

    .line 286
    iput v9, v12, Lcom/creativemobi/engine/n;->c:I

    .line 287
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 288
    add-int/lit8 v9, v9, 0x1

    .line 285
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 274
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 292
    :cond_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/creativemobi/engine/n;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/creativemobi/engine/n;->b:I

    move v9, v0

    .line 294
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 296
    :goto_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/16 v12, 0x9

    if-lt v11, v12, :cond_5

    .line 297
    const/16 v11, 0x8

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 298
    invoke-virtual {v3}, Ljava/util/ArrayList;->trimToSize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 348
    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 350
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_4
    return-object v3

    .line 301
    :cond_5
    :try_start_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .line 303
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/creativemobi/engine/n;

    .line 304
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/creativemobi/engine/n;->a:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v14, v0

    invoke-interface {v14}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 305
    const/4 v7, 0x1

    .line 306
    move-object/from16 v0, p1

    iget v0, v0, Lcom/creativemobi/engine/n;->c:I

    move v11, v0

    .line 307
    move-object/from16 v0, p1

    iget v0, v0, Lcom/creativemobi/engine/n;->b:I

    move v12, v0

    if-eq v12, v5, :cond_e

    .line 308
    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->f:I

    move v12, v0

    invoke-static {v12, v5}, Lcom/creativemobi/engine/bp;->f(II)V

    move/from16 v16, v11

    move v11, v7

    move/from16 v7, v16

    .line 313
    :goto_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/creativemobi/engine/n;

    move-object/from16 v0, p1

    iget v0, v0, Lcom/creativemobi/engine/n;->b:I

    move v12, v0

    .line 314
    int-to-float v13, v9

    int-to-float v14, v12

    const v15, 0x3f8020c5    # 1.001f

    div-float/2addr v14, v15

    cmpg-float v13, v13, v14

    if-gez v13, :cond_7

    int-to-float v9, v12

    const v13, 0x3f8020c5    # 1.001f

    div-float/2addr v9, v13

    float-to-int v9, v9

    .line 316
    :cond_7
    if-ge v5, v12, :cond_d

    .line 317
    if-nez v6, :cond_8

    .line 318
    if-le v5, v9, :cond_c

    .line 319
    const/16 v4, 0xa

    .line 328
    :cond_8
    :goto_6
    new-instance v6, Lcom/creativemobi/engine/n;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v8, v0

    invoke-interface {v8}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8, v5, v4}, Lcom/creativemobi/engine/n;-><init>(Ljava/lang/String;II)V

    .line 329
    invoke-virtual {v3, v7, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object v4, v6

    .line 337
    :cond_9
    :goto_7
    const/4 v6, 0x0

    new-array v6, v6, [Lcom/creativemobi/engine/n;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/creativemobi/engine/n;

    .line 338
    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 339
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 340
    const/4 v6, 0x0

    .line 342
    move-object/from16 v0, p0

    array-length v0, v0

    move v7, v0

    const/4 v8, 0x0

    :goto_8
    if-ge v8, v7, :cond_4

    aget-object v9, p0, v8

    .line 343
    if-ge v5, v12, :cond_a

    if-eq v9, v4, :cond_b

    :cond_a
    iput v6, v9, Lcom/creativemobi/engine/n;->c:I

    .line 344
    :cond_b
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    add-int/lit8 v6, v6, 0x1

    .line 342
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 321
    :cond_c
    const/high16 v6, 0x3f800000    # 1.0f

    int-to-float v8, v5

    int-to-float v9, v9

    div-float/2addr v8, v9

    sub-float/2addr v6, v8

    .line 323
    float-to-double v8, v6

    const-wide v13, 0x3ffcccccc0000000L    # 1.7999999523162842

    invoke-static {v8, v9, v13, v14}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    double-to-float v6, v8

    .line 324
    int-to-float v4, v4

    mul-float/2addr v4, v6

    .line 325
    float-to-int v4, v4

    add-int/2addr v4, v10

    .line 326
    goto :goto_6

    .line 332
    :cond_d
    new-instance v4, Lcom/creativemobi/engine/n;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v6, v0

    invoke-interface {v6}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6, v5, v8}, Lcom/creativemobi/engine/n;-><init>(Ljava/lang/String;II)V

    .line 333
    invoke-virtual {v3, v7, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 334
    if-nez v11, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->f:I

    move v6, v0

    invoke-static {v6, v5}, Lcom/creativemobi/engine/bp;->f(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_7

    :cond_e
    move/from16 v16, v11

    move v11, v7

    move/from16 v7, v16

    goto/16 :goto_5

    :cond_f
    move v4, v6

    move-object/from16 v6, p1

    goto/16 :goto_0
.end method

.method private static a(Lcom/creativemobi/engine/x;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 522
    invoke-virtual {p0}, Lcom/creativemobi/engine/x;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v4

    .line 524
    :goto_0
    invoke-virtual {p0}, Lcom/creativemobi/engine/x;->a()F

    move-result v2

    const/high16 v3, 0x43200000    # 160.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 525
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/creativemobi/engine/x;->b()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    move v0, v5

    .line 527
    goto :goto_0

    .line 529
    :cond_0
    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/x;->a(Ljava/lang/String;)V

    .line 530
    return-void

    :cond_1
    move-object v0, v1

    .line 529
    goto :goto_1
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->g()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/creativemobi/engine/v;

    invoke-direct {v1, p0, p1}, Lcom/creativemobi/engine/v;-><init>(Lcom/creativemobi/engine/bd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    return-void
.end method

.method private b(I)Lcom/creativemobi/engine/cg;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

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

    .line 72
    iget v1, p0, Lcom/creativemobi/engine/cg;->a:I

    if-ne v1, p1, :cond_0

    move-object v0, p0

    .line 74
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Lcom/creativemobi/engine/w;)V
    .locals 3

    .prologue
    .line 126
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "frame"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "1_Disk1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "2_Disk1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;)V

    .line 126
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 133
    :cond_0
    return-void
.end method

.method private c(Lcom/creativemobi/engine/w;)V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "distance400Selected"

    invoke-static {v0, v1}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/creativemobi/engine/bd;->j:Z

    .line 550
    iget-boolean v0, p0, Lcom/creativemobi/engine/bd;->j:Z

    if-eqz v0, :cond_1

    .line 551
    const-string v0, "distance_switch_on"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_on"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 552
    const-string v0, "distance_switch_off"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_off"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 557
    :goto_0
    const/16 v0, 0x190

    iput v0, p0, Lcom/creativemobi/engine/bd;->h:I

    .line 558
    iget-boolean v0, p0, Lcom/creativemobi/engine/bd;->j:Z

    if-nez v0, :cond_0

    const/16 v0, 0x320

    iput v0, p0, Lcom/creativemobi/engine/bd;->h:I

    .line 559
    :cond_0
    return-void

    .line 554
    :cond_1
    const-string v0, "distance_switch_on"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_off"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 555
    const-string v0, "distance_switch_off"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v1, "distance_switch_on"

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 535
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 565
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 0

    .prologue
    .line 40
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 571
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 10

    .prologue
    .line 33
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "PRO LEAGUE"

    const/16 v2, 0x37

    const/16 v3, 0x85

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "TOP RACERS"

    const/16 v2, 0x21d

    const/16 v3, 0x85

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x1c

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    invoke-interface {v1, v0}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v1

    rem-int/lit8 v2, v0, 0x3

    mul-int/lit16 v2, v2, 0x96

    add-int/lit8 v2, v2, 0x3c

    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x40

    add-int/lit16 v3, v3, 0x96

    const v4, -0x777778

    if-gtz v1, :cond_0

    if-eqz v0, :cond_0

    const/16 v5, 0xa

    if-ne v0, v5, :cond_2

    :cond_0
    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    const/4 v6, 0x1

    sub-int v6, v0, v6

    invoke-interface {v5, v6}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v5

    sget-object v6, Lcom/creativemobi/engine/bd;->l:[I

    const/4 v7, 0x1

    sub-int v7, v0, v7

    aget v6, v6, v7

    if-lt v5, v6, :cond_3

    const/4 v5, 0x1

    :cond_1
    :goto_2
    if-eqz v5, :cond_5

    const v4, -0x112555

    if-lez v1, :cond_4

    new-instance v5, Lcom/creativemobi/engine/x;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "rank: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v6, v2, 0x3c

    add-int/lit8 v7, v3, 0x32

    invoke-direct {v5, v1, v6, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    move v1, v4

    move-object v4, v5

    :goto_3
    const/16 v5, 0x14

    const/4 v6, -0x1

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v8, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    const/16 v4, 0xa

    if-ne v0, v4, :cond_7

    new-instance v4, Lcom/creativemobi/engine/x;

    const-string v5, "RANDOM"

    add-int/lit8 v2, v2, 0x1e

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v4, v5, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    move-object v2, v4

    :goto_4
    const/16 v3, 0x19

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    const/4 v5, 0x0

    goto :goto_2

    :cond_4
    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v5, "not ranked"

    add-int/lit8 v6, v2, 0x3c

    add-int/lit8 v7, v3, 0x32

    invoke-direct {v1, v5, v6, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    move v9, v4

    move-object v4, v1

    move v1, v9

    goto :goto_3

    :cond_5
    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v5, "locked"

    add-int/lit8 v6, v2, 0x3c

    add-int/lit8 v7, v3, 0x32

    invoke-direct {v1, v5, v6, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v5, 0xa

    if-ne v0, v5, :cond_6

    add-int/lit16 v5, v2, 0x82

    iput v5, v1, Lcom/creativemobi/engine/x;->a:I

    :cond_6
    move v9, v4

    move-object v4, v1

    move v1, v9

    goto :goto_3

    :cond_7
    new-instance v4, Lcom/creativemobi/engine/x;

    const-string v5, "LEVEL %1$d"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1e

    add-int/lit8 v3, v3, 0x1b

    invoke-direct {v4, v5, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    move-object v2, v4

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_5
    iget-object v1, p0, Lcom/creativemobi/engine/bd;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    iget-object v1, p0, Lcom/creativemobi/engine/bd;->a:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/creativemobi/engine/n;

    iget-object v1, p2, Lcom/creativemobi/engine/n;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    invoke-interface {v2}, Lcom/creativemobi/engine/bl;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    const v1, -0x112555

    :goto_6
    iget v2, p2, Lcom/creativemobi/engine/n;->c:I

    iget-object v3, p0, Lcom/creativemobi/engine/bd;->a:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_a

    new-instance v2, Lcom/creativemobi/engine/x;

    const-string v3, "%1$d. %2$s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    add-int/lit8 v6, v0, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Lcom/creativemobi/engine/n;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21c

    mul-int/lit8 v5, v0, 0x1f

    add-int/lit16 v5, v5, 0xaa

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    :goto_7
    const/16 v3, 0x16

    sget-object v4, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-static {v2}, Lcom/creativemobi/engine/bd;->a(Lcom/creativemobi/engine/x;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v1, Lcom/creativemobi/engine/x;

    const-string v2, "%1$d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p2, Lcom/creativemobi/engine/n;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x2f2

    mul-int/lit8 v4, v0, 0x1f

    add-int/lit16 v4, v4, 0xaa

    invoke-direct {v1, v2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v2, 0x16

    const v3, -0x112555

    sget-object v4, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v5, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_5

    :cond_9
    const/4 v1, -0x1

    goto :goto_6

    :cond_a
    new-instance v2, Lcom/creativemobi/engine/x;

    const-string v3, "%1$d. %2$s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget v6, p2, Lcom/creativemobi/engine/n;->c:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p2, Lcom/creativemobi/engine/n;->a:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x21c

    mul-int/lit8 v5, v0, 0x1f

    add-int/lit16 v5, v5, 0xaa

    invoke-direct {v2, v3, v4, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    goto :goto_7

    :cond_b
    iget-object v0, p0, Lcom/creativemobi/engine/bd;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "loading..."

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/creativemobi/engine/bd;->e:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v2, 0xc8

    invoke-static {v1, v0, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    :goto_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    new-instance v2, Lcom/creativemobi/engine/x;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/16 v3, 0x21c

    mul-int/lit8 v4, v1, 0x1f

    add-int/lit16 v4, v4, 0xaa

    invoke-direct {v2, p2, v3, v4}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v3, 0x18

    const/4 v4, -0x1

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_c
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "distance:"

    const/16 v2, 0x15b

    const/16 v3, 0x84

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x16

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "1/4mi"

    const/16 v2, 0x16a

    const/16 v3, 0x83

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "1/2mi"

    const/16 v2, 0x1b2

    const/16 v3, 0x83

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    const/16 v1, 0x18

    const/4 v2, -0x1

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 34
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 9

    .prologue
    const/16 v5, 0x32

    const/16 v4, 0x14

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 375
    iput-object p3, p0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    .line 377
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 380
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 381
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v6, v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 383
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/bd;->i:Landroid/graphics/Typeface;

    .line 385
    const-string v0, "nextButton"

    const-string v1, "graphics/garage/race_button.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 386
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 388
    const-string v0, "nextButton"

    const-string v1, "nextButton"

    const/16 v2, 0x294

    const/16 v3, 0x1a9

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 389
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x1f4

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 391
    const-string v0, "hint"

    const-string v1, "graphics/menu/hint_cars.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 392
    const-string v0, "frame"

    const-string v1, "graphics/garage/frame.png"

    const/16 v2, 0x74

    invoke-virtual {p1, v0, v1, v2, v5}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 393
    const-string v0, "frameHL"

    const-string v1, "graphics/garage/frame_hl.png"

    const/16 v2, 0x74

    invoke-virtual {p1, v0, v1, v2, v5}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/l;

    .line 394
    const-string v0, "line"

    const-string v1, "hint"

    const/16 v2, 0x19e

    invoke-virtual {p1, v0, v1, v4, v2}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 396
    const-string v0, "pro_frame_locked"

    const-string v1, "graphics/menu/pro_frame_locked.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 398
    const-string v0, "pro_frame"

    const-string v1, "graphics/menu/pro_frame.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 401
    const-string v0, "checkbox_off"

    const-string v1, "graphics/menu/checkbox_off.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 402
    const-string v0, "checkbox_on"

    const-string v1, "graphics/menu/checkbox_on.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 403
    const-string v0, "lock"

    const-string v1, "graphics/menu/lock.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 406
    const-string v0, "header"

    const-string v1, "graphics/menu/pro_league.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 407
    const-string v0, "header"

    const-string v1, "header"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0xf0

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 409
    const-string v0, "distance_switch_off"

    const-string v1, "graphics/menu/distance_switch_off.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 410
    const-string v0, "distance_switch_on"

    const-string v1, "graphics/menu/distance_switch_on.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 411
    const-string v0, "distance_switch_on"

    const-string v1, "distance_switch_on"

    const/16 v2, 0x160

    const/16 v3, 0x6c

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 412
    const-string v0, "distance_switch_off"

    const-string v1, "distance_switch_off"

    const/16 v2, 0x1a8

    const/16 v3, 0x6c

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 414
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/bd;->c(Lcom/creativemobi/engine/w;)V

    move v0, v6

    .line 416
    :goto_0
    const/16 v1, 0xb

    if-ge v0, v1, :cond_6

    .line 417
    invoke-interface {p3, v0}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v1

    .line 418
    rem-int/lit8 v2, v0, 0x3

    mul-int/lit16 v2, v2, 0x96

    add-int/lit8 v2, v2, 0x3c

    .line 419
    div-int/lit8 v3, v0, 0x3

    mul-int/lit8 v3, v3, 0x40

    add-int/lit16 v3, v3, 0x96

    .line 421
    if-gtz v1, :cond_0

    if-eqz v0, :cond_0

    if-ne v0, v8, :cond_3

    :cond_0
    move v1, v7

    .line 422
    :goto_1
    if-nez v1, :cond_1

    sub-int v1, v0, v7

    invoke-interface {p3, v1}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v1

    sget-object v4, Lcom/creativemobi/engine/bd;->l:[I

    sub-int v5, v0, v7

    aget v4, v4, v5

    if-lt v1, v4, :cond_4

    move v1, v7

    .line 424
    :cond_1
    :goto_2
    const-string v4, "pro_frame"

    .line 425
    if-nez v1, :cond_2

    const-string v4, "pro_frame_locked"

    .line 428
    :cond_2
    if-eqz v1, :cond_5

    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEVEL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkbox"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "checkbox_off"

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {p1, v1, v4, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 416
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v1, v6

    .line 421
    goto :goto_1

    :cond_4
    move v1, v6

    .line 422
    goto :goto_2

    .line 432
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LEVEL"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v4, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    .line 433
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkbox"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "lock"

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v3, 0x5

    invoke-virtual {p1, v1, v4, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/creativemobi/engine/cd;->a(I)V

    goto :goto_3

    .line 436
    :cond_6
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 3

    .prologue
    .line 544
    iget-object v0, p0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/an;

    invoke-direct {v1}, Lcom/creativemobi/engine/an;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 545
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 18

    .prologue
    .line 137
    const-string v5, "distance_switch_on"

    const/high16 v6, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    invoke-interface {v5}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "distance400Selected"

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 139
    invoke-direct/range {p0 .. p1}, Lcom/creativemobi/engine/bd;->c(Lcom/creativemobi/engine/w;)V

    .line 247
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    const-string v5, "distance_switch_off"

    const/high16 v6, 0x41200000    # 10.0f

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 143
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    invoke-interface {v5}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "distance400Selected"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 144
    invoke-direct/range {p0 .. p1}, Lcom/creativemobi/engine/bd;->c(Lcom/creativemobi/engine/w;)V

    goto :goto_0

    .line 148
    :cond_2
    const-string v5, "nextButton"

    const/high16 v6, 0x42480000    # 50.0f

    move-object/from16 v0, p1

    move-object v1, v5

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 149
    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->f:I

    move v5, v0

    if-ltz v5, :cond_5

    .line 150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->f:I

    move v5, v0

    const/16 v6, 0xa

    if-eq v5, v6, :cond_3

    .line 151
    const-string v5, "You don\'t have any cars for this level!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/creativemobi/engine/bd;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 153
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/creativemobi/engine/bd;->m:Z

    move v5, v0

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->f:I

    move v5, v0

    if-ltz v5, :cond_0

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/creativemobi/engine/bd;->m:Z

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->f:I

    move v5, v0

    const/16 v6, 0xa

    if-eq v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    invoke-interface {v5}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "PRO_SELECTED_CAR"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    move-object v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->g:I

    move v8, v0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/creativemobi/engine/m;

    invoke-virtual/range {p1 .. p1}, Lcom/creativemobi/engine/m;->B()I

    move-result v7

    invoke-static {v5, v6, v7}, Lcom/creativemobi/engine/ac;->a(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_4
    new-instance v5, Lcom/creativemobi/engine/u;

    invoke-direct {v5}, Lcom/creativemobi/engine/u;-><init>()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->h:I

    move v6, v0

    iput v6, v5, Lcom/creativemobi/engine/u;->d:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->f:I

    move v6, v0

    iput v6, v5, Lcom/creativemobi/engine/u;->b:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    move-object v6, v0

    iput-object v6, v5, Lcom/creativemobi/engine/u;->e:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->g:I

    move v6, v0

    iput v6, v5, Lcom/creativemobi/engine/u;->c:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v6, v0

    const/4 v7, 0x0

    invoke-interface {v6, v5, v7}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    goto/16 :goto_0

    .line 157
    :cond_5
    const-string v5, "Please select level!"

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/creativemobi/engine/bd;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 162
    :cond_6
    const/4 v5, -0x1

    .line 164
    const/4 v6, 0x0

    :goto_1
    const/16 v7, 0xa

    if-ge v6, v7, :cond_7

    .line 165
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "frame"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v7

    .line 166
    if-eqz v7, :cond_7

    .line 167
    const/high16 v8, 0x41c80000    # 25.0f

    move-object v0, v7

    move/from16 v1, p2

    move/from16 v2, p3

    move v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/cd;->a(FFF)Z

    move-result v7

    if-eqz v7, :cond_8

    move v5, v6

    .line 173
    :cond_7
    if-ltz v5, :cond_a

    .line 174
    const/4 v6, 0x0

    :goto_2
    const/16 v7, 0xa

    if-ge v6, v7, :cond_0

    .line 175
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "frame"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p1

    move-object v1, v7

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v7

    .line 176
    if-eqz v7, :cond_0

    .line 177
    if-eq v5, v6, :cond_9

    const-string v8, "frame"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 174
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 164
    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 179
    :cond_9
    const-string v8, "frameHL"

    move-object/from16 v0, p1

    move-object v1, v8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 180
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/creativemobi/engine/bd;->g:I

    goto :goto_3

    .line 186
    :cond_a
    const/4 v5, -0x1

    .line 188
    const/4 v6, 0x0

    :goto_4
    const/16 v7, 0xb

    if-ge v6, v7, :cond_1e

    .line 189
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "LEVEL"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/high16 v8, 0x41f00000    # 30.0f

    move-object/from16 v0, p1

    move-object v1, v7

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v7

    if-eqz v7, :cond_13

    move v12, v6

    .line 195
    :goto_5
    const/16 v5, 0xa

    if-gt v12, v5, :cond_0

    if-ltz v12, :cond_0

    .line 196
    invoke-static/range {p1 .. p1}, Lcom/creativemobi/engine/bd;->b(Lcom/creativemobi/engine/w;)V

    .line 197
    const/4 v5, 0x0

    move v13, v5

    :goto_6
    const/16 v5, 0xb

    if-ge v13, v5, :cond_0

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    invoke-interface {v5, v13}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v5

    .line 199
    if-gtz v5, :cond_b

    if-eqz v13, :cond_b

    const/16 v5, 0xa

    if-ne v13, v5, :cond_14

    :cond_b
    const/4 v5, 0x1

    .line 200
    :goto_7
    if-nez v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    const/4 v6, 0x1

    sub-int v6, v13, v6

    invoke-interface {v5, v6}, Lcom/creativemobi/engine/bl;->g(I)I

    move-result v5

    sget-object v6, Lcom/creativemobi/engine/bd;->l:[I

    const/4 v7, 0x1

    sub-int v7, v13, v7

    aget v6, v6, v7

    if-lt v5, v6, :cond_15

    const/4 v5, 0x1

    .line 202
    :cond_c
    :goto_8
    if-eqz v5, :cond_1d

    .line 203
    if-ne v12, v13, :cond_1b

    .line 204
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/creativemobi/engine/bd;->f:I

    .line 205
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkbox"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const-string v6, "checkbox_on"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->b:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v12

    if-nez v5, :cond_16

    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/creativemobi/engine/t;

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v12

    invoke-direct {v0, v1, v2}, Lcom/creativemobi/engine/t;-><init>(Lcom/creativemobi/engine/bd;I)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 208
    :goto_9
    const/16 v5, 0xa

    if-eq v12, v5, :cond_1c

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    invoke-interface {v5}, Lcom/creativemobi/engine/bl;->d()Ljava/util/ArrayList;

    move-result-object v5

    .line 210
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 211
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_d
    :goto_a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_e

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/creativemobi/engine/cg;

    .line 213
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/creativemobi/engine/cg;->a:I

    move v8, v0

    invoke-interface {v6, v7, v8}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v6

    .line 214
    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/cg;->b()[I

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/creativemobi/engine/m;->a([I)V

    .line 215
    invoke-virtual {v6}, Lcom/creativemobi/engine/m;->x()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->f:I

    move v7, v0

    if-ne v6, v7, :cond_d

    .line 216
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v6, v0

    move-object/from16 v0, p2

    iget v0, v0, Lcom/creativemobi/engine/cg;->a:I

    move v7, v0

    move-object v0, v6

    move-object/from16 v1, p1

    move v2, v7

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v6

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    move-object v6, v0

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v6

    const/4 v7, 0x5

    if-lt v6, v7, :cond_d

    .line 224
    :cond_e
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/creativemobi/engine/bd;->g:I

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v5, v0

    invoke-interface {v5}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "PRO_SELECTED_CAR"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/creativemobi/engine/ac;->b(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v5

    .line 226
    const/4 v6, 0x0

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_f

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    move-object v7, v0

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/creativemobi/engine/m;

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->B()I

    move-result v7

    if-ne v7, v5, :cond_17

    .line 228
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/creativemobi/engine/bd;->g:I

    .line 232
    :cond_f
    const/4 v5, 0x0

    move v14, v5

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v14, v5, :cond_1c

    .line 233
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    mul-int/lit8 v5, v14, 0x78

    add-int/lit8 v16, v5, 0x32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->k:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/creativemobi/engine/m;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/creativemobi/engine/bd;->g:I

    move v5, v0

    if-ne v14, v5, :cond_18

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "texture"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->B()I

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/creativemobi/engine/bd;->b(I)Lcom/creativemobi/engine/cg;

    move-result-object v5

    if-eqz v5, :cond_19

    iget v7, v5, Lcom/creativemobi/engine/cg;->g:F

    invoke-static {v7}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-nez v7, :cond_19

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "graphics/cars/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v9, v5, Lcom/creativemobi/engine/cg;->g:F

    iget v10, v5, Lcom/creativemobi/engine/cg;->h:F

    iget v11, v5, Lcom/creativemobi/engine/cg;->i:F

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    :goto_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_Details"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v5

    if-nez v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_Details"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "graphics/cars/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_Detail.png"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    :cond_10
    add-int/lit8 v5, v16, 0x38

    const/16 v7, 0x1d1

    move-object/from16 v0, p1

    move-object v1, v15

    move-object v2, v6

    move v3, v5

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->b(F)V

    invoke-virtual {v5}, Lcom/creativemobi/engine/cd;->j()V

    invoke-virtual {v5}, Lcom/creativemobi/engine/cd;->k()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Details"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_Details"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v16, 0x38

    const/16 v8, 0x1d1

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->b(F)V

    invoke-virtual {v5}, Lcom/creativemobi/engine/cd;->j()V

    invoke-virtual {v5}, Lcom/creativemobi/engine/cd;->k()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Disk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v5

    if-nez v5, :cond_11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "_Disk"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "graphics/cars/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_Disk.png"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    move-result-object v5

    invoke-virtual {v5}, Lcom/creativemobi/engine/l;->c()V

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v5

    :try_start_1
    invoke-virtual {v5}, Lcom/creativemobi/engine/l;->a()I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->c:Lcom/creativemobi/engine/bl;

    move-object v6, v0

    invoke-interface {v6}, Lcom/creativemobi/engine/bl;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/l;->a(Landroid/content/Context;)V

    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1_Disk1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_Disk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v16, 0x38

    int-to-float v8, v8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/creativemobi/engine/m;->b:Landroid/graphics/Point;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {v5}, Lcom/creativemobi/engine/l;->a()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const v9, 0x43e88000    # 465.0f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/creativemobi/engine/m;->b:Landroid/graphics/Point;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v5}, Lcom/creativemobi/engine/l;->b()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    const v11, 0x3e99999a    # 0.3f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v6

    const/16 v7, 0xe

    invoke-virtual {v6, v7}, Lcom/creativemobi/engine/cd;->a(I)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "2_Disk1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_Disk"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v8, v16, 0x38

    int-to-float v8, v8

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/creativemobi/engine/m;->c:Landroid/graphics/Point;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-virtual {v5}, Lcom/creativemobi/engine/l;->a()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    const v9, 0x43e88000    # 465.0f

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/creativemobi/engine/m;->c:Landroid/graphics/Point;

    move-object v10, v0

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v5}, Lcom/creativemobi/engine/l;->b()I

    move-result v5

    sub-int v5, v10, v5

    int-to-float v5, v5

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v5, v10

    add-float/2addr v5, v9

    move-object/from16 v0, p1

    move-object v1, v6

    move-object v2, v7

    move v3, v8

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;FF)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "1_Disk1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->b(F)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "2_Disk1"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const v6, 0x3e99999a    # 0.3f

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->b(F)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_f
    if-nez v17, :cond_1a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "frame"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "frame"

    const/4 v7, 0x5

    sub-int v7, v16, v7

    const/16 v8, 0x1a4

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 232
    :goto_10
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto/16 :goto_c

    .line 188
    :cond_13
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_4

    .line 199
    :cond_14
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 200
    :cond_15
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 206
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->b:[Ljava/lang/String;

    move-object v5, v0

    aget-object v5, v5, v12

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v6

    move v3, v12

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/bd;->a(Ljava/lang/String;II)Ljava/util/ArrayList;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/bd;->a:Ljava/util/ArrayList;

    goto/16 :goto_9

    .line 226
    :cond_17
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_b

    .line 233
    :cond_18
    const/4 v5, 0x0

    move/from16 v17, v5

    goto/16 :goto_d

    :cond_19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "graphics/cars/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->t()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".png"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->P()F

    move-result v9

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->Q()F

    move-result v10

    invoke-virtual/range {p2 .. p2}, Lcom/creativemobi/engine/m;->R()F

    move-result v11

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v11}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    goto/16 :goto_e

    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "frame"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "frameHL"

    const/16 v7, 0x1a4

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    move/from16 v3, v16

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const/16 v6, 0xb

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    goto/16 :goto_10

    .line 236
    :cond_1b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkbox"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v5

    const-string v6, "checkbox_off"

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 197
    :cond_1c
    :goto_11
    add-int/lit8 v5, v13, 0x1

    move v13, v5

    goto/16 :goto_6

    .line 238
    :cond_1d
    if-ne v12, v13, :cond_1c

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/creativemobi/engine/bd;->a:Ljava/util/ArrayList;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 240
    const-string v5, "You must achieve a rank of %1$d or more on level %2$d to unlock this level."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lcom/creativemobi/engine/bd;->l:[I

    const/4 v9, 0x1

    sub-int v9, v13, v9

    aget v8, v8, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/creativemobi/engine/bd;->e:Ljava/lang/String;

    goto :goto_11

    :catch_0
    move-exception v5

    goto/16 :goto_f

    .line 221
    :catch_1
    move-exception v6

    goto/16 :goto_a

    :cond_1e
    move v12, v5

    goto/16 :goto_5
.end method
