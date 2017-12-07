.class public final La/a/b/a;
.super Ljava/io/ByteArrayInputStream;

# interfaces
.implements La/a/a/c;


# instance fields
.field private a:I


# direct methods
.method public constructor <init>([B)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/4 v0, 0x0

    iput v0, p0, La/a/b/a;->a:I

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    const/4 v0, 0x0

    iput v0, p0, La/a/b/a;->a:I

    iput p2, p0, La/a/b/a;->a:I

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget v0, p0, La/a/b/a;->pos:I

    iget v1, p0, La/a/b/a;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public final a(JJ)Ljava/io/InputStream;
    .locals 6

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start < 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    iget v0, p0, La/a/b/a;->count:I

    iget v1, p0, La/a/b/a;->a:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    :goto_0
    new-instance v2, La/a/b/a;

    iget-object v3, p0, La/a/b/a;->buf:[B

    iget v4, p0, La/a/b/a;->a:I

    long-to-int v5, p1

    add-int/2addr v4, v5

    sub-long/2addr v0, p1

    long-to-int v0, v0

    invoke-direct {v2, v3, v4, v0}, La/a/b/a;-><init>([BII)V

    return-object v2

    :cond_1
    move-wide v0, p3

    goto :goto_0
.end method
