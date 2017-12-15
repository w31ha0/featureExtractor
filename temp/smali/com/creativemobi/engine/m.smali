.class public final Lcom/creativemobi/engine/m;
.super Ljava/lang/Object;
.source "Car.java"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static i:[I


# instance fields
.field private A:F

.field private B:F

.field private C:I

.field private D:[F

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:F

.field private M:Z

.field private N:F

.field private O:F

.field private P:I

.field private Q:I

.field private R:F

.field private S:I

.field private T:I

.field private U:F

.field private V:Z

.field private W:F

.field private X:Z

.field private Y:Ljava/lang/String;

.field private Z:I

.field a:[I

.field private aa:I

.field private ab:Ljava/lang/String;

.field private final ac:I

.field private ad:J

.field private ae:Z

.field private af:Z

.field private ag:J

.field private ah:I

.field private ai:Ljava/lang/String;

.field private aj:Ljava/lang/String;

.field private ak:Ljava/lang/String;

.field private al:Ljava/lang/String;

.field private am:Ljava/lang/String;

.field private an:Ljava/lang/String;

.field private ao:Ljava/lang/String;

.field private ap:Ljava/lang/String;

.field private aq:Ljava/lang/String;

.field public b:Landroid/graphics/Point;

.field public c:Landroid/graphics/Point;

.field public d:Landroid/graphics/Point;

.field public e:Landroid/graphics/Point;

.field f:F

.field public g:I

.field public h:I

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:I

.field private s:F

.field private t:[F

.field private u:[Landroid/graphics/Point;

.field private v:[Landroid/graphics/Point;

.field private w:F

.field private x:F

.field private y:[I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/16 v0, 0xb

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/creativemobi/engine/m;->i:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x61a8
        0xc350
        0x186a0
        0x30d40
        0x57e40
        0xaae60
        0x13d620
        0x2625a0
        0x401640
        0x98967f
    .end array-data
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/high16 v5, 0x7fc00000    # NaNf

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput v4, p0, Lcom/creativemobi/engine/m;->j:F

    .line 29
    iput v4, p0, Lcom/creativemobi/engine/m;->k:F

    .line 30
    iput v4, p0, Lcom/creativemobi/engine/m;->l:F

    .line 31
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/creativemobi/engine/m;->m:F

    .line 41
    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/creativemobi/engine/m;->w:F

    .line 42
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/creativemobi/engine/m;->x:F

    .line 43
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/creativemobi/engine/m;->y:[I

    .line 44
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/creativemobi/engine/m;->a:[I

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/creativemobi/engine/m;->D:[F

    .line 50
    iput v1, p0, Lcom/creativemobi/engine/m;->E:F

    .line 53
    iput v1, p0, Lcom/creativemobi/engine/m;->F:F

    .line 55
    iput v1, p0, Lcom/creativemobi/engine/m;->G:F

    .line 56
    iput v5, p0, Lcom/creativemobi/engine/m;->H:F

    .line 57
    iput v5, p0, Lcom/creativemobi/engine/m;->I:F

    .line 58
    iput v1, p0, Lcom/creativemobi/engine/m;->J:F

    .line 59
    iput v1, p0, Lcom/creativemobi/engine/m;->K:F

    .line 60
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/creativemobi/engine/m;->L:F

    .line 61
    iput-boolean v2, p0, Lcom/creativemobi/engine/m;->M:Z

    .line 66
    iput v4, p0, Lcom/creativemobi/engine/m;->O:F

    .line 67
    iput v2, p0, Lcom/creativemobi/engine/m;->P:I

    .line 68
    const/16 v0, 0x12c

    iput v0, p0, Lcom/creativemobi/engine/m;->Q:I

    .line 74
    iput v1, p0, Lcom/creativemobi/engine/m;->R:F

    .line 78
    iput v2, p0, Lcom/creativemobi/engine/m;->T:I

    .line 79
    iput v1, p0, Lcom/creativemobi/engine/m;->U:F

    .line 80
    iput-boolean v2, p0, Lcom/creativemobi/engine/m;->V:Z

    .line 81
    iput v1, p0, Lcom/creativemobi/engine/m;->W:F

    .line 82
    iput v1, p0, Lcom/creativemobi/engine/m;->f:F

    .line 83
    iput-boolean v2, p0, Lcom/creativemobi/engine/m;->X:Z

    .line 89
    const/16 v0, 0x1c2

    iput v0, p0, Lcom/creativemobi/engine/m;->ac:I

    .line 90
    const-wide/16 v0, 0x1c2

    iput-wide v0, p0, Lcom/creativemobi/engine/m;->ad:J

    .line 92
    iput-boolean v2, p0, Lcom/creativemobi/engine/m;->ae:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/creativemobi/engine/m;->af:Z

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/creativemobi/engine/m;->ag:J

    .line 95
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/creativemobi/engine/m;->ah:I

    .line 303
    const-string v0, "nitro"

    iput-object v0, p0, Lcom/creativemobi/engine/m;->ai:Ljava/lang/String;

    .line 304
    iput-object v3, p0, Lcom/creativemobi/engine/m;->aj:Ljava/lang/String;

    .line 305
    iput-object v3, p0, Lcom/creativemobi/engine/m;->ak:Ljava/lang/String;

    .line 306
    iput-object v3, p0, Lcom/creativemobi/engine/m;->al:Ljava/lang/String;

    .line 307
    iput-object v3, p0, Lcom/creativemobi/engine/m;->am:Ljava/lang/String;

    .line 308
    iput-object v3, p0, Lcom/creativemobi/engine/m;->an:Ljava/lang/String;

    .line 310
    iput-object v3, p0, Lcom/creativemobi/engine/m;->ao:Ljava/lang/String;

    .line 311
    iput-object v3, p0, Lcom/creativemobi/engine/m;->ap:Ljava/lang/String;

    .line 312
    iput-object v3, p0, Lcom/creativemobi/engine/m;->aq:Ljava/lang/String;

    .line 529
    iput v2, p0, Lcom/creativemobi/engine/m;->g:I

    .line 530
    iput v2, p0, Lcom/creativemobi/engine/m;->h:I

    .line 99
    return-void
.end method

.method private S()V
    .locals 11

    .prologue
    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 128
    const/4 v0, 0x5

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/creativemobi/engine/m;->D:[F

    move v0, v9

    .line 129
    :goto_0
    iget-object v1, p0, Lcom/creativemobi/engine/m;->a:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 130
    iget-object v1, p0, Lcom/creativemobi/engine/m;->a:[I

    aget v1, v1, v0

    invoke-static {v0, v1}, Lcom/creativemobi/engine/i;->b(II)[Lcom/creativemobi/engine/by;

    move-result-object v1

    .line 131
    array-length v2, v1

    move v3, v9

    :goto_1
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 132
    iget-object v5, p0, Lcom/creativemobi/engine/m;->D:[F

    iget v6, v4, Lcom/creativemobi/engine/by;->b:I

    aget v7, v5, v6

    iget v4, v4, Lcom/creativemobi/engine/by;->a:F

    add-float/2addr v4, v7

    aput v4, v5, v6

    .line 131
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 129
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/m;->u:[Landroid/graphics/Point;

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/Point;

    iput-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    move v0, v9

    .line 136
    :goto_2
    iget-object v1, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/creativemobi/engine/m;->u:[Landroid/graphics/Point;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/creativemobi/engine/m;->D:[F

    aget v4, v4, v8

    add-float/2addr v4, v10

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/creativemobi/engine/m;->u:[Landroid/graphics/Point;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    aput-object v2, v1, v0

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v1, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v1, v1

    sub-int/2addr v1, v8

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v8

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/m;->o:F

    .line 141
    iget-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v1, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v1, v1

    sub-int/2addr v1, v8

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x3c

    int-to-float v0, v0

    iget v1, p0, Lcom/creativemobi/engine/m;->q:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/m;->K:F

    .line 142
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/creativemobi/engine/m;->L:F

    .line 144
    const v0, 0x3f333333    # 0.7f

    .line 145
    iget v1, p0, Lcom/creativemobi/engine/m;->C:I

    if-nez v1, :cond_4

    move v0, v10

    .line 148
    :cond_3
    :goto_3
    iget v1, p0, Lcom/creativemobi/engine/m;->w:F

    iget-object v2, p0, Lcom/creativemobi/engine/m;->D:[F

    const/4 v3, 0x4

    aget v2, v2, v3

    add-float/2addr v1, v2

    const v2, 0x411ccccd    # 9.8f

    mul-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->f()F

    move-result v2

    mul-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/creativemobi/engine/m;->z:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/m;->E:F

    .line 149
    return-void

    .line 146
    :cond_4
    iget v1, p0, Lcom/creativemobi/engine/m;->C:I

    if-ne v1, v8, :cond_3

    const v0, 0x3f0ccccd    # 0.55f

    goto :goto_3
.end method

.method private T()F
    .locals 2

    .prologue
    .line 424
    iget-object v0, p0, Lcom/creativemobi/engine/m;->D:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    const v1, 0x453b8000    # 3000.0f

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/creativemobi/engine/m;->ah:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private U()V
    .locals 2

    .prologue
    .line 454
    invoke-direct {p0}, Lcom/creativemobi/engine/m;->V()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 455
    return-void
.end method

.method private V()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 459
    .line 460
    const/4 v0, 0x0

    move v1, v0

    move v2, v7

    move v0, v7

    .line 461
    :goto_0
    iget-object v3, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 462
    iget-object v3, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    aget-object v3, v3, v0

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    invoke-direct {p0, v3, v4}, Lcom/creativemobi/engine/m;->a(FF)F

    move-result v3

    .line 463
    iget v4, p0, Lcom/creativemobi/engine/m;->s:F

    iget-object v5, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v6, p0, Lcom/creativemobi/engine/m;->T:I

    aget v5, v5, v6

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/creativemobi/engine/m;->n:F

    invoke-direct {p0, v5, v3}, Lcom/creativemobi/engine/m;->b(FF)F

    move-result v5

    mul-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    .line 464
    iget-object v5, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    aget-object v5, v5, v0

    iget v5, v5, Landroid/graphics/Point;->x:I

    int-to-float v5, v5

    invoke-direct {p0, v5, v3, v7}, Lcom/creativemobi/engine/m;->a(FFI)F

    move-result v3

    .line 465
    iget v5, p0, Lcom/creativemobi/engine/m;->E:F

    div-float v5, v4, v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_0

    iget v5, p0, Lcom/creativemobi/engine/m;->E:F

    div-float/2addr v4, v5

    mul-float/2addr v3, v4

    .line 466
    :cond_0
    cmpg-float v4, v1, v3

    if-gez v4, :cond_1

    .line 468
    iget-object v1, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    aget-object v1, v1, v0

    iget v1, v1, Landroid/graphics/Point;->x:I

    move v2, v1

    move v1, v3

    .line 461
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 471
    :cond_2
    return v2
.end method

.method private a(FF)F
    .locals 5

    .prologue
    const/high16 v3, 0x447a0000    # 1000.0f

    .line 405
    const/4 v0, 0x0

    .line 406
    iget-boolean v1, p0, Lcom/creativemobi/engine/m;->ae:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/creativemobi/engine/m;->T()F

    move-result v0

    .line 408
    :cond_0
    mul-float/2addr v0, v3

    mul-float v1, p2, p1

    const v2, 0x476a6000    # 60000.0f

    div-float/2addr v1, v2

    mul-float/2addr v1, v3

    const v2, 0x40c8f5c3    # 6.28f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/creativemobi/engine/m;->D:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/creativemobi/engine/m;->m:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(FFI)F
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/creativemobi/engine/m;->t:[F

    aget v0, v0, p3

    div-float v0, p1, v0

    iget v1, p0, Lcom/creativemobi/engine/m;->s:F

    div-float/2addr v0, v1

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/creativemobi/engine/m;->q:F

    mul-float/2addr v0, v1

    .line 779
    iget v1, p0, Lcom/creativemobi/engine/m;->U:F

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/creativemobi/engine/m;->o:F

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    const/4 v0, 0x0

    .line 780
    :goto_0
    return v0

    :cond_0
    div-float v0, p2, v0

    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->f()F

    move-result v1

    div-float/2addr v0, v1

    goto :goto_0
.end method

.method public static a(I)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 884
    move v1, v0

    .line 885
    :goto_0
    sget-object v2, Lcom/creativemobi/engine/m;->i:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 886
    sget-object v2, Lcom/creativemobi/engine/m;->i:[I

    aget v2, v2, v0

    if-le p0, v2, :cond_0

    .line 885
    add-int/lit8 v1, v0, 0x1

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0

    .line 889
    :cond_0
    return v1
.end method

.method private static a(Ljava/io/DataInputStream;)I
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    add-int/2addr v0, v1

    return v0
.end method

.method public static a(Ljava/io/DataInputStream;I)Lcom/creativemobi/engine/m;
    .locals 9

    .prologue
    const v8, 0x40490fdb    # (float)Math.PI

    const/high16 v7, 0x3fa00000    # 1.25f

    const/4 v6, 0x0

    .line 117
    new-instance v0, Lcom/creativemobi/engine/m;

    invoke-direct {v0}, Lcom/creativemobi/engine/m;-><init>()V

    .line 118
    iput p1, v0, Lcom/creativemobi/engine/m;->S:I

    .line 119
    invoke-static {p0}, Lcom/creativemobi/engine/m;->c(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-static {p0}, Lcom/creativemobi/engine/m;->c(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/creativemobi/engine/m;->Y:Ljava/lang/String;

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/m;->aa:I

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/m;->Z:I

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/m;->C:I

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/m;->r:I

    invoke-static {p0}, Lcom/creativemobi/engine/m;->b(Ljava/io/DataInputStream;)F

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/m;->s:F

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v1

    new-array v1, v1, [F

    iput-object v1, v0, Lcom/creativemobi/engine/m;->t:[F

    move v1, v6

    :goto_0
    iget-object v2, v0, Lcom/creativemobi/engine/m;->t:[F

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, v0, Lcom/creativemobi/engine/m;->t:[F

    invoke-static {p0}, Lcom/creativemobi/engine/m;->b(Ljava/io/DataInputStream;)F

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v1

    new-array v1, v1, [Landroid/graphics/Point;

    iput-object v1, v0, Lcom/creativemobi/engine/m;->u:[Landroid/graphics/Point;

    move v1, v6

    :goto_1
    iget-object v2, v0, Lcom/creativemobi/engine/m;->u:[Landroid/graphics/Point;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v2

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v3

    iget-object v4, v0, Lcom/creativemobi/engine/m;->u:[Landroid/graphics/Point;

    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    aput-object v5, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-static {p0}, Lcom/creativemobi/engine/m;->b(Ljava/io/DataInputStream;)F

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/m;->m:F

    invoke-static {p0}, Lcom/creativemobi/engine/m;->b(Ljava/io/DataInputStream;)F

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/m;->w:F

    invoke-static {p0}, Lcom/creativemobi/engine/m;->b(Ljava/io/DataInputStream;)F

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/m;->z:F

    invoke-static {p0}, Lcom/creativemobi/engine/m;->b(Ljava/io/DataInputStream;)F

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/m;->B:F

    invoke-static {p0}, Lcom/creativemobi/engine/m;->b(Ljava/io/DataInputStream;)F

    move-result v1

    iput v1, v0, Lcom/creativemobi/engine/m;->A:F

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v1

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v0, Lcom/creativemobi/engine/m;->d:Landroid/graphics/Point;

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v1

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v0, Lcom/creativemobi/engine/m;->e:Landroid/graphics/Point;

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v1

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v0, Lcom/creativemobi/engine/m;->b:Landroid/graphics/Point;

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v1

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v2

    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v3, v0, Lcom/creativemobi/engine/m;->c:Landroid/graphics/Point;

    invoke-static {p0}, Lcom/creativemobi/engine/m;->b(Ljava/io/DataInputStream;)F

    move-result v1

    mul-float/2addr v1, v7

    iput v1, v0, Lcom/creativemobi/engine/m;->j:F

    invoke-static {p0}, Lcom/creativemobi/engine/m;->b(Ljava/io/DataInputStream;)F

    move-result v1

    mul-float/2addr v1, v7

    iput v1, v0, Lcom/creativemobi/engine/m;->l:F

    invoke-static {p0}, Lcom/creativemobi/engine/m;->b(Ljava/io/DataInputStream;)F

    move-result v1

    mul-float/2addr v1, v7

    iput v1, v0, Lcom/creativemobi/engine/m;->k:F

    move v1, v6

    :goto_2
    iget-object v2, v0, Lcom/creativemobi/engine/m;->y:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, v0, Lcom/creativemobi/engine/m;->y:[I

    invoke-static {p0}, Lcom/creativemobi/engine/m;->a(Ljava/io/DataInputStream;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v1, v6

    :goto_3
    iget-object v2, v0, Lcom/creativemobi/engine/m;->a:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    if-eq v1, v2, :cond_3

    iget-object v2, v0, Lcom/creativemobi/engine/m;->a:[I

    const/4 v3, 0x6

    aput v3, v2, v1

    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lcom/creativemobi/engine/m;->a:[I

    iget-object v3, v0, Lcom/creativemobi/engine/m;->y:[I

    aget v3, v3, v1

    aput v3, v2, v1

    goto :goto_4

    :cond_4
    iget v1, v0, Lcom/creativemobi/engine/m;->B:F

    iget v2, v0, Lcom/creativemobi/engine/m;->A:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/creativemobi/engine/m;->x:F

    iget v1, v0, Lcom/creativemobi/engine/m;->z:F

    mul-float/2addr v1, v8

    iput v1, v0, Lcom/creativemobi/engine/m;->q:F

    invoke-direct {v0}, Lcom/creativemobi/engine/m;->S()V

    sget v1, Lcom/creativemobi/engine/ad;->c:F

    iget v2, v0, Lcom/creativemobi/engine/m;->r:I

    int-to-float v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sput v1, Lcom/creativemobi/engine/ad;->c:F

    sget v1, Lcom/creativemobi/engine/ad;->b:F

    invoke-virtual {v0}, Lcom/creativemobi/engine/m;->e()F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sput v1, Lcom/creativemobi/engine/ad;->b:F

    sget v1, Lcom/creativemobi/engine/ad;->a:F

    iget v2, v0, Lcom/creativemobi/engine/m;->E:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sput v1, Lcom/creativemobi/engine/ad;->a:F

    move v1, v6

    :goto_5
    iget-object v2, v0, Lcom/creativemobi/engine/m;->y:[I

    array-length v2, v2

    if-ge v1, v2, :cond_5

    iget-object v2, v0, Lcom/creativemobi/engine/m;->a:[I

    iget-object v3, v0, Lcom/creativemobi/engine/m;->y:[I

    aget v3, v3, v1

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    iget v1, v0, Lcom/creativemobi/engine/m;->B:F

    iget v2, v0, Lcom/creativemobi/engine/m;->A:F

    mul-float/2addr v1, v2

    iput v1, v0, Lcom/creativemobi/engine/m;->x:F

    iget v1, v0, Lcom/creativemobi/engine/m;->z:F

    mul-float/2addr v1, v8

    iput v1, v0, Lcom/creativemobi/engine/m;->q:F

    invoke-direct {v0}, Lcom/creativemobi/engine/m;->S()V

    iget v1, v0, Lcom/creativemobi/engine/m;->o:F

    const v2, 0x3fb33333    # 1.4f

    div-float/2addr v1, v2

    iput v1, v0, Lcom/creativemobi/engine/m;->p:F

    .line 120
    return-object v0
.end method

.method private b(FF)F
    .locals 2

    .prologue
    .line 429
    const v0, 0x4118ddc2

    iget v1, p0, Lcom/creativemobi/engine/m;->m:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p2

    div-float/2addr v0, p1

    return v0
.end method

.method private static b(Ljava/io/DataInputStream;)F
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 180
    new-array v0, v4, [B

    .line 181
    new-array v1, v4, [B

    .line 182
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 183
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 184
    const/4 v3, 0x3

    sub-int/2addr v3, v2

    aget-byte v3, v0, v3

    aput-byte v3, v1, v2

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 186
    :cond_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v0

    return v0
.end method

.method private static c(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 284
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    .line 285
    new-array v0, v0, [B

    .line 287
    invoke-virtual {p0, v0}, Ljava/io/DataInputStream;->read([B)I

    .line 288
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 289
    add-int/lit8 v2, v1, 0x1

    aget-byte v2, v0, v2

    .line 290
    add-int/lit8 v3, v1, 0x1

    aget-byte v4, v0, v1

    aput-byte v4, v0, v3

    .line 291
    aput-byte v2, v0, v1

    .line 288
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 293
    :cond_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "unicode"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 294
    return-object v1
.end method

.method private f(F)F
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 490
    const/4 v0, 0x0

    move v1, v3

    .line 491
    :goto_0
    iget-object v2, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 492
    iget-object v2, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    cmpl-float v2, v2, p1

    if-lez v2, :cond_2

    .line 493
    if-nez v1, :cond_1

    iget-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    aget-object v0, v0, v3

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/m;->a(FF)F

    move-result v0

    .line 503
    :cond_0
    :goto_1
    return v0

    .line 495
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    invoke-direct {p0, p1, v0}, Lcom/creativemobi/engine/m;->a(FF)F

    move-result v0

    iget-object v2, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    sub-int v3, v1, v5

    aget-object v2, v2, v3

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    invoke-direct {p0, p1, v2}, Lcom/creativemobi/engine/m;->a(FF)F

    move-result v2

    sub-float/2addr v0, v2

    .line 496
    iget-object v2, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    aget-object v2, v2, v1

    iget v2, v2, Landroid/graphics/Point;->x:I

    iget-object v3, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    sub-int v4, v1, v5

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v3

    .line 497
    iget-object v3, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    sub-int v4, v1, v5

    aget-object v3, v3, v4

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    sub-float v3, p1, v3

    .line 498
    iget-object v4, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    sub-int/2addr v1, v5

    aget-object v1, v4, v1

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-direct {p0, p1, v1}, Lcom/creativemobi/engine/m;->a(FF)F

    move-result v1

    mul-float/2addr v0, v3

    int-to-float v2, v2

    div-float/2addr v0, v2

    add-float/2addr v0, v1

    .line 500
    goto :goto_1

    .line 491
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/creativemobi/engine/m;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public final B()I
    .locals 1

    .prologue
    .line 951
    iget v0, p0, Lcom/creativemobi/engine/m;->S:I

    return v0
.end method

.method public final C()F
    .locals 1

    .prologue
    .line 959
    iget v0, p0, Lcom/creativemobi/engine/m;->J:F

    return v0
.end method

.method public final D()F
    .locals 1

    .prologue
    .line 967
    iget v0, p0, Lcom/creativemobi/engine/m;->R:F

    return v0
.end method

.method public final E()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 975
    iget-object v0, p0, Lcom/creativemobi/engine/m;->a:[I

    aget v0, v0, v1

    if-le v0, v1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final F()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 979
    iget-object v0, p0, Lcom/creativemobi/engine/m;->a:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    if-le v0, v2, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final G()F
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcom/creativemobi/engine/m;->W:F

    return v0
.end method

.method public final H()I
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/creativemobi/engine/m;->T:I

    return v0
.end method

.method public final I()F
    .locals 1

    .prologue
    .line 1006
    iget v0, p0, Lcom/creativemobi/engine/m;->n:F

    return v0
.end method

.method public final J()F
    .locals 1

    .prologue
    .line 1017
    iget v0, p0, Lcom/creativemobi/engine/m;->o:F

    return v0
.end method

.method public final K()F
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/creativemobi/engine/m;->E:F

    return v0
.end method

.method public final L()F
    .locals 1

    .prologue
    .line 1034
    iget v0, p0, Lcom/creativemobi/engine/m;->s:F

    return v0
.end method

.method public final M()[F
    .locals 1

    .prologue
    .line 1042
    iget-object v0, p0, Lcom/creativemobi/engine/m;->t:[F

    return-object v0
.end method

.method public final N()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1050
    iget-object v0, p0, Lcom/creativemobi/engine/m;->aj:Ljava/lang/String;

    return-object v0
.end method

.method public final O()I
    .locals 1

    .prologue
    .line 1054
    iget v0, p0, Lcom/creativemobi/engine/m;->ah:I

    return v0
.end method

.method public final P()F
    .locals 1

    .prologue
    .line 1062
    iget v0, p0, Lcom/creativemobi/engine/m;->j:F

    return v0
.end method

.method public final Q()F
    .locals 1

    .prologue
    .line 1070
    iget v0, p0, Lcom/creativemobi/engine/m;->l:F

    return v0
.end method

.method public final R()F
    .locals 1

    .prologue
    .line 1078
    iget v0, p0, Lcom/creativemobi/engine/m;->k:F

    return v0
.end method

.method public final a(F)V
    .locals 3

    .prologue
    .line 533
    iget v0, p0, Lcom/creativemobi/engine/m;->f:F

    iget v1, p0, Lcom/creativemobi/engine/m;->W:F

    mul-float/2addr v1, p1

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/m;->f:F

    .line 534
    return-void
.end method

.method public final a(FFF)V
    .locals 0

    .prologue
    .line 1086
    iput p1, p0, Lcom/creativemobi/engine/m;->j:F

    .line 1087
    iput p2, p0, Lcom/creativemobi/engine/m;->l:F

    .line 1088
    iput p3, p0, Lcom/creativemobi/engine/m;->k:F

    .line 1089
    return-void
.end method

.method public final a(FI)V
    .locals 8

    .prologue
    const v7, 0x44bb8000    # 1500.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 507
    iget v0, p0, Lcom/creativemobi/engine/m;->U:F

    .line 508
    neg-int v1, p2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->f()F

    move-result v2

    div-float/2addr v1, v2

    .line 509
    iget v2, p0, Lcom/creativemobi/engine/m;->U:F

    mul-float/2addr v1, p1

    div-float/2addr v1, v6

    add-float/2addr v1, v2

    iput v1, p0, Lcom/creativemobi/engine/m;->U:F

    .line 511
    iget v1, p0, Lcom/creativemobi/engine/m;->U:F

    iget v2, p0, Lcom/creativemobi/engine/m;->z:F

    div-float/2addr v1, v2

    const v2, 0x40490fdb    # (float)Math.PI

    div-float/2addr v1, v2

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/creativemobi/engine/m;->s:F

    mul-float/2addr v1, v2

    iget-object v2, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v3, p0, Lcom/creativemobi/engine/m;->T:I

    aget v2, v2, v3

    mul-float/2addr v1, v2

    invoke-virtual {p0, v1, v5}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 512
    iget v1, p0, Lcom/creativemobi/engine/m;->n:F

    cmpg-float v1, v1, v7

    if-gez v1, :cond_0

    invoke-virtual {p0, v7, v5}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 513
    :cond_0
    iget v1, p0, Lcom/creativemobi/engine/m;->n:F

    iget v2, p0, Lcom/creativemobi/engine/m;->o:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    iget v1, p0, Lcom/creativemobi/engine/m;->o:F

    invoke-virtual {p0, v1, v5}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 515
    :cond_1
    iget v1, p0, Lcom/creativemobi/engine/m;->U:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_2

    iput v4, p0, Lcom/creativemobi/engine/m;->U:F

    .line 516
    :cond_2
    iget v1, p0, Lcom/creativemobi/engine/m;->T:I

    if-lez v1, :cond_3

    iget v1, p0, Lcom/creativemobi/engine/m;->n:F

    iget v2, p0, Lcom/creativemobi/engine/m;->o:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x40400000    # 3.0f

    div-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->l()V

    .line 518
    :cond_3
    iget v1, p0, Lcom/creativemobi/engine/m;->f:F

    iget v2, p0, Lcom/creativemobi/engine/m;->W:F

    mul-float/2addr v2, p1

    div-float/2addr v2, v6

    add-float/2addr v1, v2

    iput v1, p0, Lcom/creativemobi/engine/m;->f:F

    .line 520
    iget v1, p0, Lcom/creativemobi/engine/m;->W:F

    iget v2, p0, Lcom/creativemobi/engine/m;->U:F

    sub-float v0, v2, v0

    add-float/2addr v0, v1

    iput v0, p0, Lcom/creativemobi/engine/m;->W:F

    .line 521
    iget v0, p0, Lcom/creativemobi/engine/m;->W:F

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    iput v4, p0, Lcom/creativemobi/engine/m;->W:F

    .line 522
    :cond_4
    return-void
.end method

.method public final a(FZ)V
    .locals 1

    .prologue
    .line 1010
    if-eqz p2, :cond_0

    float-to-int v0, p1

    iput v0, p0, Lcom/creativemobi/engine/m;->h:I

    .line 1012
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/creativemobi/engine/m;->g:I

    .line 1013
    iput p1, p0, Lcom/creativemobi/engine/m;->n:F

    .line 1014
    return-void

    .line 1011
    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/m;->n:F

    float-to-int v0, v0

    iput v0, p0, Lcom/creativemobi/engine/m;->h:I

    goto :goto_0
.end method

.method public final a(II)V
    .locals 1

    .prologue
    .line 983
    iget-object v0, p0, Lcom/creativemobi/engine/m;->a:[I

    aput p2, v0, p1

    .line 984
    invoke-direct {p0}, Lcom/creativemobi/engine/m;->S()V

    .line 985
    return-void
.end method

.method public final a(J)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 439
    iget v0, p0, Lcom/creativemobi/engine/m;->n:F

    const/high16 v1, 0x40400000    # 3.0f

    iget v2, p0, Lcom/creativemobi/engine/m;->p:F

    mul-float/2addr v1, v2

    long-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 440
    iget v0, p0, Lcom/creativemobi/engine/m;->n:F

    iget v1, p0, Lcom/creativemobi/engine/m;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/m;->o:F

    invoke-virtual {p0, v0, v3}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 441
    :cond_0
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;FF)V
    .locals 9

    .prologue
    const/4 v7, 0x1

    .line 714
    iget-object v0, p0, Lcom/creativemobi/engine/m;->aj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 769
    :goto_0
    return-void

    .line 715
    :cond_0
    iput p2, p0, Lcom/creativemobi/engine/m;->R:F

    .line 717
    iget-boolean v0, p0, Lcom/creativemobi/engine/m;->ae:Z

    if-eqz v0, :cond_1

    .line 718
    iget v0, p0, Lcom/creativemobi/engine/m;->R:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ai:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/creativemobi/engine/l;->a()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x5

    .line 719
    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ai:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/creativemobi/engine/l;->b()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    .line 721
    iget-object v2, p0, Lcom/creativemobi/engine/m;->ak:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {v2, v0, v1}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 724
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/m;->W:F

    .line 725
    iget v1, p0, Lcom/creativemobi/engine/m;->W:F

    .line 726
    iget v2, p0, Lcom/creativemobi/engine/m;->C:I

    if-nez v2, :cond_3

    .line 727
    iget v0, p0, Lcom/creativemobi/engine/m;->U:F

    .line 728
    iget v1, p0, Lcom/creativemobi/engine/m;->U:F

    move v8, v1

    move v1, v0

    move v0, v8

    .line 733
    :goto_1
    iget-object v2, p0, Lcom/creativemobi/engine/m;->aj:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    int-to-float v3, v3

    invoke-virtual {v2, p2, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 747
    iget-object v2, p0, Lcom/creativemobi/engine/m;->al:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    iget-object v3, p0, Lcom/creativemobi/engine/m;->b:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, p0, Lcom/creativemobi/engine/m;->O:F

    mul-float/2addr v3, v4

    add-float/2addr v3, p2

    iget v4, p0, Lcom/creativemobi/engine/m;->P:I

    int-to-float v4, v4

    iget-object v5, p0, Lcom/creativemobi/engine/m;->b:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    iget v6, p0, Lcom/creativemobi/engine/m;->O:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 748
    iget-object v2, p0, Lcom/creativemobi/engine/m;->al:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    iget v3, p0, Lcom/creativemobi/engine/m;->q:F

    div-float/2addr v1, v3

    mul-float/2addr v1, p3

    invoke-virtual {v2, v1}, Lcom/creativemobi/engine/cd;->a(F)V

    .line 750
    iget-object v1, p0, Lcom/creativemobi/engine/m;->ao:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 751
    iget-object v1, p0, Lcom/creativemobi/engine/m;->ao:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/m;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/m;->O:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p2

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/creativemobi/engine/m;->d:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/creativemobi/engine/m;->O:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 752
    iget-object v1, p0, Lcom/creativemobi/engine/m;->ap:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/m;->e:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/m;->O:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p2

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/creativemobi/engine/m;->e:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/creativemobi/engine/m;->O:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 753
    iget-object v1, p0, Lcom/creativemobi/engine/m;->aq:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/m;->P:I

    int-to-float v2, v2

    invoke-virtual {v1, p2, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 755
    :cond_2
    iget-object v1, p0, Lcom/creativemobi/engine/m;->am:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/m;->c:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/creativemobi/engine/m;->O:F

    mul-float/2addr v2, v3

    add-float/2addr v2, p2

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/creativemobi/engine/m;->c:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, p0, Lcom/creativemobi/engine/m;->O:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 756
    iget-object v1, p0, Lcom/creativemobi/engine/m;->am:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/m;->q:F

    div-float/2addr v0, v2

    mul-float/2addr v0, p3

    invoke-virtual {v1, v0}, Lcom/creativemobi/engine/cd;->a(F)V

    .line 758
    iget-object v0, p0, Lcom/creativemobi/engine/m;->aj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->m()F

    move-result v0

    .line 759
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_5

    iget-object v0, p0, Lcom/creativemobi/engine/m;->an:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :cond_3
    iget v2, p0, Lcom/creativemobi/engine/m;->C:I

    if-ne v2, v7, :cond_4

    .line 730
    iget v1, p0, Lcom/creativemobi/engine/m;->U:F

    move v8, v1

    move v1, v0

    move v0, v8

    goto/16 :goto_1

    .line 731
    :cond_4
    iget v0, p0, Lcom/creativemobi/engine/m;->U:F

    move v8, v1

    move v1, v0

    move v0, v8

    goto/16 :goto_1

    .line 761
    :cond_5
    iget-object v1, p0, Lcom/creativemobi/engine/m;->an:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v1

    .line 763
    iget-object v2, p0, Lcom/creativemobi/engine/m;->al:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v2

    .line 764
    invoke-virtual {v1, v7}, Lcom/creativemobi/engine/cd;->a(Z)V

    .line 765
    const/high16 v3, 0x40e00000    # 7.0f

    add-float/2addr v3, p2

    invoke-virtual {v2}, Lcom/creativemobi/engine/cd;->h()F

    move-result v2

    invoke-virtual {v1}, Lcom/creativemobi/engine/cd;->l()F

    move-result v4

    add-float/2addr v2, v4

    const/high16 v4, 0x40a00000    # 5.0f

    sub-float/2addr v2, v4

    invoke-virtual {v1, v3, v2}, Lcom/creativemobi/engine/cd;->b(FF)V

    .line 766
    const/high16 v2, 0x43910000    # 290.0f

    div-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/creativemobi/engine/cd;->b(F)V

    goto/16 :goto_0
.end method

.method public final a(Lcom/creativemobi/engine/w;FI)V
    .locals 12

    .prologue
    .line 537
    iget v0, p0, Lcom/creativemobi/engine/m;->U:F

    .line 538
    iget v1, p0, Lcom/creativemobi/engine/m;->n:F

    invoke-direct {p0, v1}, Lcom/creativemobi/engine/m;->f(F)F

    move-result v1

    .line 539
    iget v2, p0, Lcom/creativemobi/engine/m;->s:F

    iget-object v3, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v4, p0, Lcom/creativemobi/engine/m;->T:I

    aget v3, v3, v4

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/creativemobi/engine/m;->n:F

    invoke-direct {p0, v3, v1}, Lcom/creativemobi/engine/m;->b(FF)F

    move-result v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    .line 541
    iget v3, p0, Lcom/creativemobi/engine/m;->E:F

    .line 542
    iget v4, p0, Lcom/creativemobi/engine/m;->U:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    iget v4, p0, Lcom/creativemobi/engine/m;->U:F

    iget v5, p0, Lcom/creativemobi/engine/m;->W:F

    div-float/2addr v4, v5

    const v5, 0x3f8ccccd    # 1.1f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    move v3, v2

    .line 543
    :cond_0
    div-float v2, v3, v2

    .line 545
    invoke-direct {p0}, Lcom/creativemobi/engine/m;->T()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    iget-boolean v4, p0, Lcom/creativemobi/engine/m;->X:Z

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/creativemobi/engine/m;->af:Z

    if-eqz v4, :cond_1

    .line 546
    invoke-direct {p0}, Lcom/creativemobi/engine/m;->T()F

    move-result v4

    add-float/2addr v4, v1

    div-float/2addr v4, v1

    .line 547
    cmpl-float v4, v2, v4

    if-ltz v4, :cond_1

    invoke-virtual {p0, p1}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;)Z

    .line 550
    :cond_1
    iget v4, p0, Lcom/creativemobi/engine/m;->F:F

    add-float/2addr v4, p2

    iput v4, p0, Lcom/creativemobi/engine/m;->F:F

    .line 552
    const v4, 0x3f19999a    # 0.6f

    iget v5, p0, Lcom/creativemobi/engine/m;->x:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/creativemobi/engine/m;->U:F

    iget v6, p0, Lcom/creativemobi/engine/m;->U:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/creativemobi/engine/m;->U:F

    mul-float/2addr v5, v6

    mul-float/2addr v4, v5

    const v5, 0x3f4ccccd    # 0.8f

    div-float/2addr v4, v5

    .line 553
    const v5, 0x3c656042    # 0.014f

    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->f()F

    move-result v6

    mul-float/2addr v5, v6

    const v6, 0x411ccccd    # 9.8f

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/creativemobi/engine/m;->U:F

    mul-float/2addr v5, v6

    .line 555
    iget v6, p0, Lcom/creativemobi/engine/m;->n:F

    iget-object v7, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v8, p0, Lcom/creativemobi/engine/m;->T:I

    aget v7, v7, v8

    div-float/2addr v6, v7

    iget v7, p0, Lcom/creativemobi/engine/m;->s:F

    div-float/2addr v6, v7

    const/high16 v7, 0x42700000    # 60.0f

    div-float/2addr v6, v7

    iget v7, p0, Lcom/creativemobi/engine/m;->q:F

    mul-float/2addr v6, v7

    .line 556
    iget v7, p0, Lcom/creativemobi/engine/m;->n:F

    sub-float v8, v1, v4

    sub-float/2addr v8, v5

    iget v9, p0, Lcom/creativemobi/engine/m;->T:I

    invoke-direct {p0, v7, v8, v9}, Lcom/creativemobi/engine/m;->a(FFI)F

    move-result v7

    .line 557
    iget v8, p0, Lcom/creativemobi/engine/m;->U:F

    mul-float v9, v7, p2

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, p0, Lcom/creativemobi/engine/m;->U:F

    .line 559
    iget v8, p0, Lcom/creativemobi/engine/m;->f:F

    .line 560
    iget v9, p0, Lcom/creativemobi/engine/m;->f:F

    iget v10, p0, Lcom/creativemobi/engine/m;->W:F

    mul-float/2addr v10, p2

    const/high16 v11, 0x447a0000    # 1000.0f

    div-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, p0, Lcom/creativemobi/engine/m;->f:F

    .line 562
    iget v9, p0, Lcom/creativemobi/engine/m;->f:F

    int-to-float v10, p3

    cmpl-float v9, v9, v10

    if-lez v9, :cond_2

    .line 563
    iget v9, p0, Lcom/creativemobi/engine/m;->F:F

    sub-float/2addr v9, p2

    iput v9, p0, Lcom/creativemobi/engine/m;->F:F

    .line 564
    iget v9, p0, Lcom/creativemobi/engine/m;->F:F

    int-to-float v10, p3

    sub-float/2addr v10, v8

    iget v11, p0, Lcom/creativemobi/engine/m;->f:F

    sub-float v8, v11, v8

    div-float v8, v10, v8

    mul-float/2addr v8, p2

    add-float/2addr v8, v9

    iput v8, p0, Lcom/creativemobi/engine/m;->F:F

    .line 567
    :cond_2
    iget v8, p0, Lcom/creativemobi/engine/m;->J:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_3

    iget v8, p0, Lcom/creativemobi/engine/m;->f:F

    const/high16 v9, 0x43c80000    # 400.0f

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_3

    .line 568
    iget v8, p0, Lcom/creativemobi/engine/m;->F:F

    iput v8, p0, Lcom/creativemobi/engine/m;->J:F

    .line 571
    :cond_3
    iget v8, p0, Lcom/creativemobi/engine/m;->U:F

    sub-float v8, v6, v8

    iget-object v9, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v10, p0, Lcom/creativemobi/engine/m;->T:I

    aget v9, v9, v10

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/creativemobi/engine/m;->s:F

    mul-float/2addr v8, v9

    const/high16 v9, 0x42700000    # 60.0f

    mul-float/2addr v8, v9

    iget v9, p0, Lcom/creativemobi/engine/m;->q:F

    div-float/2addr v8, v9

    .line 572
    iget v9, p0, Lcom/creativemobi/engine/m;->n:F

    iget v10, p0, Lcom/creativemobi/engine/m;->p:F

    sub-float v8, v10, v8

    const/high16 v10, 0x447a0000    # 1000.0f

    div-float/2addr v8, v10

    mul-float/2addr v8, p2

    add-float/2addr v8, v9

    .line 573
    iget v9, p0, Lcom/creativemobi/engine/m;->n:F

    cmpl-float v9, v8, v9

    if-lez v9, :cond_c

    iget v9, p0, Lcom/creativemobi/engine/m;->U:F

    cmpg-float v9, v6, v9

    if-gtz v9, :cond_c

    .line 574
    const/4 v6, 0x0

    invoke-virtual {p0, v8, v6}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 583
    :goto_0
    iget v6, p0, Lcom/creativemobi/engine/m;->n:F

    iget-object v8, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v9, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v9, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    cmpl-float v6, v6, v8

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v8, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v8, v8

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    aget-object v6, v6, v8

    iget v6, v6, Landroid/graphics/Point;->x:I

    const/4 v8, 0x1

    sub-int/2addr v6, v8

    int-to-float v6, v6

    const/4 v8, 0x1

    invoke-virtual {p0, v6, v8}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 585
    :cond_4
    iget v6, p0, Lcom/creativemobi/engine/m;->K:F

    iget-object v8, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v9, p0, Lcom/creativemobi/engine/m;->T:I

    aget v8, v8, v9

    div-float/2addr v6, v8

    iget v8, p0, Lcom/creativemobi/engine/m;->s:F

    div-float/2addr v6, v8

    .line 586
    iget-boolean v8, p0, Lcom/creativemobi/engine/m;->X:Z

    if-eqz v8, :cond_5

    .line 587
    iget v8, p0, Lcom/creativemobi/engine/m;->U:F

    cmpl-float v8, v8, v6

    if-ltz v8, :cond_f

    .line 589
    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->k()V

    .line 611
    :cond_5
    :goto_1
    iget v1, p0, Lcom/creativemobi/engine/m;->U:F

    cmpl-float v1, v1, v6

    if-lez v1, :cond_6

    iput v6, p0, Lcom/creativemobi/engine/m;->U:F

    .line 613
    :cond_6
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_12

    const/high16 v1, 0x3f800000    # 1.0f

    .line 614
    :goto_2
    iget v2, p0, Lcom/creativemobi/engine/m;->W:F

    iget v3, p0, Lcom/creativemobi/engine/m;->U:F

    iget v4, p0, Lcom/creativemobi/engine/m;->W:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Lcom/creativemobi/engine/m;->W:F

    .line 616
    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_11

    const/4 v2, 0x1

    :goto_3
    iput-boolean v2, p0, Lcom/creativemobi/engine/m;->M:Z

    .line 617
    iget-boolean v2, p0, Lcom/creativemobi/engine/m;->M:Z

    if-eqz v2, :cond_7

    .line 618
    iget v2, p0, Lcom/creativemobi/engine/m;->n:F

    iget v3, p0, Lcom/creativemobi/engine/m;->p:F

    mul-float/2addr v3, p2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v1

    mul-float/2addr v3, v4

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 619
    iget v2, p0, Lcom/creativemobi/engine/m;->U:F

    mul-float v3, v7, p2

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v1, v4, v1

    mul-float/2addr v1, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v1, v3

    sub-float v1, v2, v1

    iput v1, p0, Lcom/creativemobi/engine/m;->U:F

    .line 620
    iget v1, p0, Lcom/creativemobi/engine/m;->U:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_7

    const/4 v1, 0x0

    iput v1, p0, Lcom/creativemobi/engine/m;->U:F

    .line 623
    :cond_7
    iget v1, p0, Lcom/creativemobi/engine/m;->W:F

    iget v2, p0, Lcom/creativemobi/engine/m;->G:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_8

    iget v1, p0, Lcom/creativemobi/engine/m;->W:F

    iput v1, p0, Lcom/creativemobi/engine/m;->G:F

    .line 624
    :cond_8
    iget v1, p0, Lcom/creativemobi/engine/m;->H:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/creativemobi/engine/m;->W:F

    const v2, 0x41d55555

    cmpl-float v1, v1, v2

    if-lez v1, :cond_9

    iget v1, p0, Lcom/creativemobi/engine/m;->F:F

    iput v1, p0, Lcom/creativemobi/engine/m;->H:F

    .line 626
    :cond_9
    iget v1, p0, Lcom/creativemobi/engine/m;->I:F

    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_a

    iget v1, p0, Lcom/creativemobi/engine/m;->W:F

    const v2, 0x4231c71c

    cmpl-float v1, v1, v2

    if-lez v1, :cond_a

    iget v1, p0, Lcom/creativemobi/engine/m;->F:F

    iput v1, p0, Lcom/creativemobi/engine/m;->I:F

    .line 628
    :cond_a
    iget-boolean v1, p0, Lcom/creativemobi/engine/m;->ae:Z

    if-eqz v1, :cond_b

    .line 629
    iget-wide v1, p0, Lcom/creativemobi/engine/m;->ag:J

    long-to-float v1, v1

    add-float/2addr v1, p2

    float-to-long v1, v1

    iput-wide v1, p0, Lcom/creativemobi/engine/m;->ag:J

    .line 630
    iget-wide v1, p0, Lcom/creativemobi/engine/m;->ag:J

    iget v3, p0, Lcom/creativemobi/engine/m;->ah:I

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_b

    .line 631
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/creativemobi/engine/m;->ae:Z

    .line 632
    iget-boolean v1, p0, Lcom/creativemobi/engine/m;->V:Z

    if-nez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nitro"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 636
    :cond_b
    iget v1, p0, Lcom/creativemobi/engine/m;->U:F

    sub-float v0, v1, v0

    div-float/2addr v0, p2

    iput v0, p0, Lcom/creativemobi/engine/m;->N:F

    .line 637
    return-void

    .line 576
    :cond_c
    iget v8, p0, Lcom/creativemobi/engine/m;->U:F

    cmpl-float v8, v6, v8

    if-lez v8, :cond_e

    iget v8, p0, Lcom/creativemobi/engine/m;->h:I

    int-to-float v8, v8

    iget v9, p0, Lcom/creativemobi/engine/m;->n:F

    cmpg-float v8, v8, v9

    if-gez v8, :cond_e

    .line 577
    iget v8, p0, Lcom/creativemobi/engine/m;->n:F

    iget-object v9, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v10, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v10, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_d

    iget-object v8, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v9, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v9, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    int-to-float v8, v8

    const/4 v9, 0x1

    invoke-virtual {p0, v8, v9}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 578
    :cond_d
    iget v8, p0, Lcom/creativemobi/engine/m;->U:F

    sub-float/2addr v6, v8

    div-float/2addr v6, v7

    .line 579
    iget v8, p0, Lcom/creativemobi/engine/m;->n:F

    iget v9, p0, Lcom/creativemobi/engine/m;->h:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    div-float v6, v8, v6

    float-to-int v6, v6

    iput v6, p0, Lcom/creativemobi/engine/m;->g:I

    goto/16 :goto_0

    .line 580
    :cond_e
    const/4 v6, 0x0

    iput v6, p0, Lcom/creativemobi/engine/m;->g:I

    goto/16 :goto_0

    .line 590
    :cond_f
    iget v8, p0, Lcom/creativemobi/engine/m;->T:I

    iget-object v9, p0, Lcom/creativemobi/engine/m;->t:[F

    array-length v9, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v8, v9, :cond_5

    .line 591
    iget-object v8, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v9, p0, Lcom/creativemobi/engine/m;->T:I

    aget v8, v8, v9

    .line 592
    iget-object v9, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v10, p0, Lcom/creativemobi/engine/m;->T:I

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    .line 593
    iget v10, p0, Lcom/creativemobi/engine/m;->n:F

    mul-float/2addr v9, v10

    div-float v8, v9, v8

    .line 594
    invoke-direct {p0, v8}, Lcom/creativemobi/engine/m;->f(F)F

    move-result v9

    .line 596
    sub-float v4, v9, v4

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/creativemobi/engine/m;->T:I

    add-int/lit8 v5, v5, 0x1

    invoke-direct {p0, v8, v4, v5}, Lcom/creativemobi/engine/m;->a(FFI)F

    move-result v4

    .line 598
    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v5, v2, v5

    if-gez v5, :cond_10

    .line 599
    iget v5, p0, Lcom/creativemobi/engine/m;->s:F

    iget-object v9, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v10, p0, Lcom/creativemobi/engine/m;->T:I

    add-int/lit8 v10, v10, 0x1

    aget v9, v9, v10

    mul-float/2addr v5, v9

    invoke-direct {p0, v8, v1}, Lcom/creativemobi/engine/m;->b(FF)F

    move-result v1

    mul-float/2addr v1, v5

    iget v5, p0, Lcom/creativemobi/engine/m;->z:F

    div-float/2addr v1, v5

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v1, v5

    .line 600
    div-float v1, v3, v1

    .line 601
    mul-float/2addr v1, v4

    mul-float v3, v7, v2

    cmpl-float v1, v1, v3

    if-ltz v1, :cond_5

    .line 602
    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->k()V

    goto/16 :goto_1

    .line 604
    :cond_10
    cmpl-float v1, v4, v7

    if-ltz v1, :cond_5

    .line 605
    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->k()V

    goto/16 :goto_1

    .line 616
    :cond_11
    const/4 v2, 0x0

    goto/16 :goto_3

    :cond_12
    move v1, v2

    goto/16 :goto_2
.end method

.method public final a(Lcom/creativemobi/engine/w;ZZ)V
    .locals 10

    .prologue
    const/16 v9, 0xc

    const/16 v8, 0x9

    const/4 v7, 0x7

    .line 315
    iput-boolean p3, p0, Lcom/creativemobi/engine/m;->X:Z

    .line 316
    if-nez p2, :cond_0

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/creativemobi/engine/m;->O:F

    .line 317
    :cond_0
    if-eqz p2, :cond_3

    const/16 v0, 0xaa

    iput v0, p0, Lcom/creativemobi/engine/m;->P:I

    .line 320
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/m;->aj:Ljava/lang/String;

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Disk1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/m;->al:Ljava/lang/String;

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Disk2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/m;->am:Ljava/lang/String;

    .line 323
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "shadow"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/m;->an:Ljava/lang/String;

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/m;->ao:Ljava/lang/String;

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Whee2"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/m;->ap:Ljava/lang/String;

    .line 326
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/m;->aq:Ljava/lang/String;

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nitro"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/creativemobi/engine/m;->ak:Ljava/lang/String;

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iget v4, p0, Lcom/creativemobi/engine/m;->j:F

    iget v5, p0, Lcom/creativemobi/engine/m;->l:F

    iget v6, p0, Lcom/creativemobi/engine/m;->k:F

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;FFF)Lcom/creativemobi/engine/l;

    .line 335
    iget-object v0, p0, Lcom/creativemobi/engine/m;->aj:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/m;->Q:I

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 337
    iget v1, p0, Lcom/creativemobi/engine/m;->O:F

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 339
    if-eqz p2, :cond_4

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 342
    :goto_1
    iget-object v0, p0, Lcom/creativemobi/engine/m;->al:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/m;->Q:I

    add-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    add-int/lit16 v3, v3, 0xc8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 343
    iget v1, p0, Lcom/creativemobi/engine/m;->O:F

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 344
    if-eqz p2, :cond_5

    invoke-virtual {v0, v9}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 349
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Wheel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

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

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 351
    :cond_1
    iget-object v0, p0, Lcom/creativemobi/engine/m;->ao:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/m;->Q:I

    add-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    add-int/lit16 v3, v3, 0xc8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 352
    iget v1, p0, Lcom/creativemobi/engine/m;->O:F

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 353
    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 356
    iget-object v0, p0, Lcom/creativemobi/engine/m;->ap:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Wheel"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/m;->Q:I

    add-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    add-int/lit16 v3, v3, 0xc8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 357
    iget v1, p0, Lcom/creativemobi/engine/m;->O:F

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 358
    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Details"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "graphics/cars/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Detail.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p1, v0, v1, v2}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap$Config;)Lcom/creativemobi/engine/l;

    .line 363
    :cond_2
    iget-object v0, p0, Lcom/creativemobi/engine/m;->aq:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Details"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/m;->Q:I

    add-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    add-int/lit16 v3, v3, 0xc8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 364
    iget v1, p0, Lcom/creativemobi/engine/m;->O:F

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 365
    if-eqz p2, :cond_6

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 369
    :goto_3
    iget-object v0, p0, Lcom/creativemobi/engine/m;->am:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_Disk"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/creativemobi/engine/m;->Q:I

    add-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    add-int/lit16 v3, v3, 0xc8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 370
    iget v1, p0, Lcom/creativemobi/engine/m;->O:F

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->b(F)V

    .line 371
    if-eqz p2, :cond_7

    invoke-virtual {v0, v9}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 374
    :goto_4
    iget-object v0, p0, Lcom/creativemobi/engine/m;->an:Ljava/lang/String;

    const-string v1, "shadow"

    iget v2, p0, Lcom/creativemobi/engine/m;->Q:I

    add-int/lit8 v2, v2, 0x3c

    iget v3, p0, Lcom/creativemobi/engine/m;->P:I

    add-int/lit16 v3, v3, 0xc8

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/creativemobi/engine/w;->b(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 376
    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->j()V

    .line 377
    invoke-virtual {v0, v7}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 379
    iget-boolean v0, p0, Lcom/creativemobi/engine/m;->X:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 389
    :goto_5
    iget v0, p0, Lcom/creativemobi/engine/m;->f:F

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/creativemobi/engine/m;->a(Lcom/creativemobi/engine/w;FF)V

    .line 390
    return-void

    .line 318
    :cond_3
    const/16 v0, 0x32

    iput v0, p0, Lcom/creativemobi/engine/m;->P:I

    goto/16 :goto_0

    .line 340
    :cond_4
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    goto/16 :goto_1

    .line 345
    :cond_5
    invoke-virtual {v0, v8}, Lcom/creativemobi/engine/cd;->a(I)V

    goto/16 :goto_2

    .line 366
    :cond_6
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    goto :goto_3

    .line 372
    :cond_7
    invoke-virtual {v0, v8}, Lcom/creativemobi/engine/cd;->a(I)V

    goto :goto_4

    .line 380
    :cond_8
    invoke-direct {p0}, Lcom/creativemobi/engine/m;->U()V

    goto :goto_5
.end method

.method public final a([F)V
    .locals 0

    .prologue
    .line 1046
    iput-object p1, p0, Lcom/creativemobi/engine/m;->t:[F

    .line 1047
    return-void
.end method

.method public final a([I)V
    .locals 3

    .prologue
    .line 988
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 989
    iget-object v1, p0, Lcom/creativemobi/engine/m;->a:[I

    aget v2, p1, v0

    aput v2, v1, v0

    .line 988
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 990
    :cond_0
    invoke-direct {p0}, Lcom/creativemobi/engine/m;->S()V

    .line 991
    return-void
.end method

.method public final a(Lcom/creativemobi/engine/w;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 152
    iget-boolean v0, p0, Lcom/creativemobi/engine/m;->af:Z

    if-nez v0, :cond_0

    move v0, v4

    .line 172
    :goto_0
    return v0

    .line 153
    :cond_0
    iput-boolean v4, p0, Lcom/creativemobi/engine/m;->af:Z

    .line 154
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/creativemobi/engine/m;->ag:J

    .line 155
    iput-boolean v5, p0, Lcom/creativemobi/engine/m;->ae:Z

    .line 157
    iget-boolean v0, p0, Lcom/creativemobi/engine/m;->V:Z

    if-nez v0, :cond_1

    .line 158
    iget v0, p0, Lcom/creativemobi/engine/m;->R:F

    float-to-int v0, v0

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ai:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/creativemobi/engine/l;->a()I

    move-result v1

    sub-int/2addr v0, v1

    .line 159
    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    iget-object v2, p0, Lcom/creativemobi/engine/m;->ai:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/creativemobi/engine/w;->d(Ljava/lang/String;)Lcom/creativemobi/engine/l;

    move-result-object v2

    invoke-virtual {v2}, Lcom/creativemobi/engine/l;->b()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    .line 161
    iget-object v2, p0, Lcom/creativemobi/engine/m;->ak:Ljava/lang/String;

    iget-object v3, p0, Lcom/creativemobi/engine/m;->ai:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v0, v1}, Lcom/creativemobi/engine/w;->a(Ljava/lang/String;Ljava/lang/String;II)Lcom/creativemobi/engine/cd;

    move-result-object v0

    .line 162
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(I)V

    .line 163
    const/4 v1, 0x4

    invoke-virtual {v0, v5, v1}, Lcom/creativemobi/engine/cd;->a(II)V

    .line 164
    const/4 v1, 0x3

    const/16 v2, 0x32

    invoke-virtual {v0, v4, v1, v2, v4}, Lcom/creativemobi/engine/cd;->a(IIIZ)V

    .line 165
    new-instance v1, Lcom/creativemobi/engine/f;

    invoke-direct {v1, p0}, Lcom/creativemobi/engine/f;-><init>(Lcom/creativemobi/engine/m;)V

    invoke-virtual {v0, v1}, Lcom/creativemobi/engine/cd;->a(Lcom/creativemobi/engine/br;)V

    :cond_1
    move v0, v5

    .line 172
    goto :goto_0
.end method

.method public final a()[I
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/creativemobi/engine/m;->a:[I

    return-object v0
.end method

.method public final b(Lcom/creativemobi/engine/w;)F
    .locals 2

    .prologue
    .line 525
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 526
    :goto_0
    return v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/creativemobi/engine/m;->P:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->e(Ljava/lang/String;)Lcom/creativemobi/engine/cd;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/cd;->g()Lcom/creativemobi/engine/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/creativemobi/engine/l;->a()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/creativemobi/engine/m;->O:F

    mul-float/2addr v0, v1

    goto :goto_0
.end method

.method public final b(F)V
    .locals 0

    .prologue
    .line 1038
    iput p1, p0, Lcom/creativemobi/engine/m;->s:F

    .line 1039
    return-void
.end method

.method public final b(I)V
    .locals 0

    .prologue
    .line 1058
    iput p1, p0, Lcom/creativemobi/engine/m;->ah:I

    .line 1059
    return-void
.end method

.method public final b(J)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 444
    iget v0, p0, Lcom/creativemobi/engine/m;->n:F

    const/high16 v1, 0x3fc00000    # 1.5f

    iget v2, p0, Lcom/creativemobi/engine/m;->p:F

    mul-float/2addr v1, v2

    long-to-float v2, p1

    mul-float/2addr v1, v2

    const/high16 v2, 0x447a0000    # 1000.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 445
    iget v0, p0, Lcom/creativemobi/engine/m;->n:F

    iget v1, p0, Lcom/creativemobi/engine/m;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/creativemobi/engine/m;->o:F

    invoke-virtual {p0, v0, v3}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iget v0, p0, Lcom/creativemobi/engine/m;->n:F

    iget-object v1, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    aget-object v1, v1, v4

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    aget-object v0, v0, v4

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p0, v0, v3}, Lcom/creativemobi/engine/m;->a(FZ)V

    goto :goto_0
.end method

.method public final b()[I
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/creativemobi/engine/m;->y:[I

    return-object v0
.end method

.method public final c(J)I
    .locals 13

    .prologue
    .line 640
    iget v0, p0, Lcom/creativemobi/engine/m;->T:I

    iget-object v1, p0, Lcom/creativemobi/engine/m;->t:[F

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 691
    :goto_0
    return v0

    .line 641
    :cond_0
    iget v0, p0, Lcom/creativemobi/engine/m;->n:F

    invoke-direct {p0, v0}, Lcom/creativemobi/engine/m;->f(F)F

    move-result v0

    .line 643
    const v1, 0x3f19999a    # 0.6f

    iget v2, p0, Lcom/creativemobi/engine/m;->x:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/creativemobi/engine/m;->U:F

    iget v3, p0, Lcom/creativemobi/engine/m;->U:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/creativemobi/engine/m;->U:F

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    const v2, 0x3f4ccccd    # 0.8f

    div-float/2addr v1, v2

    .line 644
    const v2, 0x3c656042    # 0.014f

    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->f()F

    move-result v3

    mul-float/2addr v2, v3

    const v3, 0x411ccccd    # 9.8f

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/creativemobi/engine/m;->U:F

    mul-float/2addr v2, v3

    .line 646
    iget v3, p0, Lcom/creativemobi/engine/m;->n:F

    sub-float/2addr v0, v1

    sub-float/2addr v0, v2

    iget v4, p0, Lcom/creativemobi/engine/m;->T:I

    invoke-direct {p0, v3, v0, v4}, Lcom/creativemobi/engine/m;->a(FFI)F

    move-result v0

    .line 648
    iget-object v3, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v4, p0, Lcom/creativemobi/engine/m;->T:I

    aget v3, v3, v4

    .line 649
    iget-object v4, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v5, p0, Lcom/creativemobi/engine/m;->T:I

    add-int/lit8 v5, v5, 0x1

    aget v4, v4, v5

    .line 650
    iget v5, p0, Lcom/creativemobi/engine/m;->n:F

    mul-float/2addr v5, v4

    div-float/2addr v5, v3

    .line 651
    invoke-direct {p0, v5}, Lcom/creativemobi/engine/m;->f(F)F

    move-result v6

    .line 653
    sub-float/2addr v6, v1

    sub-float/2addr v6, v2

    iget v7, p0, Lcom/creativemobi/engine/m;->T:I

    add-int/lit8 v7, v7, 0x1

    invoke-direct {p0, v5, v6, v7}, Lcom/creativemobi/engine/m;->a(FFI)F

    move-result v5

    .line 655
    iget-object v6, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v7, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v7, v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    aget-object v6, v6, v7

    iget v6, v6, Landroid/graphics/Point;->x:I

    div-int/lit8 v6, v6, 0x64

    .line 657
    div-int/lit8 v7, v6, 0x3

    .line 659
    int-to-float v8, v7

    iget v9, p0, Lcom/creativemobi/engine/m;->n:F

    add-float/2addr v8, v9

    iget-object v9, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v10, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v10, v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    aget-object v9, v9, v10

    iget v9, v9, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    cmpl-float v8, v8, v9

    if-ltz v8, :cond_2

    .line 660
    iget-wide v0, p0, Lcom/creativemobi/engine/m;->ad:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 661
    iget-wide v0, p0, Lcom/creativemobi/engine/m;->ad:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/creativemobi/engine/m;->ad:J

    .line 662
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 664
    :cond_1
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 666
    :cond_2
    iget v8, p0, Lcom/creativemobi/engine/m;->n:F

    .line 667
    cmpl-float v9, v5, v0

    if-lez v9, :cond_8

    .line 668
    iget-wide v0, p0, Lcom/creativemobi/engine/m;->ad:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_3

    .line 669
    iget-wide v0, p0, Lcom/creativemobi/engine/m;->ad:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/creativemobi/engine/m;->ad:J

    .line 670
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 672
    :cond_3
    const/4 v0, -0x1

    goto/16 :goto_0

    .line 674
    :goto_1
    cmpg-float v8, v8, v0

    if-gez v8, :cond_4

    iget-object v8, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v9, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v9, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    aget-object v8, v8, v9

    iget v8, v8, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    cmpg-float v8, v5, v8

    if-gez v8, :cond_4

    .line 675
    int-to-float v8, v6

    add-float/2addr v5, v8

    .line 676
    mul-float v8, v5, v4

    div-float/2addr v8, v3

    .line 677
    invoke-direct {p0, v8}, Lcom/creativemobi/engine/m;->f(F)F

    move-result v9

    .line 678
    sub-float/2addr v9, v1

    sub-float/2addr v9, v2

    iget v10, p0, Lcom/creativemobi/engine/m;->T:I

    add-int/lit8 v10, v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/creativemobi/engine/m;->a(FFI)F

    move-result v8

    goto :goto_1

    .line 681
    :cond_4
    iget-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v1, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    cmpl-float v0, v5, v0

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v1, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v7

    int-to-float v0, v0

    .line 683
    :goto_2
    iget v1, p0, Lcom/creativemobi/engine/m;->n:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    int-to-float v1, v6

    div-float/2addr v0, v1

    .line 684
    const/high16 v1, 0x40400000    # 3.0f

    cmpg-float v1, v0, v1

    if-gez v1, :cond_5

    .line 685
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/creativemobi/engine/m;->ad:J

    .line 686
    const/4 v0, 0x2

    goto/16 :goto_0

    .line 689
    :cond_5
    const-wide/16 v1, 0x1c2

    iput-wide v1, p0, Lcom/creativemobi/engine/m;->ad:J

    .line 690
    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    const/4 v0, 0x1

    goto/16 :goto_0

    .line 691
    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    move v0, v5

    goto :goto_2

    :cond_8
    move v12, v8

    move v8, v5

    move v5, v12

    goto :goto_1
.end method

.method public final c()Ljava/util/ArrayList;
    .locals 4

    .prologue
    .line 110
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 111
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/creativemobi/engine/m;->a:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 112
    new-instance v2, Landroid/graphics/Point;

    iget-object v3, p0, Lcom/creativemobi/engine/m;->a:[I

    aget v3, v3, v1

    invoke-direct {v2, v1, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-object v0
.end method

.method public final c(F)V
    .locals 0

    .prologue
    .line 1066
    iput p1, p0, Lcom/creativemobi/engine/m;->j:F

    .line 1067
    return-void
.end method

.method public final c(Lcom/creativemobi/engine/w;)V
    .locals 1

    .prologue
    .line 703
    iget-object v0, p0, Lcom/creativemobi/engine/m;->aj:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 704
    iget-object v0, p0, Lcom/creativemobi/engine/m;->ao:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 705
    iget-object v0, p0, Lcom/creativemobi/engine/m;->ap:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/creativemobi/engine/m;->aq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 707
    iget-object v0, p0, Lcom/creativemobi/engine/m;->ak:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 708
    iget-object v0, p0, Lcom/creativemobi/engine/m;->al:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 709
    iget-object v0, p0, Lcom/creativemobi/engine/m;->am:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 710
    iget-object v0, p0, Lcom/creativemobi/engine/m;->an:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/creativemobi/engine/w;->f(Ljava/lang/String;)V

    .line 711
    return-void
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 1030
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcom/creativemobi/engine/m;->aa:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    new-instance v1, Ljava/lang/Integer;

    check-cast p1, Lcom/creativemobi/engine/m;

    iget v2, p1, Lcom/creativemobi/engine/m;->aa:I

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public final d()V
    .locals 1

    .prologue
    const/4 v0, 0x1

    .line 298
    iput-boolean v0, p0, Lcom/creativemobi/engine/m;->X:Z

    .line 299
    iput-boolean v0, p0, Lcom/creativemobi/engine/m;->V:Z

    .line 300
    invoke-direct {p0}, Lcom/creativemobi/engine/m;->U()V

    .line 301
    return-void
.end method

.method public final d(F)V
    .locals 0

    .prologue
    .line 1074
    iput p1, p0, Lcom/creativemobi/engine/m;->l:F

    .line 1075
    return-void
.end method

.method public final e()F
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 393
    iget v0, p0, Lcom/creativemobi/engine/m;->L:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/m;->L:F

    .line 401
    :goto_0
    return v0

    .line 394
    :cond_0
    iput-boolean v2, p0, Lcom/creativemobi/engine/m;->ae:Z

    .line 395
    iget-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v1, v0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 396
    iget v4, v3, Landroid/graphics/Point;->x:I

    int-to-float v4, v4

    iget v3, v3, Landroid/graphics/Point;->y:I

    int-to-float v3, v3

    invoke-direct {p0, v4, v3}, Lcom/creativemobi/engine/m;->a(FF)F

    move-result v3

    iget v4, p0, Lcom/creativemobi/engine/m;->m:F

    div-float/2addr v3, v4

    .line 397
    iget v4, p0, Lcom/creativemobi/engine/m;->L:F

    cmpl-float v4, v3, v4

    if-lez v4, :cond_1

    .line 398
    iput v3, p0, Lcom/creativemobi/engine/m;->L:F

    .line 395
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    :cond_2
    iget v0, p0, Lcom/creativemobi/engine/m;->L:F

    goto :goto_0
.end method

.method public final e(F)V
    .locals 0

    .prologue
    .line 1082
    iput p1, p0, Lcom/creativemobi/engine/m;->k:F

    .line 1083
    return-void
.end method

.method public final f()F
    .locals 4

    .prologue
    .line 420
    iget v0, p0, Lcom/creativemobi/engine/m;->r:I

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    iget-object v2, p0, Lcom/creativemobi/engine/m;->D:[F

    const/4 v3, 0x3

    aget v2, v2, v3

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method public final g()I
    .locals 3

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/creativemobi/engine/m;->V()I

    move-result v0

    .line 476
    iget v1, p0, Lcom/creativemobi/engine/m;->n:F

    int-to-float v2, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 477
    const/16 v2, 0x3e8

    float-to-int v1, v1

    sub-int v1, v2, v1

    .line 478
    if-gez v1, :cond_1

    .line 479
    int-to-float v0, v0

    iget v1, p0, Lcom/creativemobi/engine/m;->n:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, -0x1

    .line 482
    :goto_0
    return v0

    .line 480
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 481
    :cond_1
    const/16 v0, 0x2bc

    if-le v1, v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    .line 482
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 695
    iget-boolean v0, p0, Lcom/creativemobi/engine/m;->ae:Z

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 699
    iget-boolean v0, p0, Lcom/creativemobi/engine/m;->M:Z

    return v0
.end method

.method public final j()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 784
    iget v0, p0, Lcom/creativemobi/engine/m;->T:I

    iget-object v1, p0, Lcom/creativemobi/engine/m;->t:[F

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 788
    iget v0, p0, Lcom/creativemobi/engine/m;->T:I

    iget-object v1, p0, Lcom/creativemobi/engine/m;->t:[F

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    .line 789
    iget-object v0, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v1, p0, Lcom/creativemobi/engine/m;->T:I

    aget v0, v0, v1

    .line 790
    iget v1, p0, Lcom/creativemobi/engine/m;->T:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/creativemobi/engine/m;->T:I

    .line 791
    iget-object v1, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v2, p0, Lcom/creativemobi/engine/m;->T:I

    aget v1, v1, v2

    .line 792
    iget v2, p0, Lcom/creativemobi/engine/m;->n:F

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    invoke-virtual {p0, v0, v3}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 794
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 797
    iget v0, p0, Lcom/creativemobi/engine/m;->T:I

    if-lez v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v1, p0, Lcom/creativemobi/engine/m;->T:I

    aget v0, v0, v1

    .line 799
    iget v1, p0, Lcom/creativemobi/engine/m;->T:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/creativemobi/engine/m;->T:I

    .line 800
    iget-object v1, p0, Lcom/creativemobi/engine/m;->t:[F

    iget v2, p0, Lcom/creativemobi/engine/m;->T:I

    aget v1, v1, v2

    .line 801
    iget v2, p0, Lcom/creativemobi/engine/m;->n:F

    mul-float/2addr v1, v2

    div-float v0, v1, v0

    invoke-virtual {p0, v0, v3}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 802
    iget v0, p0, Lcom/creativemobi/engine/m;->n:F

    iget v1, p0, Lcom/creativemobi/engine/m;->o:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iget v0, p0, Lcom/creativemobi/engine/m;->o:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    invoke-virtual {p0, v0, v3}, Lcom/creativemobi/engine/m;->a(FZ)V

    .line 804
    :cond_0
    return-void
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 807
    iget v0, p0, Lcom/creativemobi/engine/m;->F:F

    float-to-int v0, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/creativemobi/engine/m;->F:F

    .line 808
    return-void
.end method

.method public final n()I
    .locals 2

    .prologue
    .line 811
    iget v0, p0, Lcom/creativemobi/engine/m;->F:F

    const v1, 0x3dcccccd    # 0.1f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final o()F
    .locals 1

    .prologue
    .line 824
    iget v0, p0, Lcom/creativemobi/engine/m;->I:F

    return v0
.end method

.method public final p()F
    .locals 1

    .prologue
    .line 832
    iget v0, p0, Lcom/creativemobi/engine/m;->H:F

    return v0
.end method

.method public final q()F
    .locals 3

    .prologue
    .line 840
    iget-object v0, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    iget-object v1, p0, Lcom/creativemobi/engine/m;->v:[Landroid/graphics/Point;

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    return v0
.end method

.method public final r()F
    .locals 2

    .prologue
    .line 844
    iget v0, p0, Lcom/creativemobi/engine/m;->G:F

    const/high16 v1, 0x45610000    # 3600.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44c80000    # 1600.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final s()F
    .locals 2

    .prologue
    .line 848
    iget v0, p0, Lcom/creativemobi/engine/m;->W:F

    const/high16 v1, 0x45610000    # 3600.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x44c80000    # 1600.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 856
    iget-object v0, p0, Lcom/creativemobi/engine/m;->ab:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 864
    iget-object v0, p0, Lcom/creativemobi/engine/m;->b:Landroid/graphics/Point;

    return-object v0
.end method

.method public final v()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Lcom/creativemobi/engine/m;->c:Landroid/graphics/Point;

    return-object v0
.end method

.method public final w()I
    .locals 2

    .prologue
    .line 893
    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->x()I

    move-result v0

    sget-object v1, Lcom/creativemobi/engine/m;->i:[I

    add-int/lit8 v0, v0, 0x1

    aget v0, v1, v0

    return v0
.end method

.method public final x()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 897
    invoke-virtual {p0}, Lcom/creativemobi/engine/m;->y()I

    move-result v0

    move v2, v1

    .line 899
    :goto_0
    sget-object v3, Lcom/creativemobi/engine/m;->i:[I

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 900
    sget-object v3, Lcom/creativemobi/engine/m;->i:[I

    aget v3, v3, v1

    if-le v0, v3, :cond_0

    .line 899
    add-int/lit8 v2, v1, 0x1

    move v4, v2

    move v2, v1

    move v1, v4

    goto :goto_0

    .line 903
    :cond_0
    return v2
.end method

.method public final y()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 919
    .line 921
    iget-object v0, p0, Lcom/creativemobi/engine/m;->a:[I

    array-length v1, v0

    move v2, v8

    move v3, v8

    move v4, v8

    :goto_0
    if-ge v2, v1, :cond_2

    aget v5, v0, v2

    move v6, v4

    move v4, v8

    .line 922
    :goto_1
    if-gt v4, v5, :cond_1

    .line 923
    iget-object v7, p0, Lcom/creativemobi/engine/m;->y:[I

    aget v7, v7, v3

    if-ge v7, v4, :cond_0

    int-to-float v6, v6

    iget v7, p0, Lcom/creativemobi/engine/m;->aa:I

    invoke-static {v7, v3, v4}, Lcom/creativemobi/engine/i;->b(III)F

    move-result v7

    add-float/2addr v6, v7

    float-to-int v6, v6

    .line 922
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 925
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 921
    add-int/lit8 v2, v2, 0x1

    move v4, v6

    goto :goto_0

    .line 927
    :cond_2
    iget v0, p0, Lcom/creativemobi/engine/m;->aa:I

    add-int/2addr v0, v4

    return v0
.end method

.method public final z()I
    .locals 1

    .prologue
    .line 931
    iget v0, p0, Lcom/creativemobi/engine/m;->aa:I

    return v0
.end method
