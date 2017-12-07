.class final La/b/a;
.super Ljava/lang/Object;

# interfaces
.implements La/b/c;


# instance fields
.field private a:[Lb/a/a/a;

.field private b:Ljava/lang/Object;

.field private c:Ljava/lang/String;

.field private d:La/b/c;


# direct methods
.method public constructor <init>(La/b/c;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/b/a;->a:[Lb/a/a/a;

    iput-object v0, p0, La/b/a;->d:La/b/c;

    iput-object p2, p0, La/b/a;->b:Ljava/lang/Object;

    iput-object p3, p0, La/b/a;->c:Ljava/lang/String;

    iput-object p1, p0, La/b/a;->d:La/b/c;

    return-void
.end method


# virtual methods
.method public final a()La/b/c;
    .locals 1

    iget-object v0, p0, La/b/a;->d:La/b/c;

    return-object v0
.end method

.method public final a(La/b/j;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/b/a;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3

    iget-object v0, p0, La/b/a;->d:La/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/a;->d:La/b/c;

    invoke-interface {v0, p1, p2, p3}, La/b/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    :goto_0
    return-void

    :cond_0
    instance-of v0, p1, [B

    if-eqz v0, :cond_1

    check-cast p1, [B

    invoke-virtual {p3, p1}, Ljava/io/OutputStream;->write([B)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/OutputStreamWriter;->flush()V

    goto :goto_0

    :cond_2
    new-instance v0, La/b/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no object DCH for MIME type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
