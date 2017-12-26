.class La/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements La/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La/j",
        "<TTResult;",
        "La/k",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# virtual methods
.method public a(La/k;)La/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/k",
            "<TTResult;>;)",
            "La/k",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 168
    invoke-virtual {p1}, La/k;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, La/k;->g()La/k;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    .line 171
    :cond_0
    invoke-virtual {p1}, La/k;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    invoke-virtual {p1}, La/k;->f()Ljava/lang/Exception;

    move-result-object v0

    invoke-static {v0}, La/k;->a(Ljava/lang/Exception;)La/k;

    move-result-object v0

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, La/k;->a(Ljava/lang/Object;)La/k;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic then(La/k;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 165
    invoke-virtual {p0, p1}, La/l;->a(La/k;)La/k;

    move-result-object v0

    return-object v0
.end method
