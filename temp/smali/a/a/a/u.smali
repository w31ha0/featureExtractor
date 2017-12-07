.class final La/a/a/u;
.super Ljava/io/OutputStream;


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput v0, p0, La/a/a/u;->b:I

    iput v0, p0, La/a/a/u;->c:I

    iput v0, p0, La/a/a/u;->d:I

    iput-boolean v0, p0, La/a/a/u;->e:Z

    iput-boolean v0, p0, La/a/a/u;->f:Z

    iput-boolean v0, p0, La/a/a/u;->g:Z

    iput v0, p0, La/a/a/u;->h:I

    iput v0, p0, La/a/a/u;->i:I

    iput-boolean p1, p0, La/a/a/u;->a:Z

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, La/a/a/u;->g:Z

    return-void
.end method

.method private final a(I)V
    .locals 5

    const/4 v4, 0x1

    const/16 v3, 0xd

    const/16 v2, 0xa

    and-int/lit16 v0, p1, 0xff

    iget-boolean v1, p0, La/a/a/u;->g:Z

    if-eqz v1, :cond_2

    iget v1, p0, La/a/a/u;->h:I

    if-ne v1, v3, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    iget v1, p0, La/a/a/u;->h:I

    if-eq v1, v3, :cond_2

    if-ne v0, v2, :cond_2

    :cond_1
    iput-boolean v4, p0, La/a/a/u;->f:Z

    :cond_2
    if-eq v0, v3, :cond_3

    if-ne v0, v2, :cond_5

    :cond_3
    const/4 v1, 0x0

    iput v1, p0, La/a/a/u;->d:I

    :cond_4
    :goto_0
    invoke-static {v0}, La/a/a/r;->a(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, p0, La/a/a/u;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/u;->c:I

    iget-boolean v1, p0, La/a/a/u;->a:Z

    if-eqz v1, :cond_7

    const/4 v0, 0x3

    iput v0, p0, La/a/a/u;->i:I

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_5
    iget v1, p0, La/a/a/u;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/u;->d:I

    iget v1, p0, La/a/a/u;->d:I

    const/16 v2, 0x3e6

    if-le v1, v2, :cond_4

    iput-boolean v4, p0, La/a/a/u;->e:Z

    goto :goto_0

    :cond_6
    iget v1, p0, La/a/a/u;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, La/a/a/u;->b:I

    :cond_7
    iput v0, p0, La/a/a/u;->h:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x2

    iget v0, p0, La/a/a/u;->i:I

    if-eqz v0, :cond_0

    iget v0, p0, La/a/a/u;->i:I

    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, La/a/a/u;->f:Z

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget v0, p0, La/a/a/u;->c:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, La/a/a/u;->e:Z

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    iget v0, p0, La/a/a/u;->b:I

    iget v1, p0, La/a/a/u;->c:I

    if-le v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v3

    goto :goto_0
.end method

.method public final write(I)V
    .locals 0

    invoke-direct {p0, p1}, La/a/a/u;->a(I)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, La/a/a/u;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 3

    add-int v0, p3, p2

    move v1, p2

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    aget-byte v2, p1, v1

    invoke-direct {p0, v2}, La/a/a/u;->a(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
