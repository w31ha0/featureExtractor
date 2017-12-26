.class final Lcom/a/a/bg;
.super Lcom/a/a/bf;
.source "SourceFile"


# instance fields
.field private final a:[Lcom/a/a/bf;


# direct methods
.method public varargs constructor <init>([Lcom/a/a/bf;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 122
    new-array v0, v1, [Lcom/a/a/bf;

    invoke-direct {p0, v1, v0}, Lcom/a/a/bf;-><init>(I[Lcom/a/a/bf;)V

    .line 123
    iput-object p1, p0, Lcom/a/a/bg;->a:[Lcom/a/a/bf;

    .line 124
    return-void
.end method


# virtual methods
.method public b()I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 135
    .line 136
    iget-object v2, p0, Lcom/a/a/bg;->a:[Lcom/a/a/bf;

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 137
    invoke-virtual {v4}, Lcom/a/a/bf;->b()I

    move-result v4

    add-int/2addr v1, v4

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 139
    :cond_0
    return v1
.end method

.method public b(Lcom/a/a/f;)V
    .locals 4

    .prologue
    .line 128
    iget-object v1, p0, Lcom/a/a/bg;->a:[Lcom/a/a/bf;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 129
    invoke-virtual {v3, p1}, Lcom/a/a/bf;->b(Lcom/a/a/f;)V

    .line 128
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method
