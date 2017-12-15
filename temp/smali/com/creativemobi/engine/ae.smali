.class public final Lcom/creativemobi/engine/ae;
.super Ljava/lang/Object;
.source "TuningView.java"

# interfaces
.implements Lcom/creativemobi/engine/y;


# static fields
.field private static final A:[Ljava/lang/String;

.field private static p:Lcom/creativemobi/engine/cg;

.field private static y:I


# instance fields
.field private B:[Lcom/creativemobi/engine/cg;

.field private C:[Ljava/lang/String;

.field private D:[F

.field private E:I

.field private F:I

.field private G:I

.field private a:F

.field private b:I

.field private c:I

.field private d:Landroid/graphics/Typeface;

.field private e:Lcom/creativemobi/engine/bl;

.field private f:F

.field private g:F

.field private h:I

.field private i:I

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:F

.field private o:Lcom/creativemobi/engine/m;

.field private q:F

.field private r:F

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/util/ArrayList;

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x6

    .line 48
    sput v0, Lcom/creativemobi/engine/ae;->y:I

    .line 50
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Stock"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "1/4 mile A"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "1/2 mile A"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Test"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "1/4 mile B"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "1/2 mile B"

    aput-object v2, v0, v1

    sput-object v0, Lcom/creativemobi/engine/ae;->A:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x9

    const/4 v3, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/creativemobi/engine/ae;->a:F

    .line 19
    iput v2, p0, Lcom/creativemobi/engine/ae;->b:I

    .line 20
    iput v2, p0, Lcom/creativemobi/engine/ae;->c:I

    .line 24
    iput v0, p0, Lcom/creativemobi/engine/ae;->f:F

    .line 25
    iput v0, p0, Lcom/creativemobi/engine/ae;->g:F

    .line 27
    const/16 v0, 0x50

    iput v0, p0, Lcom/creativemobi/engine/ae;->h:I

    .line 28
    const/16 v0, 0xdc

    iput v0, p0, Lcom/creativemobi/engine/ae;->i:I

    .line 29
    const/16 v0, 0x195

    iput v0, p0, Lcom/creativemobi/engine/ae;->j:I

    .line 31
    iput-boolean v3, p0, Lcom/creativemobi/engine/ae;->k:Z

    .line 32
    iput-boolean v2, p0, Lcom/creativemobi/engine/ae;->l:Z

    .line 33
    iput-boolean v2, p0, Lcom/creativemobi/engine/ae;->m:Z

    .line 34
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/creativemobi/engine/ae;->n:F

    .line 40
    const-string v0, "Tuning is for advanced racers only - make sure you know what you are doing!\n\nChanges you make will apply automatically and free of charge."

    iput-object v0, p0, Lcom/creativemobi/engine/ae;->s:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/creativemobi/engine/ae;->x:Ljava/util/ArrayList;

    .line 53
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "NITROUS DURATION"

    aput-object v1, v0, v2

    const-string v1, "FINAL DRIVE"

    aput-object v1, v0, v3

    const/4 v1, 0x2

    const-string v2, "1st GEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "2nd GEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "3rd GEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "4th GEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "5th GEAR"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "6th GEAR"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "7th GEAR"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/creativemobi/engine/ae;->C:[Ljava/lang/String;

    .line 56
    new-array v0, v4, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    .line 422
    const/16 v0, 0xaa

    iput v0, p0, Lcom/creativemobi/engine/ae;->E:I

    .line 423
    const/16 v0, 0x15e

    iput v0, p0, Lcom/creativemobi/engine/ae;->F:I

    .line 424
    const/16 v0, 0x28

    iput v0, p0, Lcom/creativemobi/engine/ae;->G:I

    return-void

    .line 56
    nop

    :array_0
    .array-data 4
        0x40400000    # 3.0f
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
    .end array-data
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    const/16 v7, 0x1e

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 90
    :try_start_0
    const-string v0, "Mercedes-Benz"

    const-string v1, "MB"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Aston Martin"

    const-string v2, "AM"

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

    const-string v1, "Ferrary"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 92
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 97
    aget-object v1, v0, v5

    .line 98
    aget-object v2, v0, v5

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    move-object v3, v1

    move v1, v6

    .line 100
    :goto_0
    array-length v4, v0

    if-ge v1, v4, :cond_1

    .line 101
    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v2, v4

    .line 102
    if-ge v2, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    const-string v0, "unknown"

    .line 106
    :goto_1
    return-object v0

    .line 103
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v0, v0, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    sub-int v1, v7, v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v5, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    .line 106
    goto :goto_1
.end method

.method private a(Lcom/creativemobi/engine/w;Ljava/lang/String;)V
    .locals 12

    .prologue
    const/16 v11, 0x2d

    const/16 v10, 0x1c

    const/high16 v4, 0x42c80000    # 100.0f

    const/high16 v5, 0x42a00000    # 80.0f

    const/4 v9, -0x1

    .line 503
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "CONFIRMATION"

    const/16 v2, 0x32

    const/16 v3, 0x87

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 504
    const/16 v1, 0x24

    const/high16 v2, -0x1000000

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2, v3, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 505
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 507
    new-instance v0, Lcom/creativemobi/engine/x;

    const/16 v1, 0x12c

    const/16 v2, 0xd2

    invoke-direct {v0, p2, v1, v2}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 508
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v10, v9, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 510
    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ae;->j:I

    invoke-static {p2, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 511
    const/4 v1, 0x0

    .line 512
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 513
    new-instance v3, Lcom/creativemobi/engine/x;

    iget v6, p0, Lcom/creativemobi/engine/ae;->h:I

    iget v7, p0, Lcom/creativemobi/engine/ae;->i:I

    add-int/lit8 v7, v7, 0x28

    mul-int/lit8 v8, v1, 0x1e

    add-int/2addr v7, v8

    invoke-direct {v3, v0, v6, v7}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 514
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v3, v10, v9, v0, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 515
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 516
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 519
    :cond_0
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "YES"

    iget v2, p0, Lcom/creativemobi/engine/ae;->h:I

    add-int/lit8 v2, v2, 0x32

    iget v3, p0, Lcom/creativemobi/engine/ae;->i:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 520
    const v1, -0x112555

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 521
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 523
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "NO"

    iget v2, p0, Lcom/creativemobi/engine/ae;->h:I

    add-int/lit16 v2, v2, 0x104

    iget v3, p0, Lcom/creativemobi/engine/ae;->i:I

    add-int/lit16 v3, v3, 0x96

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 524
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v11, v9, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 525
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 527
    const-string v1, "YES"

    iget v0, p0, Lcom/creativemobi/engine/ae;->h:I

    add-int/lit8 v0, v0, 0x28

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ae;->i:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 528
    const-string v1, "NO"

    iget v0, p0, Lcom/creativemobi/engine/ae;->h:I

    add-int/lit16 v0, v0, 0xfa

    int-to-float v2, v0

    iget v0, p0, Lcom/creativemobi/engine/ae;->i:I

    add-int/lit8 v0, v0, 0x64

    int-to-float v3, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 529
    return-void
.end method

.method private b()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 310
    sget-object v0, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/cg;->f:I

    .line 311
    sget-object v0, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/creativemobi/engine/cg;->d:F

    .line 312
    sget-object v0, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/creativemobi/engine/cg;->e:[F

    move v0, v4

    .line 314
    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 315
    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v1, v1, Lcom/creativemobi/engine/cg;->e:[F

    sub-int v2, v0, v4

    iget-object v3, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v3, v3, v0

    aput v3, v1, v2

    .line 314
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 318
    :cond_0
    return-void
.end method

.method private b(I)V
    .locals 7

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const v6, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const/high16 v5, 0x40a00000    # 5.0f

    const/4 v4, 0x1

    .line 293
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v0, v0, v2

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    const/high16 v1, 0x40000000    # 2.0f

    aput v1, v0, v2

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v0, v0, v2

    cmpl-float v0, v0, v5

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    aput v5, v0, v2

    .line 296
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v0, v0, v4

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    aput v3, v0, v4

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v0, v0, v4

    cmpl-float v0, v0, v5

    if-lez v0, :cond_3

    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    aput v5, v0, v4

    .line 300
    :cond_3
    const/4 v0, 0x2

    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 301
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v1, v1, v0

    cmpg-float v1, v1, v6

    if-gez v1, :cond_4

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    aput v6, v1, v0

    .line 302
    :cond_4
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v1, v1, v0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    aput v5, v1, v0

    .line 304
    :cond_5
    const/4 v1, 0x3

    if-lt v0, v1, :cond_6

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    sub-int v2, v0, v4

    aget v1, v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v2, v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    sub-int v2, v0, v4

    iget-object v3, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v3, v3, v0

    aput v3, v1, v2

    .line 305
    :cond_6
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    array-length v1, v1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_7

    if-lt v0, p1, :cond_7

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    add-int/lit8 v2, v0, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v2, v2, v0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_7

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v3, v3, v0

    aput v3, v1, v2

    .line 300
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 307
    :cond_8
    return-void
.end method

.method private b(Lcom/creativemobi/engine/w;)V
    .locals 14

    .prologue
    const/16 v13, 0x18

    const/16 v12, 0x14

    const v11, -0x777778

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 427
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, ""

    invoke-direct {v0, v1, v9, v9}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    move v0, v9

    .line 428
    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->C:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_8

    .line 429
    iget v1, p0, Lcom/creativemobi/engine/ae;->a:F

    float-to-int v1, v1

    mul-int/lit8 v2, v0, 0x3c

    add-int/2addr v1, v2

    iget v2, p0, Lcom/creativemobi/engine/ae;->E:I

    add-int/2addr v1, v2

    .line 431
    iget v2, p0, Lcom/creativemobi/engine/ae;->E:I

    const/16 v3, 0x3c

    sub-int/2addr v2, v3

    if-lt v1, v2, :cond_0

    iget v2, p0, Lcom/creativemobi/engine/ae;->F:I

    add-int/lit8 v2, v2, 0x3c

    if-le v1, v2, :cond_2

    :cond_0
    invoke-static {p1, v0}, Lcom/creativemobi/engine/ae;->b(Lcom/creativemobi/engine/w;I)V

    .line 434
    :goto_1
    iget-object v2, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, 0x2

    if-ge v0, v2, :cond_1

    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->F()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    move v2, v10

    .line 436
    :goto_2
    new-instance v3, Lcom/creativemobi/engine/x;

    iget-object v4, p0, Lcom/creativemobi/engine/ae;->C:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget v5, p0, Lcom/creativemobi/engine/ae;->G:I

    add-int/lit8 v5, v5, 0x14

    invoke-direct {v3, v4, v5, v1}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 437
    if-eqz v2, :cond_4

    move v4, v11

    :goto_3
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v6, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v3, v13, v4, v5, v6}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 438
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 439
    iget v4, p0, Lcom/creativemobi/engine/ae;->E:I

    sub-int/2addr v4, v12

    invoke-virtual {v3, v4}, Lcom/creativemobi/engine/x;->a(I)V

    .line 441
    if-nez v0, :cond_6

    .line 442
    new-instance v3, Lcom/creativemobi/engine/x;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%.2f s @ %.0f"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v7, v7, v0

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v9

    const/high16 v7, 0x43960000    # 300.0f

    iget-object v8, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v8, v8, v0

    div-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e0

    invoke-direct {v3, v4, v5, v1}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 443
    if-eqz v2, :cond_5

    move v1, v11

    :goto_4
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v3, v13, v1, v2, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 444
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 445
    iget v1, p0, Lcom/creativemobi/engine/ae;->E:I

    sub-int/2addr v1, v12

    invoke-virtual {v3, v1}, Lcom/creativemobi/engine/x;->a(I)V

    .line 428
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 432
    :cond_2
    iget-object v2, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v2, v2, v0

    const/high16 v3, 0x40a00000    # 5.0f

    div-float/2addr v2, v3

    add-int/lit8 v3, v1, 0xa

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "slider"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v4

    iget v5, p0, Lcom/creativemobi/engine/ae;->G:I

    add-int/lit8 v5, v5, 0x1e

    int-to-float v5, v5

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v2, v6

    add-float/2addr v2, v5

    const/4 v5, 0x2

    sub-int v5, v3, v5

    int-to-float v5, v5

    invoke-virtual {v4, v2, v5}, Lcom/creativemobi/engine/cd;->b(FF)V

    invoke-virtual {v4, v10}, Lcom/creativemobi/engine/cd;->a(Z)V

    invoke-virtual {v4}, Lcom/creativemobi/engine/cd;->m()F

    move-result v2

    iput v2, p0, Lcom/creativemobi/engine/ae;->q:F

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "scrollbar"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    iget v4, p0, Lcom/creativemobi/engine/ae;->G:I

    add-int/lit8 v4, v4, 0x1e

    int-to-float v4, v4

    int-to-float v3, v3

    invoke-virtual {v2, v4, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    invoke-virtual {v2, v10}, Lcom/creativemobi/engine/cd;->a(Z)V

    invoke-virtual {v2}, Lcom/creativemobi/engine/cd;->i()F

    move-result v2

    iput v2, p0, Lcom/creativemobi/engine/ae;->r:F

    goto/16 :goto_1

    :cond_3
    move v2, v9

    .line 434
    goto/16 :goto_2

    .line 437
    :cond_4
    const/4 v4, -0x1

    goto/16 :goto_3

    .line 443
    :cond_5
    const v1, -0x112555

    goto/16 :goto_4

    .line 447
    :cond_6
    new-instance v3, Lcom/creativemobi/engine/x;

    const-string v4, "%.3f"

    new-array v5, v10, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v6, v6, v0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x1e0

    invoke-direct {v3, v4, v5, v1}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 448
    if-eqz v2, :cond_7

    move v1, v11

    :goto_6
    sget-object v2, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v3, v13, v1, v2, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 449
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 450
    iget v1, p0, Lcom/creativemobi/engine/ae;->E:I

    sub-int/2addr v1, v12

    invoke-virtual {v3, v1}, Lcom/creativemobi/engine/x;->a(I)V

    goto/16 :goto_5

    .line 448
    :cond_7
    const v1, -0x112555

    goto :goto_6

    .line 453
    :cond_8
    return-void
.end method

.method private static b(Lcom/creativemobi/engine/w;I)V
    .locals 2

    .prologue
    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "slider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scrollbar"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 483
    return-void
.end method

.method private c(Lcom/creativemobi/engine/w;)V
    .locals 8

    .prologue
    const/16 v7, 0x18

    const/4 v6, -0x1

    const/4 v3, 0x0

    .line 456
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, ""

    invoke-direct {v0, v1, v3, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 457
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v7, v6, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 458
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->s:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/creativemobi/engine/x;->c()Landroid/graphics/Paint;

    move-result-object v0

    const/16 v2, 0xdc

    invoke-static {v1, v0, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Landroid/graphics/Paint;I)Ljava/util/ArrayList;

    move-result-object v1

    move v2, v3

    .line 459
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 460
    new-instance v3, Lcom/creativemobi/engine/x;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/16 v4, 0x21c

    mul-int/lit8 v5, v2, 0x1c

    add-int/lit16 v5, v5, 0xaa

    invoke-direct {v3, v0, v4, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 461
    sget-object v0, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v3, v7, v6, v0, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 462
    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 459
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 464
    :cond_0
    return-void
.end method

.method private d(Lcom/creativemobi/engine/w;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 532
    iput-boolean v3, p0, Lcom/creativemobi/engine/ae;->w:Z

    .line 534
    const-string v0, "arrow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 535
    iget v0, p0, Lcom/creativemobi/engine/ae;->a:F

    iget v1, p0, Lcom/creativemobi/engine/ae;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 536
    iget v0, p0, Lcom/creativemobi/engine/ae;->b:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ae;->a:F

    .line 537
    const-string v0, "arrow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    :cond_0
    move v0, v3

    .line 541
    :goto_0
    sget v1, Lcom/creativemobi/engine/ae;->y:I

    if-ge v0, v1, :cond_1

    .line 542
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

    .line 543
    invoke-virtual {v1, v3}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_1
    return-void
.end method

.method private static e(Lcom/creativemobi/engine/w;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 548
    move v0, v5

    :goto_0
    sget v1, Lcom/creativemobi/engine/ae;->y:I

    if-ge v0, v1, :cond_0

    .line 553
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

    rem-int/lit8 v3, v0, 0x3

    mul-int/lit16 v3, v3, 0x99

    add-int/lit8 v3, v3, 0x2f

    div-int/lit8 v4, v0, 0x3

    mul-int/lit8 v4, v4, 0x4a

    add-int/lit16 v4, v4, 0xaa

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 554
    const v2, 0x3f266666    # 0.65f

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 555
    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 556
    invoke-virtual {v1, v5}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 552
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 558
    :cond_0
    return-void
.end method

.method private f(Lcom/creativemobi/engine/w;)V
    .locals 11

    .prologue
    const/4 v3, 0x0

    const/high16 v10, 0x439f0000    # 318.0f

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x42a00000    # 80.0f

    const/4 v7, -0x1

    .line 561
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->w:Z

    if-nez v0, :cond_0

    .line 605
    :goto_0
    return-void

    .line 563
    :cond_0
    const-string v0, "arrow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 567
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    move v0, v3

    .line 570
    :goto_1
    sget v1, Lcom/creativemobi/engine/ae;->y:I

    if-ge v0, v1, :cond_2

    .line 571
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

    .line 572
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 573
    iget v2, p0, Lcom/creativemobi/engine/ae;->z:I

    if-ne v2, v0, :cond_1

    const-string v2, "frameHL"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 570
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 574
    :cond_1
    const-string v2, "frame"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    goto :goto_2

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v0, v3

    .line 577
    :goto_3
    sget v1, Lcom/creativemobi/engine/ae;->y:I

    if-ge v0, v1, :cond_3

    .line 578
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->x:Ljava/util/ArrayList;

    sget-object v2, Lcom/creativemobi/engine/ae;->A:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 577
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v6, v3

    .line 580
    :goto_4
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_5

    .line 581
    new-instance v1, Lcom/creativemobi/engine/x;

    iget-object v0, p0, Lcom/creativemobi/engine/ae;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    rem-int/lit8 v2, v6, 0x3

    mul-int/lit16 v2, v2, 0x99

    add-int/lit8 v2, v2, 0x2f

    add-int/lit8 v2, v2, 0x47

    div-int/lit8 v3, v6, 0x3

    mul-int/lit8 v3, v3, 0x4a

    add-int/lit16 v3, v3, 0xd6

    invoke-direct {v1, v0, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 582
    const/16 v0, 0x1e

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    aget-object v2, v2, v6

    if-eqz v2, :cond_4

    move v2, v7

    :goto_5
    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v4, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 583
    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 585
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    rem-int/lit8 v0, v6, 0x3

    mul-int/lit16 v0, v0, 0x99

    add-int/lit8 v0, v0, 0x2f

    int-to-float v2, v0

    div-int/lit8 v0, v6, 0x3

    mul-int/lit8 v0, v0, 0x4a

    add-int/lit16 v0, v0, 0xaa

    int-to-float v3, v0

    const/high16 v4, 0x43190000    # 153.0f

    const/high16 v5, 0x42940000    # 74.0f

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 580
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_4

    .line 582
    :cond_4
    const v2, -0x777778

    goto :goto_5

    .line 588
    :cond_5
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "SAVE"

    const/16 v2, 0x75

    const/16 v3, 0x170

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 589
    const/16 v1, 0x2d

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 590
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 592
    const-string v1, "SAVE"

    const/high16 v2, 0x42ae0000    # 87.0f

    move-object v0, p1

    move v3, v10

    move v4, v9

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 594
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "LOAD"

    const/16 v2, 0x10e

    const/16 v3, 0x170

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 595
    const/16 v1, 0x2d

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 596
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 598
    const-string v1, "LOAD"

    const/high16 v2, 0x43700000    # 240.0f

    move-object v0, p1

    move v3, v10

    move v4, v9

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    .line 600
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "CANCEL"

    const/16 v2, 0x1a7

    const/16 v3, 0x170

    invoke-direct {v0, v1, v2, v3}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 601
    const/16 v1, 0x2d

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    iget-object v3, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v7, v2, v3}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 602
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 604
    const-string v1, "CANCEL"

    const v2, 0x43c48000    # 393.0f

    move-object v0, p1

    move v3, v10

    move v4, v9

    move v5, v8

    invoke-virtual/range {v0 .. v5}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFFF)V

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public final a(I)V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 111
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->t:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->v:Z

    if-eqz v0, :cond_1

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->k:Z

    if-eqz v0, :cond_2

    .line 114
    iput p3, p0, Lcom/creativemobi/engine/ae;->f:F

    .line 115
    iput p2, p0, Lcom/creativemobi/engine/ae;->g:F

    .line 116
    iput-boolean v3, p0, Lcom/creativemobi/engine/ae;->k:Z

    .line 117
    iput-boolean v3, p0, Lcom/creativemobi/engine/ae;->l:Z

    .line 118
    iput-boolean v3, p0, Lcom/creativemobi/engine/ae;->m:Z

    .line 119
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/creativemobi/engine/ae;->n:F

    goto :goto_0

    .line 121
    :cond_2
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->m:Z

    if-nez v0, :cond_4

    .line 122
    iget v0, p0, Lcom/creativemobi/engine/ae;->f:F

    sub-float v0, p3, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/creativemobi/engine/ae;->n:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 123
    iget v0, p0, Lcom/creativemobi/engine/ae;->n:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_3

    iput p3, p0, Lcom/creativemobi/engine/ae;->f:F

    .line 124
    :cond_3
    iput v2, p0, Lcom/creativemobi/engine/ae;->n:F

    .line 125
    iput-boolean v5, p0, Lcom/creativemobi/engine/ae;->l:Z

    .line 127
    iget v0, p0, Lcom/creativemobi/engine/ae;->a:F

    iget v1, p0, Lcom/creativemobi/engine/ae;->f:F

    sub-float v1, p3, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/ae;->a:F

    .line 128
    iput p3, p0, Lcom/creativemobi/engine/ae;->f:F

    .line 129
    const-string v0, "arrow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->g(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/creativemobi/engine/ae;->a:F

    iget v1, p0, Lcom/creativemobi/engine/ae;->b:I

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 131
    iget v0, p0, Lcom/creativemobi/engine/ae;->b:I

    neg-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/ae;->a:F

    .line 132
    const-string v0, "arrow"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 137
    :cond_4
    :goto_1
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->l:Z

    if-nez v0, :cond_0

    .line 138
    iget v0, p0, Lcom/creativemobi/engine/ae;->g:F

    sub-float v0, p2, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Lcom/creativemobi/engine/ae;->n:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 139
    iget v0, p0, Lcom/creativemobi/engine/ae;->n:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_5

    iput p2, p0, Lcom/creativemobi/engine/ae;->g:F

    .line 140
    :cond_5
    iput v2, p0, Lcom/creativemobi/engine/ae;->n:F

    .line 141
    iput-boolean v5, p0, Lcom/creativemobi/engine/ae;->m:Z

    move v0, v3

    .line 143
    :goto_2
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->C:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->F()Z

    move-result v1

    if-nez v1, :cond_6

    if-eqz v0, :cond_8

    .line 145
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-virtual {p1, v1, p2, p3, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v1

    if-eqz v1, :cond_8

    iget v1, p0, Lcom/creativemobi/engine/ae;->r:F

    iget v2, p0, Lcom/creativemobi/engine/ae;->q:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_8

    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/creativemobi/engine/ae;->q:F

    div-float/2addr v2, v4

    sub-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_8

    .line 146
    iput p2, p0, Lcom/creativemobi/engine/ae;->g:F

    .line 147
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    iget v2, p0, Lcom/creativemobi/engine/ae;->q:F

    div-float/2addr v2, v4

    sub-float v2, p2, v2

    iget v3, p0, Lcom/creativemobi/engine/ae;->r:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x43b40000    # 360.0f

    div-float/2addr v2, v3

    aput v2, v1, v0

    .line 149
    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ae;->b(I)V

    goto/16 :goto_0

    .line 133
    :cond_7
    iget v0, p0, Lcom/creativemobi/engine/ae;->a:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    iput v2, p0, Lcom/creativemobi/engine/ae;->a:F

    goto/16 :goto_1

    .line 143
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public final a(Lcom/creativemobi/engine/w;I)V
    .locals 0

    .prologue
    .line 617
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;J)V
    .locals 6

    .prologue
    const/16 v5, 0x87

    const/16 v2, 0x32

    const/16 v4, 0x24

    const/high16 v3, -0x1000000

    .line 60
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->k()V

    .line 61
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->a()V

    .line 62
    const-string v0, "upgrade_frame"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->C:[Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->C:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 65
    invoke-static {p1, v0}, Lcom/creativemobi/engine/ae;->b(Lcom/creativemobi/engine/w;I)V

    .line 64
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->u:Z

    if-eqz v0, :cond_1

    .line 68
    const-string v0, "Are you sure you want replace current settings with this preset?"

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ae;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;)V

    .line 84
    :goto_1
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ae;->c(Lcom/creativemobi/engine/w;)V

    .line 85
    return-void

    .line 69
    :cond_1
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->v:Z

    if-eqz v0, :cond_2

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Are you sure you want to overwrite settings in slot \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/creativemobi/engine/ae;->A:[Ljava/lang/String;

    iget v2, p0, Lcom/creativemobi/engine/ae;->z:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/ae;->a(Lcom/creativemobi/engine/w;Ljava/lang/String;)V

    goto :goto_1

    .line 71
    :cond_2
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->w:Z

    if-eqz v0, :cond_3

    .line 72
    new-instance v0, Lcom/creativemobi/engine/x;

    const-string v1, "TUNING PRESETS"

    invoke-direct {v0, v1, v2, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 73
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 74
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 76
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ae;->f(Lcom/creativemobi/engine/w;)V

    goto :goto_1

    .line 78
    :cond_3
    new-instance v0, Lcom/creativemobi/engine/x;

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->A()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/creativemobi/engine/ae;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v2, v5}, Lcom/creativemobi/engine/x;-><init>(Ljava/lang/String;II)V

    .line 79
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/creativemobi/engine/x;->a(IILandroid/graphics/Paint$Align;Landroid/graphics/Typeface;)V

    .line 80
    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->a(Lcom/creativemobi/engine/x;)V

    .line 82
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ae;->b(Lcom/creativemobi/engine/w;)V

    goto :goto_1
.end method

.method public final a(Lcom/creativemobi/engine/w;Landroid/content/Context;Lcom/creativemobi/engine/bl;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/high16 v8, 0x447a0000    # 1000.0f

    const/16 v7, 0x14

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 323
    iput-object p3, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    .line 325
    invoke-virtual {p2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "electrotome.ttf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ae;->d:Landroid/graphics/Typeface;

    .line 327
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cg;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    .line 328
    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    if-nez v1, :cond_1

    sput-object v0, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    .line 333
    :cond_0
    :goto_0
    sget-object v0, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v0, v0, Lcom/creativemobi/engine/cg;->a:I

    invoke-interface {p3, p1, v0}, Lcom/creativemobi/engine/bl;->b(Lcom/creativemobi/engine/w;I)Lcom/creativemobi/engine/m;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    .line 334
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    invoke-virtual {v1}, Lcom/creativemobi/engine/cg;->b()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/m;->a([I)V

    .line 336
    sget v0, Lcom/creativemobi/engine/ae;->y:I

    new-array v0, v0, [Lcom/creativemobi/engine/cg;

    iput-object v0, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    .line 337
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    invoke-virtual {v1}, Lcom/creativemobi/engine/cg;->a()Lcom/creativemobi/engine/cg;

    move-result-object v1

    aput-object v1, v0, v5

    .line 338
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    iget-object v0, v0, Lcom/creativemobi/engine/cg;->e:[F

    if-eqz v0, :cond_2

    .line 339
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->O()I

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/cg;->f:I

    .line 340
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->L()F

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/cg;->d:F

    .line 341
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/creativemobi/engine/cg;->e:[F

    move v0, v6

    .line 343
    :goto_1
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 344
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    aget-object v1, v1, v5

    iget-object v1, v1, Lcom/creativemobi/engine/cg;->e:[F

    sub-int v2, v0, v6

    iget-object v3, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v3}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v3

    sub-int v4, v0, v6

    aget v3, v3, v4

    aput v3, v1, v2

    .line 343
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 329
    :cond_1
    iget v1, v0, Lcom/creativemobi/engine/cg;->a:I

    sget-object v2, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v2, v2, Lcom/creativemobi/engine/cg;->a:I

    if-eq v1, v2, :cond_0

    .line 330
    sput-object v0, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    goto/16 :goto_0

    .line 348
    :cond_2
    invoke-interface {p3}, Lcom/creativemobi/engine/bl;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 349
    iget v2, v0, Lcom/creativemobi/engine/cg;->a:I

    sget-object v3, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v3, v3, Lcom/creativemobi/engine/cg;->a:I

    if-ne v2, v3, :cond_3

    .line 350
    iget-object v2, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    iget v3, v0, Lcom/creativemobi/engine/cg;->b:I

    aput-object v0, v2, v3

    goto :goto_2

    .line 354
    :cond_4
    sget-object v0, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v0, v0, Lcom/creativemobi/engine/cg;->e:[F

    if-nez v0, :cond_5

    .line 356
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->O()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v8

    aput v1, v0, v5

    .line 357
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->L()F

    move-result v1

    aput v1, v0, v9

    move v0, v6

    .line 359
    :goto_3
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_6

    .line 360
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v2

    sub-int v3, v0, v6

    aget v2, v2, v3

    aput v2, v1, v0

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 363
    :cond_5
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v1, v1, Lcom/creativemobi/engine/cg;->f:I

    int-to-float v1, v1

    div-float/2addr v1, v8

    aput v1, v0, v5

    .line 364
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v1, v1, Lcom/creativemobi/engine/cg;->d:F

    aput v1, v0, v9

    move v0, v6

    .line 366
    :goto_4
    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v1, v1, Lcom/creativemobi/engine/cg;->e:[F

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_6

    .line 367
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    sget-object v2, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v2, v2, Lcom/creativemobi/engine/cg;->e:[F

    sub-int v3, v0, v6

    aget v2, v2, v3

    aput v2, v1, v0

    .line 366
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 371
    :cond_6
    const-string v0, "graphics/loading.jpg"

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->c(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->b()V

    .line 373
    const-string v0, "menu_bg"

    const-string v1, "graphics/menu_bg.jpg"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 375
    const-string v0, "menu_bg"

    const-string v1, "menu_bg"

    invoke-virtual {p1, v0, v1, v5, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 377
    const-string v0, "divider"

    const-string v1, "graphics/divider.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 378
    const-string v0, "divider"

    const-string v1, "divider"

    const/16 v2, 0x1f4

    const/16 v3, 0x69

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 380
    const-string v0, "test_drive"

    const-string v1, "graphics/garage/test_drive.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 381
    const-string v0, "test_drive"

    const-string v1, "test_drive"

    const/16 v2, 0x23a

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x38

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 386
    const-string v0, "reset"

    const-string v1, "graphics/garage/pres.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 387
    const-string v0, "reset"

    const-string v1, "reset"

    const/16 v2, 0x172

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->m()I

    move-result v3

    const/16 v4, 0x37

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 389
    const-string v0, "arrow"

    const-string v1, "graphics/menu/arrow.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 390
    const-string v0, "arrow"

    const-string v1, "arrow"

    const/16 v2, 0x113

    const/16 v3, 0x195

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 392
    const-string v0, "slider"

    const-string v1, "graphics/menu/distance_switch_on.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 393
    const-string v0, "scrollbar"

    const-string v1, "graphics/menu/scrollbar.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 395
    const-string v0, "frame"

    const-string v1, "graphics/garage/frame.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 396
    const-string v0, "frameHL"

    const-string v1, "graphics/garage/frame_hl.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 399
    const-string v0, "header"

    const-string v1, "graphics/menu/tuning.png"

    invoke-virtual {p1, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/creativemobi/engine/l;

    .line 400
    const-string v0, "header"

    const-string v1, "header"

    invoke-virtual {p1}, Lcom/creativemobi/engine/w;->l()I

    move-result v2

    const/16 v3, 0xb4

    sub-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v7}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 402
    const-string v0, "upgrade_frame"

    const-string v1, "graphics/garage/upgrade_frame.png"

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 403
    const-string v0, "upgrade_frame"

    const-string v1, "upgrade_frame"

    const/16 v2, 0x190

    iget v3, p0, Lcom/creativemobi/engine/ae;->i:I

    const/16 v4, 0x36

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 404
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->k()V

    .line 405
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    move v0, v5

    .line 407
    :goto_5
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->C:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_7

    .line 408
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "slider"

    iget v3, p0, Lcom/creativemobi/engine/ae;->G:I

    invoke-virtual {p1, v1, v2, v3, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 409
    const v2, 0x3f333333    # 0.7f

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 410
    iget v2, p0, Lcom/creativemobi/engine/ae;->E:I

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->b(I)V

    .line 411
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollbar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "scrollbar"

    iget v3, p0, Lcom/creativemobi/engine/ae;->G:I

    invoke-virtual {p1, v1, v2, v3, v5}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 413
    iget v2, p0, Lcom/creativemobi/engine/ae;->E:I

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->b(I)V

    .line 414
    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 417
    :cond_7
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->C:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3c

    iput v0, p0, Lcom/creativemobi/engine/ae;->b:I

    .line 419
    invoke-static {p1}, Lcom/creativemobi/engine/ae;->e(Lcom/creativemobi/engine/w;)V

    .line 420
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 3

    .prologue
    .line 493
    invoke-direct {p0}, Lcom/creativemobi/engine/ae;->b()V

    .line 495
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    invoke-interface {v0, v1}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/cg;)V

    .line 496
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    new-instance v1, Lcom/creativemobi/engine/ad;

    invoke-direct {v1}, Lcom/creativemobi/engine/ad;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 497
    const/4 v0, 0x1

    return v0
.end method

.method public final b(Lcom/creativemobi/engine/w;FF)V
    .locals 8

    .prologue
    const/high16 v3, 0x41a00000    # 20.0f

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 161
    iput-boolean v4, p0, Lcom/creativemobi/engine/ae;->k:Z

    .line 163
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->l:Z

    if-eqz v0, :cond_1

    .line 289
    :cond_0
    :goto_0
    return-void

    .line 165
    :cond_1
    const-string v0, "test_drive"

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {p1, v0, p2, p3, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 166
    invoke-direct {p0}, Lcom/creativemobi/engine/ae;->b()V

    .line 170
    new-instance v0, Lcom/creativemobi/engine/k;

    invoke-direct {v0}, Lcom/creativemobi/engine/k;-><init>()V

    .line 171
    iput v6, v0, Lcom/creativemobi/engine/k;->e:I

    .line 172
    iput v6, v0, Lcom/creativemobi/engine/k;->d:I

    .line 173
    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/k;->b(I)V

    .line 174
    iput-boolean v4, v0, Lcom/creativemobi/engine/k;->m:Z

    .line 175
    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iput-object v1, v0, Lcom/creativemobi/engine/k;->g:Lcom/creativemobi/engine/cg;

    .line 176
    new-instance v1, Lcom/creativemobi/engine/cg;

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v2}, Lcom/creativemobi/engine/m;->B()I

    move-result v2

    sget-object v3, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    invoke-virtual {v3}, Lcom/creativemobi/engine/cg;->b()[I

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/creativemobi/engine/cg;-><init>(I[I)V

    iput-object v1, v0, Lcom/creativemobi/engine/k;->h:Lcom/creativemobi/engine/cg;

    .line 177
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    invoke-interface {v1, v0, v6}, Lcom/creativemobi/engine/bl;->a(Lcom/creativemobi/engine/y;Z)V

    .line 178
    invoke-static {v6}, Lcom/creativemobi/DragRacing/menus/MainMenu;->b(Z)V

    goto :goto_0

    .line 180
    :cond_2
    const-string v0, "reset"

    invoke-virtual {p1, v0, p2, p3, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 182
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->w:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ae;->d(Lcom/creativemobi/engine/w;)V

    .line 279
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->w:Z

    if-eqz v0, :cond_0

    move v1, v6

    :goto_2
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->x:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->x:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 281
    iget v0, p0, Lcom/creativemobi/engine/ae;->z:I

    if-eq v0, v1, :cond_0

    .line 282
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "frame"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/creativemobi/engine/ae;->z:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    const-string v2, "frame"

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/l;)V

    .line 283
    iput v1, p0, Lcom/creativemobi/engine/ae;->z:I

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "frame"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/ae;->z:I

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

    goto/16 :goto_0

    .line 183
    :cond_4
    iput-boolean v4, p0, Lcom/creativemobi/engine/ae;->w:Z

    goto :goto_1

    .line 184
    :cond_5
    const-string v0, "LOAD"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 185
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    iget v1, p0, Lcom/creativemobi/engine/ae;->z:I

    aget-object v0, v0, v1

    if-nez v0, :cond_6

    .line 186
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    const-string v1, "This slot is empty"

    invoke-interface {v0, v1, v5, v6}, Lcom/creativemobi/engine/bl;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_1

    .line 188
    :cond_6
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ae;->d(Lcom/creativemobi/engine/w;)V

    .line 189
    iput-boolean v4, p0, Lcom/creativemobi/engine/ae;->u:Z

    goto/16 :goto_1

    .line 191
    :cond_7
    const-string v0, "SAVE"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 192
    iget v0, p0, Lcom/creativemobi/engine/ae;->z:I

    if-nez v0, :cond_8

    .line 193
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    const-string v1, "Can\'t save in stock settings slot!"

    invoke-interface {v0, v1, v5, v6}, Lcom/creativemobi/engine/bl;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_1

    .line 195
    :cond_8
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ae;->d(Lcom/creativemobi/engine/w;)V

    .line 196
    iput-boolean v4, p0, Lcom/creativemobi/engine/ae;->v:Z

    goto/16 :goto_1

    .line 198
    :cond_9
    const-string v0, "CANCEL"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 199
    invoke-direct {p0, p1}, Lcom/creativemobi/engine/ae;->d(Lcom/creativemobi/engine/w;)V

    goto/16 :goto_1

    .line 200
    :cond_a
    const-string v0, "YES"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 201
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->t:Z

    if-eqz v0, :cond_b

    .line 205
    iput-boolean v6, p0, Lcom/creativemobi/engine/ae;->t:Z

    goto/16 :goto_1

    .line 206
    :cond_b
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->u:Z

    if-eqz v0, :cond_e

    .line 209
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    iget v1, p0, Lcom/creativemobi/engine/ae;->z:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/creativemobi/engine/cg;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    .line 211
    sput-object v0, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v0, v0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_c

    move v0, v6

    :goto_3
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    iget-object v1, v1, Lcom/creativemobi/engine/m;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_c

    .line 212
    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v1, v1, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    iget-object v3, v3, Lcom/creativemobi/engine/m;->a:[I

    aget v3, v3, v0

    invoke-direct {v2, v0, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 211
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 215
    :cond_c
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->a()Lcom/creativemobi/engine/cg;

    move-result-object v0

    .line 216
    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v2, v0, Lcom/creativemobi/engine/cg;->g:F

    iput v2, v1, Lcom/creativemobi/engine/cg;->g:F

    .line 217
    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v2, v0, Lcom/creativemobi/engine/cg;->h:F

    iput v2, v1, Lcom/creativemobi/engine/cg;->h:F

    .line 218
    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v0, v0, Lcom/creativemobi/engine/cg;->i:F

    iput v0, v1, Lcom/creativemobi/engine/cg;->i:F

    .line 220
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v1, v1, Lcom/creativemobi/engine/cg;->f:I

    int-to-float v1, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    aput v1, v0, v6

    .line 221
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->D:[F

    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v1, v1, Lcom/creativemobi/engine/cg;->d:F

    aput v1, v0, v4

    .line 223
    const/4 v0, 0x2

    :goto_4
    sget-object v1, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v1, v1, Lcom/creativemobi/engine/cg;->e:[F

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_d

    .line 224
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->D:[F

    sget-object v2, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget-object v2, v2, Lcom/creativemobi/engine/cg;->e:[F

    const/4 v3, 0x2

    sub-int v3, v0, v3

    aget v2, v2, v3

    aput v2, v1, v0

    .line 223
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 227
    :cond_d
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preset \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/creativemobi/engine/ae;->A:[Ljava/lang/String;

    iget v3, p0, Lcom/creativemobi/engine/ae;->z:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" loaded!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v5, v6}, Lcom/creativemobi/engine/bl;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 228
    iput-boolean v6, p0, Lcom/creativemobi/engine/ae;->u:Z

    goto/16 :goto_1

    .line 229
    :cond_e
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->v:Z

    if-eqz v0, :cond_3

    .line 230
    invoke-direct {p0}, Lcom/creativemobi/engine/ae;->b()V

    .line 232
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    iget v1, p0, Lcom/creativemobi/engine/ae;->z:I

    sget-object v2, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    invoke-virtual {v2}, Lcom/creativemobi/engine/cg;->a()Lcom/creativemobi/engine/cg;

    move-result-object v2

    aput-object v2, v0, v1

    .line 233
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    iget v1, p0, Lcom/creativemobi/engine/ae;->z:I

    aget-object v0, v0, v1

    iget v1, p0, Lcom/creativemobi/engine/ae;->z:I

    iput v1, v0, Lcom/creativemobi/engine/cg;->b:I

    .line 234
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    iget v1, p0, Lcom/creativemobi/engine/ae;->z:I

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/creativemobi/engine/cg;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    move v1, v6

    move v2, v4

    .line 237
    :goto_5
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_f

    .line 238
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->k()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/creativemobi/engine/cg;

    .line 239
    iget v3, v0, Lcom/creativemobi/engine/cg;->a:I

    sget-object v4, Lcom/creativemobi/engine/ae;->p:Lcom/creativemobi/engine/cg;

    iget v4, v4, Lcom/creativemobi/engine/cg;->a:I

    if-ne v3, v4, :cond_1a

    iget v0, v0, Lcom/creativemobi/engine/cg;->b:I

    iget v3, p0, Lcom/creativemobi/engine/ae;->z:I

    if-ne v0, v3, :cond_1a

    .line 240
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->k()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    iget v3, p0, Lcom/creativemobi/engine/ae;->z:I

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    .line 237
    :goto_6
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_5

    .line 244
    :cond_f
    if-eqz v2, :cond_10

    .line 245
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    invoke-interface {v0}, Lcom/creativemobi/engine/bl;->k()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->B:[Lcom/creativemobi/engine/cg;

    iget v2, p0, Lcom/creativemobi/engine/ae;->z:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_10
    iget-object v0, p0, Lcom/creativemobi/engine/ae;->e:Lcom/creativemobi/engine/bl;

    const-string v1, "Preset saved!"

    invoke-interface {v0, v1, v5, v6}, Lcom/creativemobi/engine/bl;->a(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V

    .line 248
    iput-boolean v6, p0, Lcom/creativemobi/engine/ae;->v:Z

    goto/16 :goto_1

    .line 250
    :cond_11
    const-string v0, "NO"

    invoke-virtual {p1, v0, p2, p3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FF)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 251
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->u:Z

    if-eqz v0, :cond_13

    .line 252
    iput-boolean v6, p0, Lcom/creativemobi/engine/ae;->u:Z

    .line 256
    :cond_12
    :goto_7
    iput-boolean v4, p0, Lcom/creativemobi/engine/ae;->w:Z

    goto/16 :goto_1

    .line 253
    :cond_13
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->v:Z

    if-eqz v0, :cond_12

    .line 254
    iput-boolean v6, p0, Lcom/creativemobi/engine/ae;->v:Z

    goto :goto_7

    .line 257
    :cond_14
    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->t:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->u:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/creativemobi/engine/ae;->v:Z

    if-nez v0, :cond_3

    move v0, v6

    .line 258
    :goto_8
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->C:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->M()[F

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_3

    .line 259
    iget-object v1, p0, Lcom/creativemobi/engine/ae;->o:Lcom/creativemobi/engine/m;

    invoke-virtual {v1}, Lcom/creativemobi/engine/m;->F()Z

    move-result v1

    if-nez v1, :cond_15

    if-eqz v0, :cond_18

    .line 260
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scrollbar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p2, p3, v3}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;FFF)Z

    move-result v1

    if-eqz v1, :cond_18

    iget v1, p0, Lcom/creativemobi/engine/ae;->r:F

    iget v2, p0, Lcom/creativemobi/engine/ae;->q:F

    sub-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_18

    const/high16 v1, 0x43fa0000    # 500.0f

    iget v2, p0, Lcom/creativemobi/engine/ae;->q:F

    add-float/2addr v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_18

    .line 262
    iget v1, p0, Lcom/creativemobi/engine/ae;->q:F

    div-float/2addr v1, v7

    sub-float v1, p2, v1

    iget v2, p0, Lcom/creativemobi/engine/ae;->r:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    .line 264
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "slider"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    invoke-virtual {v2}, Lcom/creativemobi/engine/cd;->i()F

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slider"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v3

    invoke-virtual {v3}, Lcom/creativemobi/engine/cd;->m()F

    move-result v3

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    sub-float/2addr v2, p2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 268
    const/high16 v3, 0x43480000    # 200.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_16

    const v2, 0x3c23d70a    # 0.01f

    .line 271
    :goto_9
    iget-object v3, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v4, v3, v0

    iget-object v5, p0, Lcom/creativemobi/engine/ae;->D:[F

    aget v5, v5, v0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_17

    move v1, v2

    :goto_a
    add-float/2addr v1, v4

    aput v1, v3, v0

    .line 273
    invoke-direct {p0, v0}, Lcom/creativemobi/engine/ae;->b(I)V

    goto/16 :goto_1

    .line 269
    :cond_16
    const v2, 0x3ca3d70a    # 0.02f

    goto :goto_9

    .line 271
    :cond_17
    neg-float v1, v2

    goto :goto_a

    .line 258
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    .line 279
    :cond_19
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_2

    :cond_1a
    move v0, v2

    goto/16 :goto_6
.end method
