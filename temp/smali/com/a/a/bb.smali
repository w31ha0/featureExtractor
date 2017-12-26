.class final Lcom/a/a/bb;
.super Lcom/a/a/bf;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x5

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/a/a/bf;

    invoke-direct {p0, v0, v1}, Lcom/a/a/bf;-><init>(I[Lcom/a/a/bf;)V

    .line 185
    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 189
    .line 190
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/a/a/f;->b(IF)I

    move-result v0

    add-int/2addr v0, v2

    .line 191
    const/4 v1, 0x2

    invoke-static {v1, v2}, Lcom/a/a/f;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 192
    const/4 v1, 0x3

    invoke-static {v1, v2}, Lcom/a/a/f;->b(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 193
    const/4 v1, 0x4

    invoke-static {v1, v2}, Lcom/a/a/f;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 194
    const/4 v1, 0x5

    invoke-static {v1, v3, v4}, Lcom/a/a/f;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    const/4 v1, 0x6

    invoke-static {v1, v3, v4}, Lcom/a/a/f;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 196
    return v0
.end method

.method public a(Lcom/a/a/f;)V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    .line 201
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->a(IF)V

    .line 202
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v2}, Lcom/a/a/f;->a(II)V

    .line 203
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v2}, Lcom/a/a/f;->a(IZ)V

    .line 204
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v2}, Lcom/a/a/f;->b(II)V

    .line 205
    const/4 v0, 0x5

    invoke-virtual {p1, v0, v3, v4}, Lcom/a/a/f;->a(IJ)V

    .line 206
    const/4 v0, 0x6

    invoke-virtual {p1, v0, v3, v4}, Lcom/a/a/f;->a(IJ)V

    .line 207
    return-void
.end method
