.class final Lcom/a/a/bh;
.super Lcom/a/a/bf;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/d;)V
    .locals 2

    .prologue
    .line 316
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/a/a/bf;

    invoke-direct {p0, v0, v1}, Lcom/a/a/bf;-><init>(I[Lcom/a/a/bf;)V

    .line 317
    iget-object v0, p1, Lcom/a/a/c/a/d;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/bh;->a:Ljava/lang/String;

    .line 318
    iget-object v0, p1, Lcom/a/a/c/a/d;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/bh;->b:Ljava/lang/String;

    .line 319
    iget-wide v0, p1, Lcom/a/a/c/a/d;->c:J

    iput-wide v0, p0, Lcom/a/a/bh;->c:J

    .line 320
    return-void
.end method


# virtual methods
.method public a()I
    .locals 4

    .prologue
    .line 324
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/bh;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/f;->b(ILcom/a/a/b;)I

    move-result v0

    .line 325
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/a/a/bh;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/f;->b(ILcom/a/a/b;)I

    move-result v1

    add-int/2addr v0, v1

    .line 326
    const/4 v1, 0x3

    iget-wide v2, p0, Lcom/a/a/bh;->c:J

    invoke-static {v1, v2, v3}, Lcom/a/a/f;->b(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    return v0
.end method

.method public a(Lcom/a/a/f;)V
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/bh;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->a(ILcom/a/a/b;)V

    .line 333
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/a/a/bh;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->a(ILcom/a/a/b;)V

    .line 334
    const/4 v0, 0x3

    iget-wide v1, p0, Lcom/a/a/bh;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/f;->a(IJ)V

    .line 335
    return-void
.end method
