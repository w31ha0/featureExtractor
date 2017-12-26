.class abstract Lcom/a/a/bf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:I

.field private final b:[Lcom/a/a/bf;


# direct methods
.method public varargs constructor <init>(I[Lcom/a/a/bf;)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput p1, p0, Lcom/a/a/bf;->a:I

    .line 47
    if-eqz p2, :cond_0

    :goto_0
    iput-object p2, p0, Lcom/a/a/bf;->b:[Lcom/a/a/bf;

    .line 48
    return-void

    .line 47
    :cond_0
    invoke-static {}, Lcom/a/a/ax;->a()[Lcom/a/a/bf;

    move-result-object p2

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/a/a/f;)V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method public b()I
    .locals 2

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/a/a/bf;->c()I

    move-result v0

    .line 57
    invoke-static {v0}, Lcom/a/a/f;->l(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 58
    iget v1, p0, Lcom/a/a/bf;->a:I

    invoke-static {v1}, Lcom/a/a/f;->j(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 59
    return v0
.end method

.method public b(Lcom/a/a/f;)V
    .locals 4

    .prologue
    .line 82
    iget v0, p0, Lcom/a/a/bf;->a:I

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->i(II)V

    .line 83
    invoke-virtual {p0}, Lcom/a/a/bf;->c()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/a/a/f;->k(I)V

    .line 84
    invoke-virtual {p0, p1}, Lcom/a/a/bf;->a(Lcom/a/a/f;)V

    .line 85
    iget-object v1, p0, Lcom/a/a/bf;->b:[Lcom/a/a/bf;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 86
    invoke-virtual {v3, p1}, Lcom/a/a/bf;->b(Lcom/a/a/f;)V

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 88
    :cond_0
    return-void
.end method

.method public c()I
    .locals 5

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/a/a/bf;->a()I

    move-result v1

    .line 69
    iget-object v2, p0, Lcom/a/a/bf;->b:[Lcom/a/a/bf;

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 70
    invoke-virtual {v4}, Lcom/a/a/bf;->b()I

    move-result v4

    add-int/2addr v1, v4

    .line 69
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return v1
.end method
