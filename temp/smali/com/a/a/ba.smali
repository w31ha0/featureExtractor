.class final Lcom/a/a/ba;
.super Lcom/a/a/bf;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/a/a/c/a/b;)V
    .locals 2

    .prologue
    .line 390
    const/4 v0, 0x2

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/a/a/bf;

    invoke-direct {p0, v0, v1}, Lcom/a/a/bf;-><init>(I[Lcom/a/a/bf;)V

    .line 391
    iget-object v0, p1, Lcom/a/a/c/a/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/ba;->a:Ljava/lang/String;

    .line 392
    iget-object v0, p1, Lcom/a/a/c/a/b;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/a/a/ba;->b:Ljava/lang/String;

    .line 393
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 397
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/ba;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/a/a/f;->b(ILcom/a/a/b;)I

    move-result v1

    .line 398
    const/4 v2, 0x2

    iget-object v0, p0, Lcom/a/a/ba;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/a/a/f;->b(ILcom/a/a/b;)I

    move-result v0

    add-int/2addr v0, v1

    .line 400
    return v0

    .line 398
    :cond_0
    iget-object v0, p0, Lcom/a/a/ba;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/a/a/f;)V
    .locals 2

    .prologue
    .line 405
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/a/a/ba;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->a(ILcom/a/a/b;)V

    .line 406
    const/4 v1, 0x2

    iget-object v0, p0, Lcom/a/a/ba;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/a/a/f;->a(ILcom/a/a/b;)V

    .line 407
    return-void

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/a/a/ba;->b:Ljava/lang/String;

    goto :goto_0
.end method
