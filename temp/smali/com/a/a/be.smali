.class final Lcom/a/a/be;
.super Lcom/a/a/bf;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:I


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/f;)V
    .locals 2

    .prologue
    .line 276
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/a/a/bf;

    invoke-direct {p0, v0, v1}, Lcom/a/a/bf;-><init>(I[Lcom/a/a/bf;)V

    .line 277
    iget-wide v0, p1, Lcom/a/a/c/a/f;->a:J

    iput-wide v0, p0, Lcom/a/a/be;->a:J

    .line 278
    iget-object v0, p1, Lcom/a/a/c/a/f;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/be;->b:Ljava/lang/String;

    .line 279
    iget-object v0, p1, Lcom/a/a/c/a/f;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/be;->c:Ljava/lang/String;

    .line 280
    iget-wide v0, p1, Lcom/a/a/c/a/f;->d:J

    iput-wide v0, p0, Lcom/a/a/be;->d:J

    .line 281
    iget v0, p1, Lcom/a/a/c/a/f;->e:I

    iput v0, p0, Lcom/a/a/be;->e:I

    .line 282
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 286
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/a/a/be;->a:J

    invoke-static {v0, v1, v2}, Lcom/a/a/f;->b(IJ)I

    move-result v0

    .line 287
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/a/a/be;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/f;->b(ILcom/a/a/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 288
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/a/a/be;->c:Ljava/lang/String;

    invoke-static {v2}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/f;->b(ILcom/a/a/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 289
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/a/a/be;->d:J

    invoke-static {v1, v2, v3}, Lcom/a/a/f;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    const/4 v1, 0x5

    iget v2, p0, Lcom/a/a/be;->e:I

    invoke-static {v1, v2}, Lcom/a/a/f;->f(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 291
    return v0
.end method

.method public a(Lcom/a/a/f;)V
    .locals 3

    .prologue
    .line 296
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/a/a/be;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/f;->a(IJ)V

    .line 297
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/a/a/be;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->a(ILcom/a/a/b;)V

    .line 298
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/a/a/be;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->a(ILcom/a/a/b;)V

    .line 299
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/a/a/be;->d:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/f;->a(IJ)V

    .line 300
    const/4 v0, 0x5

    iget v1, p0, Lcom/a/a/be;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->b(II)V

    .line 301
    return-void
.end method
