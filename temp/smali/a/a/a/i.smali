.class final La/a/a/i;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/StringBuffer;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, La/a/a/i;->b:Ljava/lang/StringBuffer;

    iput p1, p0, La/a/a/i;->a:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x4c

    invoke-static {p2}, La/a/a/y;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/a/a/i;->b:Ljava/lang/StringBuffer;

    const-string v2, "; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, La/a/a/i;->a:I

    add-int/lit8 v1, v1, 0x2

    iput v1, p0, La/a/a/i;->a:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, La/a/a/i;->a:I

    add-int/2addr v1, v2

    if-le v1, v3, :cond_0

    iget-object v1, p0, La/a/a/i;->b:Ljava/lang/StringBuffer;

    const-string v2, "\r\n\t"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x8

    iput v1, p0, La/a/a/i;->a:I

    :cond_0
    iget-object v1, p0, La/a/a/i;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, La/a/a/i;->a:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, La/a/a/i;->a:I

    iget v1, p0, La/a/a/i;->a:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    if-le v1, v3, :cond_2

    iget v1, p0, La/a/a/i;->a:I

    invoke-static {v1, v0}, La/a/a/r;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/a/a/i;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-ltz v1, :cond_1

    iget v2, p0, La/a/a/i;->a:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/2addr v0, v2

    iput v0, p0, La/a/a/i;->a:I

    :goto_0
    return-void

    :cond_1
    iget v1, p0, La/a/a/i;->a:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, La/a/a/i;->a:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, La/a/a/i;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, La/a/a/i;->a:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    iput v0, p0, La/a/a/i;->a:I

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/i;->b:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
