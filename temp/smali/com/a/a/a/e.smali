.class public Lcom/a/a/a/e;
.super Ljava/io/FilterOutputStream;


# static fields
.field private static final e:[C


# instance fields
.field private a:I

.field private b:I

.field private c:Z

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/a/a/a/e;->e:[C

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput v0, p0, Lcom/a/a/a/e;->a:I

    iput-boolean v0, p0, Lcom/a/a/a/e;->c:Z

    iput-boolean v0, p0, Lcom/a/a/a/e;->d:Z

    const v0, 0x7ffffffe

    iput v0, p0, Lcom/a/a/a/e;->b:I

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/a/e;->a:I

    return-void
.end method


# virtual methods
.method protected final a(IZ)V
    .locals 5

    const/16 v4, 0xd

    const/16 v3, 0xa

    const/16 v2, 0x3d

    if-eqz p2, :cond_1

    iget v0, p0, Lcom/a/a/a/e;->a:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/a/a/a/e;->a:I

    iget v1, p0, Lcom/a/a/a/e;->b:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/a/a/a/e;->a:I

    :cond_0
    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/a/a/a/e;->e:[C

    shr-int/lit8 v2, p1, 0x4

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    sget-object v1, Lcom/a/a/a/e;->e:[C

    and-int/lit8 v2, p1, 0xf

    aget-char v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/a/a/a/e;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/a/a/a/e;->a:I

    iget v1, p0, Lcom/a/a/a/e;->b:I

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v2}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v4}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, v3}, Ljava/io/OutputStream;->write(I)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/a/a/a/e;->a:I

    :cond_2
    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-object v0, p0, Lcom/a/a/a/e;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 7

    const/16 v6, 0xd

    const/16 v5, 0xa

    const/16 v4, 0x20

    const/4 v3, 0x1

    const/4 v2, 0x0

    and-int/lit16 v0, p1, 0xff

    iget-boolean v1, p0, Lcom/a/a/a/e;->c:Z

    if-eqz v1, :cond_1

    if-eq v0, v6, :cond_0

    if-ne v0, v5, :cond_2

    :cond_0
    invoke-virtual {p0, v4, v3}, Lcom/a/a/a/e;->a(IZ)V

    :goto_0
    iput-boolean v2, p0, Lcom/a/a/a/e;->c:Z

    :cond_1
    if-ne v0, v6, :cond_3

    iput-boolean v3, p0, Lcom/a/a/a/e;->d:Z

    invoke-direct {p0}, Lcom/a/a/a/e;->a()V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0, v4, v2}, Lcom/a/a/a/e;->a(IZ)V

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_5

    iget-boolean v0, p0, Lcom/a/a/a/e;->d:Z

    if-nez v0, :cond_4

    invoke-direct {p0}, Lcom/a/a/a/e;->a()V

    :cond_4
    :goto_2
    iput-boolean v2, p0, Lcom/a/a/a/e;->d:Z

    goto :goto_1

    :cond_5
    if-ne v0, v4, :cond_6

    iput-boolean v3, p0, Lcom/a/a/a/e;->c:Z

    goto :goto_2

    :cond_6
    if-lt v0, v4, :cond_7

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_7

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_8

    :cond_7
    invoke-virtual {p0, v0, v3}, Lcom/a/a/a/e;->a(IZ)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/e;->a(IZ)V

    goto :goto_2
.end method

.method public write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/a/a/e;->write([BII)V

    return-void
.end method

.method public write([BII)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    return-void

    :cond_0
    add-int v1, p2, v0

    aget-byte v1, p1, v1

    invoke-virtual {p0, v1}, Lcom/a/a/a/e;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
