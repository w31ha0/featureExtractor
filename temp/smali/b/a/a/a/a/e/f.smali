.class Lb/a/a/a/a/e/f;
.super Lb/a/a/a/a/e/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/a/a/a/a/e/g",
        "<",
        "Lb/a/a/a/a/e/e;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/io/InputStream;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Lb/a/a/a/a/e/e;


# direct methods
.method constructor <init>(Lb/a/a/a/a/e/e;Ljava/io/Closeable;ZLjava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 2402
    iput-object p1, p0, Lb/a/a/a/a/e/f;->c:Lb/a/a/a/a/e/e;

    iput-object p4, p0, Lb/a/a/a/a/e/f;->a:Ljava/io/InputStream;

    iput-object p5, p0, Lb/a/a/a/a/e/f;->b:Ljava/io/OutputStream;

    invoke-direct {p0, p2, p3}, Lb/a/a/a/a/e/g;-><init>(Ljava/io/Closeable;Z)V

    return-void
.end method


# virtual methods
.method public a()Lb/a/a/a/a/e/e;
    .locals 4

    .prologue
    .line 2406
    iget-object v0, p0, Lb/a/a/a/a/e/f;->c:Lb/a/a/a/a/e/e;

    invoke-static {v0}, Lb/a/a/a/a/e/e;->a(Lb/a/a/a/a/e/e;)I

    move-result v0

    new-array v0, v0, [B

    .line 2408
    :goto_0
    iget-object v1, p0, Lb/a/a/a/a/e/f;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 2409
    iget-object v2, p0, Lb/a/a/a/a/e/f;->b:Ljava/io/OutputStream;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 2410
    :cond_0
    iget-object v0, p0, Lb/a/a/a/a/e/f;->c:Lb/a/a/a/a/e/e;

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2402
    invoke-virtual {p0}, Lb/a/a/a/a/e/f;->a()Lb/a/a/a/a/e/e;

    move-result-object v0

    return-object v0
.end method
