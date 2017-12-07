.class public final La/a/a/s;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:La/a/a/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/aa;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, La/a/a/aa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/a/aa;->a()La/a/a/w;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/w;->a()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v0, La/a/a/d;

    invoke-direct {v0}, La/a/a/d;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v1}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/a/a/s;->a:Ljava/lang/String;

    invoke-virtual {v0}, La/a/a/aa;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, La/a/a/y;

    invoke-direct {v1, v0}, La/a/a/y;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, La/a/a/s;->b:La/a/a/y;

    :cond_1
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/s;->b:La/a/a/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/s;->b:La/a/a/y;

    invoke-virtual {v0, p1}, La/a/a/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La/a/a/s;->b:La/a/a/y;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/y;

    invoke-direct {v0}, La/a/a/y;-><init>()V

    iput-object v0, p0, La/a/a/s;->b:La/a/a/y;

    :cond_0
    iget-object v0, p0, La/a/a/s;->b:La/a/a/y;

    invoke-virtual {v0, p1, p2}, La/a/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, La/a/a/s;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/s;->b:La/a/a/y;

    if-nez v0, :cond_1

    iget-object v0, p0, La/a/a/s;->a:Ljava/lang/String;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v1, p0, La/a/a/s;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/s;->b:La/a/a/y;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x15

    invoke-virtual {v1, v2}, La/a/a/y;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
