.class final Lcom/a/a/bi;
.super Lcom/a/a/bf;
.source "SourceFile"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/e;Lcom/a/a/bg;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 247
    new-array v0, v2, [Lcom/a/a/bf;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/a/a/bf;-><init>(I[Lcom/a/a/bf;)V

    .line 248
    iget v0, p1, Lcom/a/a/c/a/e;->a:I

    iput v0, p0, Lcom/a/a/bi;->a:I

    .line 249
    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    .prologue
    .line 253
    const/4 v0, 0x2

    iget v1, p0, Lcom/a/a/bi;->a:I

    invoke-static {v0, v1}, Lcom/a/a/f;->f(II)I

    move-result v0

    return v0
.end method

.method public a(Lcom/a/a/f;)V
    .locals 2

    .prologue
    .line 258
    const/4 v0, 0x2

    iget v1, p0, Lcom/a/a/bi;->a:I

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->b(II)V

    .line 259
    return-void
.end method
