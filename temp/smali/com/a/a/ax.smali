.class Lcom/a/a/ax;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lcom/a/a/c/a/d;

.field private static final b:[Lcom/a/a/bf;

.field private static final c:[Lcom/a/a/bi;

.field private static final d:[Lcom/a/a/be;

.field private static final e:[Lcom/a/a/az;

.field private static final f:[Lcom/a/a/ba;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 22
    new-instance v0, Lcom/a/a/c/a/d;

    const-string v1, ""

    const-string v2, ""

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/a/a/c/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    sput-object v0, Lcom/a/a/ax;->a:Lcom/a/a/c/a/d;

    .line 24
    new-array v0, v5, [Lcom/a/a/bf;

    sput-object v0, Lcom/a/a/ax;->b:[Lcom/a/a/bf;

    .line 25
    new-array v0, v5, [Lcom/a/a/bi;

    sput-object v0, Lcom/a/a/ax;->c:[Lcom/a/a/bi;

    .line 26
    new-array v0, v5, [Lcom/a/a/be;

    sput-object v0, Lcom/a/a/ax;->d:[Lcom/a/a/be;

    .line 27
    new-array v0, v5, [Lcom/a/a/az;

    sput-object v0, Lcom/a/a/ax;->e:[Lcom/a/a/az;

    .line 29
    new-array v0, v5, [Lcom/a/a/ba;

    sput-object v0, Lcom/a/a/ax;->f:[Lcom/a/a/ba;

    return-void
.end method

.method private static a(Lcom/a/a/c/a/c;)Lcom/a/a/bc;
    .locals 6

    .prologue
    .line 418
    iget-object v0, p0, Lcom/a/a/c/a/c;->b:Lcom/a/a/c/a/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/a/a/c/a/c;->b:Lcom/a/a/c/a/d;

    .line 420
    :goto_0
    new-instance v1, Lcom/a/a/bh;

    invoke-direct {v1, v0}, Lcom/a/a/bh;-><init>(Lcom/a/a/c/a/d;)V

    .line 422
    iget-object v0, p0, Lcom/a/a/c/a/c;->c:[Lcom/a/a/c/a/e;

    invoke-static {v0}, Lcom/a/a/ax;->a([Lcom/a/a/c/a/e;)Lcom/a/a/bg;

    move-result-object v0

    .line 423
    iget-object v2, p0, Lcom/a/a/c/a/c;->d:[Lcom/a/a/c/a/a;

    invoke-static {v2}, Lcom/a/a/ax;->a([Lcom/a/a/c/a/a;)Lcom/a/a/bg;

    move-result-object v2

    .line 426
    new-instance v3, Lcom/a/a/bd;

    invoke-direct {v3, v1, v0, v2}, Lcom/a/a/bd;-><init>(Lcom/a/a/bh;Lcom/a/a/bg;Lcom/a/a/bg;)V

    .line 428
    iget-object v0, p0, Lcom/a/a/c/a/c;->e:[Lcom/a/a/c/a/b;

    invoke-static {v0}, Lcom/a/a/ax;->a([Lcom/a/a/c/a/b;)Lcom/a/a/bg;

    move-result-object v0

    .line 431
    new-instance v4, Lcom/a/a/ay;

    invoke-direct {v4, v3, v0}, Lcom/a/a/ay;-><init>(Lcom/a/a/bd;Lcom/a/a/bg;)V

    .line 433
    new-instance v5, Lcom/a/a/bb;

    invoke-direct {v5}, Lcom/a/a/bb;-><init>()V

    .line 435
    new-instance v0, Lcom/a/a/bc;

    iget-wide v1, p0, Lcom/a/a/c/a/c;->a:J

    const-string v3, "ndk-crash"

    invoke-direct/range {v0 .. v5}, Lcom/a/a/bc;-><init>(JLjava/lang/String;Lcom/a/a/ay;Lcom/a/a/bb;)V

    return-object v0

    .line 418
    :cond_0
    sget-object v0, Lcom/a/a/ax;->a:Lcom/a/a/c/a/d;

    goto :goto_0
.end method

.method private static a([Lcom/a/a/c/a/a;)Lcom/a/a/bg;
    .locals 4

    .prologue
    .line 460
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/a/a/az;

    .line 462
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 463
    new-instance v2, Lcom/a/a/az;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/a/a/az;-><init>(Lcom/a/a/c/a/a;)V

    aput-object v2, v0, v1

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 460
    :cond_0
    sget-object v0, Lcom/a/a/ax;->e:[Lcom/a/a/az;

    goto :goto_0

    .line 465
    :cond_1
    new-instance v1, Lcom/a/a/bg;

    invoke-direct {v1, v0}, Lcom/a/a/bg;-><init>([Lcom/a/a/bf;)V

    return-object v1
.end method

.method private static a([Lcom/a/a/c/a/b;)Lcom/a/a/bg;
    .locals 4

    .prologue
    .line 470
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/a/a/ba;

    .line 473
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 474
    new-instance v2, Lcom/a/a/ba;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/a/a/ba;-><init>(Lcom/a/a/c/a/b;)V

    aput-object v2, v0, v1

    .line 473
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 470
    :cond_0
    sget-object v0, Lcom/a/a/ax;->f:[Lcom/a/a/ba;

    goto :goto_0

    .line 476
    :cond_1
    new-instance v1, Lcom/a/a/bg;

    invoke-direct {v1, v0}, Lcom/a/a/bg;-><init>([Lcom/a/a/bf;)V

    return-object v1
.end method

.method private static a([Lcom/a/a/c/a/e;)Lcom/a/a/bg;
    .locals 5

    .prologue
    .line 440
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/a/a/bi;

    .line 442
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 443
    aget-object v2, p0, v1

    .line 444
    new-instance v3, Lcom/a/a/bi;

    iget-object v4, v2, Lcom/a/a/c/a/e;->b:[Lcom/a/a/c/a/f;

    invoke-static {v4}, Lcom/a/a/ax;->a([Lcom/a/a/c/a/f;)Lcom/a/a/bg;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcom/a/a/bi;-><init>(Lcom/a/a/c/a/e;Lcom/a/a/bg;)V

    aput-object v3, v0, v1

    .line 442
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 440
    :cond_0
    sget-object v0, Lcom/a/a/ax;->c:[Lcom/a/a/bi;

    goto :goto_0

    .line 447
    :cond_1
    new-instance v1, Lcom/a/a/bg;

    invoke-direct {v1, v0}, Lcom/a/a/bg;-><init>([Lcom/a/a/bf;)V

    return-object v1
.end method

.method private static a([Lcom/a/a/c/a/f;)Lcom/a/a/bg;
    .locals 4

    .prologue
    .line 451
    if-eqz p0, :cond_0

    array-length v0, p0

    new-array v0, v0, [Lcom/a/a/be;

    .line 453
    :goto_0
    const/4 v1, 0x0

    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 454
    new-instance v2, Lcom/a/a/be;

    aget-object v3, p0, v1

    invoke-direct {v2, v3}, Lcom/a/a/be;-><init>(Lcom/a/a/c/a/f;)V

    aput-object v2, v0, v1

    .line 453
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 451
    :cond_0
    sget-object v0, Lcom/a/a/ax;->d:[Lcom/a/a/be;

    goto :goto_0

    .line 456
    :cond_1
    new-instance v1, Lcom/a/a/bg;

    invoke-direct {v1, v0}, Lcom/a/a/bg;-><init>([Lcom/a/a/bf;)V

    return-object v1
.end method

.method public static a(Lcom/a/a/c/a/c;Lcom/a/a/f;)V
    .locals 1

    .prologue
    .line 488
    invoke-static {p0}, Lcom/a/a/ax;->a(Lcom/a/a/c/a/c;)Lcom/a/a/bc;

    move-result-object v0

    .line 489
    invoke-virtual {v0, p1}, Lcom/a/a/bc;->b(Lcom/a/a/f;)V

    .line 490
    return-void
.end method

.method static synthetic a()[Lcom/a/a/bf;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/a/a/ax;->b:[Lcom/a/a/bf;

    return-object v0
.end method
