.class final La/b/q;
.super Ljava/lang/Object;

# interfaces
.implements La/b/c;


# instance fields
.field private a:La/b/j;

.field private b:[Lb/a/a/a;

.field private c:La/b/c;


# direct methods
.method public constructor <init>(La/b/c;La/b/j;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, La/b/q;->a:La/b/j;

    iput-object v0, p0, La/b/q;->b:[Lb/a/a/a;

    iput-object v0, p0, La/b/q;->c:La/b/c;

    iput-object p2, p0, La/b/q;->a:La/b/j;

    iput-object p1, p0, La/b/q;->c:La/b/c;

    return-void
.end method


# virtual methods
.method public final a(La/b/j;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/b/q;->c:La/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/q;->c:La/b/c;

    invoke-interface {v0, p1}, La/b/c;->a(La/b/j;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p1}, La/b/j;->a()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .locals 3

    iget-object v0, p0, La/b/q;->c:La/b/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/q;->c:La/b/c;

    invoke-interface {v0, p1, p2, p3}, La/b/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance v0, La/b/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "no DCH for content type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, La/b/q;->a:La/b/j;

    invoke-interface {v2}, La/b/j;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, La/b/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method
