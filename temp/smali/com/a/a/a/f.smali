.class public final Lcom/a/a/a/f;
.super Lcom/a/a/a/e;


# static fields
.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "=_?\"#$%&\'(),.:;<>@[\\]^`{|}~"

    sput-object v0, Lcom/a/a/a/f;->b:Ljava/lang/String;

    const-string v0, "=_?"

    sput-object v0, Lcom/a/a/a/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/a/a/a/e;-><init>(Ljava/io/OutputStream;)V

    if-eqz p2, :cond_0

    sget-object v0, Lcom/a/a/a/f;->b:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/a/a/a/f;->a:Ljava/lang/String;

    return-void

    :cond_0
    sget-object v0, Lcom/a/a/a/f;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static a([BZ)I
    .locals 5

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    sget-object v0, Lcom/a/a/a/f;->b:Ljava/lang/String;

    :goto_0
    move v2, v1

    :goto_1
    array-length v3, p0

    if-lt v1, v3, :cond_1

    return v2

    :cond_0
    sget-object v0, Lcom/a/a/a/f;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    aget-byte v3, p0, v1

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_2

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_3

    :cond_2
    add-int/lit8 v2, v2, 0x3

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public final write(I)V
    .locals 3

    const/16 v1, 0x20

    const/4 v2, 0x0

    and-int/lit16 v0, p1, 0xff

    if-ne v0, v1, :cond_0

    const/16 v0, 0x5f

    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/f;->a(IZ)V

    :goto_0
    return-void

    :cond_0
    if-lt v0, v1, :cond_1

    const/16 v1, 0x7f

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/a/a/a/f;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/a/a/a/f;->a(IZ)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0, v2}, Lcom/a/a/a/f;->a(IZ)V

    goto :goto_0
.end method
