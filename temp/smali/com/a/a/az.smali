.class final Lcom/a/a/az;
.super Lcom/a/a/bf;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/a;)V
    .locals 2

    .prologue
    .line 351
    const/4 v0, 0x4

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/a/a/bf;

    invoke-direct {p0, v0, v1}, Lcom/a/a/bf;-><init>(I[Lcom/a/a/bf;)V

    .line 352
    iget-wide v0, p1, Lcom/a/a/c/a/a;->a:J

    iput-wide v0, p0, Lcom/a/a/az;->a:J

    .line 353
    iget-wide v0, p1, Lcom/a/a/c/a/a;->b:J

    iput-wide v0, p0, Lcom/a/a/az;->b:J

    .line 354
    iget-object v0, p1, Lcom/a/a/c/a/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/az;->c:Ljava/lang/String;

    .line 355
    iget-object v0, p1, Lcom/a/a/c/a/a;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/az;->d:Ljava/lang/String;

    .line 356
    return-void
.end method


# virtual methods
.method public a()I
    .locals 5

    .prologue
    .line 360
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/a/a/az;->a:J

    invoke-static {v0, v1, v2}, Lcom/a/a/f;->b(IJ)I

    move-result v0

    .line 361
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/a/a/az;->b:J

    invoke-static {v1, v2, v3}, Lcom/a/a/f;->b(IJ)I

    move-result v1

    .line 362
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/a/a/az;->c:Ljava/lang/String;

    invoke-static {v3}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/a/a/f;->b(ILcom/a/a/b;)I

    move-result v2

    .line 364
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/a/a/az;->d:Ljava/lang/String;

    invoke-static {v4}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/a/a/f;->b(ILcom/a/a/b;)I

    move-result v3

    .line 367
    add-int/2addr v0, v2

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    return v0
.end method

.method public a(Lcom/a/a/f;)V
    .locals 3

    .prologue
    .line 372
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/a/a/az;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/f;->a(IJ)V

    .line 373
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/a/a/az;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/f;->a(IJ)V

    .line 374
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/a/a/az;->c:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->a(ILcom/a/a/b;)V

    .line 375
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/a/a/az;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->a(ILcom/a/a/b;)V

    .line 376
    return-void
.end method
