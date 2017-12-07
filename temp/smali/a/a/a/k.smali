.class public final La/a/a/k;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:La/a/a/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La/a/a/aa;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p1, v1}, La/a/a/aa;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, La/a/a/aa;->a()La/a/a/w;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/w;->a()I

    move-result v2

    if-eq v2, v3, :cond_0

    new-instance v0, La/a/a/d;

    invoke-direct {v0}, La/a/a/d;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v1}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0}, La/a/a/aa;->a()La/a/a/w;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/w;->a()I

    move-result v1

    int-to-char v1, v1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_1

    new-instance v0, La/a/a/d;

    invoke-direct {v0}, La/a/a/d;-><init>()V

    throw v0

    :cond_1
    invoke-virtual {v0}, La/a/a/aa;->a()La/a/a/w;

    move-result-object v1

    invoke-virtual {v1}, La/a/a/w;->a()I

    move-result v2

    if-eq v2, v3, :cond_2

    new-instance v0, La/a/a/d;

    invoke-direct {v0}, La/a/a/d;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {v1}, La/a/a/w;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/a/a/k;->b:Ljava/lang/String;

    invoke-virtual {v0}, La/a/a/aa;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, La/a/a/y;

    invoke-direct {v1, v0}, La/a/a/y;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, La/a/a/k;->c:La/a/a/y;

    :cond_3
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/a/a/k;->a:Ljava/lang/String;

    iput-object p2, p0, La/a/a/k;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, La/a/a/k;->c:La/a/a/y;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/a/a/k;->c:La/a/a/y;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/a/a/k;->c:La/a/a/y;

    invoke-virtual {v0, p1}, La/a/a/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La/a/a/k;->c:La/a/a/y;

    if-nez v0, :cond_0

    new-instance v0, La/a/a/y;

    invoke-direct {v0}, La/a/a/y;-><init>()V

    iput-object v0, p0, La/a/a/k;->c:La/a/a/y;

    :cond_0
    iget-object v0, p0, La/a/a/k;->c:La/a/a/y;

    invoke-virtual {v0, p1, p2}, La/a/a/y;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)Z
    .locals 6

    const/16 v5, 0x2a

    const/4 v4, 0x1

    const/4 v3, 0x0

    :try_start_0
    new-instance v0, La/a/a/k;

    invoke-direct {v0, p1}, La/a/a/k;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, La/a/a/k;->a:Ljava/lang/String;

    iget-object v2, v0, La/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-object v0, v0, La/a/a/k;->b:Ljava/lang/String;

    iget-object v1, p0, La/a/a/k;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v5, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_2

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    iget-object v1, p0, La/a/a/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch La/a/a/d; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-nez v0, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v3

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, La/a/a/k;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/a/a/k;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, La/a/a/k;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, La/a/a/k;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, La/a/a/k;->c:La/a/a/y;

    if-eqz v1, :cond_2

    iget-object v1, p0, La/a/a/k;->c:La/a/a/y;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    invoke-virtual {v1, v2}, La/a/a/y;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
