.class final Lcom/a/a/bd;
.super Lcom/a/a/bf;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/a/a/bh;Lcom/a/a/bg;Lcom/a/a/bg;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 233
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/a/a/bf;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    aput-object p1, v0, v2

    const/4 v1, 0x2

    aput-object p3, v0, v1

    invoke-direct {p0, v2, v0}, Lcom/a/a/bf;-><init>(I[Lcom/a/a/bf;)V

    .line 234
    return-void
.end method
