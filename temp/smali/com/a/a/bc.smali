.class final Lcom/a/a/bc;
.super Lcom/a/a/bf;
.source "SourceFile"


# instance fields
.field private final a:J

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Lcom/a/a/ay;Lcom/a/a/bb;)V
    .locals 3

    .prologue
    .line 155
    const/16 v0, 0xa

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/a/a/bf;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p5, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/a/a/bf;-><init>(I[Lcom/a/a/bf;)V

    .line 156
    iput-wide p1, p0, Lcom/a/a/bc;->a:J

    .line 157
    iput-object p3, p0, Lcom/a/a/bc;->b:Ljava/lang/String;

    .line 158
    return-void
.end method


# virtual methods
.method public a()I
    .locals 3

    .prologue
    .line 162
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/a/a/bc;->a:J

    invoke-static {v0, v1, v2}, Lcom/a/a/f;->b(IJ)I

    move-result v0

    .line 163
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/a/a/bc;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/a/a/f;->b(ILcom/a/a/b;)I

    move-result v1

    .line 165
    add-int/2addr v0, v1

    return v0
.end method

.method public a(Lcom/a/a/f;)V
    .locals 3

    .prologue
    .line 170
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/a/a/bc;->a:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/a/a/f;->a(IJ)V

    .line 171
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/a/a/bc;->b:Ljava/lang/String;

    invoke-static {v1}, Lcom/a/a/b;->a(Ljava/lang/String;)Lcom/a/a/b;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/a/a/f;->a(ILcom/a/a/b;)V

    .line 172
    return-void
.end method
