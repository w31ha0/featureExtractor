.class public final La/b/f;
.super Ljava/lang/Object;


# static fields
.field private static final f:[Lb/a/a/a;

.field private static j:La/b/h;


# instance fields
.field private a:La/b/j;

.field private b:La/b/j;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/String;

.field private e:La/b/e;

.field private g:[Lb/a/a/a;

.field private h:La/b/c;

.field private i:La/b/c;

.field private k:La/b/h;

.field private l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lb/a/a/a;

    sput-object v0, La/b/f;->f:[Lb/a/a/a;

    const/4 v0, 0x0

    sput-object v0, La/b/f;->j:La/b/h;

    return-void
.end method

.method public constructor <init>(La/b/j;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, La/b/f;->a:La/b/j;

    iput-object v1, p0, La/b/f;->b:La/b/j;

    iput-object v1, p0, La/b/f;->c:Ljava/lang/Object;

    iput-object v1, p0, La/b/f;->d:Ljava/lang/String;

    iput-object v1, p0, La/b/f;->e:La/b/e;

    sget-object v0, La/b/f;->f:[Lb/a/a/a;

    iput-object v0, p0, La/b/f;->g:[Lb/a/a/a;

    iput-object v1, p0, La/b/f;->h:La/b/c;

    iput-object v1, p0, La/b/f;->i:La/b/c;

    iput-object v1, p0, La/b/f;->k:La/b/h;

    iput-object v1, p0, La/b/f;->l:Ljava/lang/String;

    iput-object p1, p0, La/b/f;->a:La/b/j;

    sget-object v0, La/b/f;->j:La/b/h;

    iput-object v0, p0, La/b/f;->k:La/b/h;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, La/b/f;->a:La/b/j;

    iput-object v1, p0, La/b/f;->b:La/b/j;

    iput-object v1, p0, La/b/f;->c:Ljava/lang/Object;

    iput-object v1, p0, La/b/f;->d:Ljava/lang/String;

    iput-object v1, p0, La/b/f;->e:La/b/e;

    sget-object v0, La/b/f;->f:[Lb/a/a/a;

    iput-object v0, p0, La/b/f;->g:[Lb/a/a/a;

    iput-object v1, p0, La/b/f;->h:La/b/c;

    iput-object v1, p0, La/b/f;->i:La/b/c;

    iput-object v1, p0, La/b/f;->k:La/b/h;

    iput-object v1, p0, La/b/f;->l:Ljava/lang/String;

    iput-object p1, p0, La/b/f;->c:Ljava/lang/Object;

    iput-object p2, p0, La/b/f;->d:Ljava/lang/String;

    sget-object v0, La/b/f;->j:La/b/h;

    iput-object v0, p0, La/b/f;->k:La/b/h;

    return-void
.end method

.method static synthetic a(La/b/f;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, La/b/f;->c:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic b(La/b/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/b/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method private declared-synchronized f()La/b/e;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/b/f;->e:La/b/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/f;->e:La/b/e;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-static {}, La/b/e;->a()La/b/e;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized g()La/b/c;
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, La/b/f;->j:La/b/h;

    iget-object v1, p0, La/b/f;->k:La/b/h;

    if-eq v0, v1, :cond_0

    sget-object v0, La/b/f;->j:La/b/h;

    iput-object v0, p0, La/b/f;->k:La/b/h;

    const/4 v0, 0x0

    iput-object v0, p0, La/b/f;->i:La/b/c;

    const/4 v0, 0x0

    iput-object v0, p0, La/b/f;->h:La/b/c;

    sget-object v0, La/b/f;->f:[Lb/a/a/a;

    iput-object v0, p0, La/b/f;->g:[Lb/a/a/a;

    :cond_0
    iget-object v0, p0, La/b/f;->h:La/b/c;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/b/f;->h:La/b/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    invoke-direct {p0}, La/b/f;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, La/b/f;->i:La/b/c;

    if-nez v1, :cond_2

    sget-object v1, La/b/f;->j:La/b/h;

    if-eqz v1, :cond_2

    sget-object v1, La/b/f;->j:La/b/h;

    invoke-interface {v1}, La/b/h;->a()La/b/c;

    move-result-object v1

    iput-object v1, p0, La/b/f;->i:La/b/c;

    :cond_2
    iget-object v1, p0, La/b/f;->i:La/b/c;

    if-eqz v1, :cond_3

    iget-object v1, p0, La/b/f;->i:La/b/c;

    iput-object v1, p0, La/b/f;->h:La/b/c;

    :cond_3
    iget-object v1, p0, La/b/f;->h:La/b/c;

    if-nez v1, :cond_4

    iget-object v1, p0, La/b/f;->a:La/b/j;

    if-eqz v1, :cond_5

    invoke-direct {p0}, La/b/f;->f()La/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, La/b/e;->b(Ljava/lang/String;)La/b/c;

    move-result-object v0

    iput-object v0, p0, La/b/f;->h:La/b/c;

    :cond_4
    :goto_1
    iget-object v0, p0, La/b/f;->a:La/b/j;

    if-eqz v0, :cond_6

    new-instance v0, La/b/q;

    iget-object v1, p0, La/b/f;->h:La/b/c;

    iget-object v2, p0, La/b/f;->a:La/b/j;

    invoke-direct {v0, v1, v2}, La/b/q;-><init>(La/b/c;La/b/j;)V

    iput-object v0, p0, La/b/f;->h:La/b/c;

    :goto_2
    iget-object v0, p0, La/b/f;->h:La/b/c;

    goto :goto_0

    :cond_5
    invoke-direct {p0}, La/b/f;->f()La/b/e;

    move-result-object v1

    invoke-virtual {v1, v0}, La/b/e;->a(Ljava/lang/String;)La/b/c;

    move-result-object v0

    iput-object v0, p0, La/b/f;->h:La/b/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_6
    :try_start_2
    new-instance v0, La/b/a;

    iget-object v1, p0, La/b/f;->h:La/b/c;

    iget-object v2, p0, La/b/f;->c:Ljava/lang/Object;

    iget-object v3, p0, La/b/f;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, La/b/a;-><init>(La/b/c;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La/b/f;->h:La/b/c;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method private declared-synchronized h()Ljava/lang/String;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, La/b/f;->l:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, La/b/f;->c()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    new-instance v1, La/b/b;

    invoke-direct {v1, v0}, La/b/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, La/b/b;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, La/b/f;->l:Ljava/lang/String;
    :try_end_1
    .catch La/b/g; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    :try_start_2
    iget-object v0, p0, La/b/f;->l:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catch_0
    move-exception v1

    :try_start_3
    iput-object v0, p0, La/b/f;->l:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a()La/b/j;
    .locals 1

    iget-object v0, p0, La/b/f;->a:La/b/j;

    if-nez v0, :cond_1

    iget-object v0, p0, La/b/f;->b:La/b/j;

    if-nez v0, :cond_0

    new-instance v0, La/b/p;

    invoke-direct {v0, p0}, La/b/p;-><init>(La/b/f;)V

    iput-object v0, p0, La/b/f;->b:La/b/j;

    :cond_0
    iget-object v0, p0, La/b/f;->b:La/b/j;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, La/b/f;->a:La/b/j;

    goto :goto_0
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 4

    iget-object v0, p0, La/b/f;->a:La/b/j;

    if-eqz v0, :cond_1

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iget-object v1, p0, La/b/f;->a:La/b/j;

    invoke-interface {v1}, La/b/j;->a()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-gtz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :goto_1
    return-void

    :cond_0
    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    throw v0

    :cond_1
    invoke-direct {p0}, La/b/f;->g()La/b/c;

    move-result-object v0

    iget-object v1, p0, La/b/f;->c:Ljava/lang/Object;

    iget-object v2, p0, La/b/f;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, p1}, La/b/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V

    goto :goto_1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/b/f;->a:La/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/f;->a:La/b/j;

    invoke-interface {v0}, La/b/j;->c()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/b/f;->a:La/b/j;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/f;->a:La/b/j;

    invoke-interface {v0}, La/b/j;->b()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, La/b/f;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Ljava/io/InputStream;
    .locals 6

    iget-object v1, p0, La/b/f;->a:La/b/j;

    if-eqz v1, :cond_0

    iget-object v1, p0, La/b/f;->a:La/b/j;

    invoke-interface {v1}, La/b/j;->a()Ljava/io/InputStream;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-direct {p0}, La/b/f;->g()La/b/c;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v1, La/b/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no DCH for MIME type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, La/b/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La/b/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    instance-of v1, v2, La/b/a;

    if-eqz v1, :cond_2

    move-object v0, v2

    check-cast v0, La/b/a;

    move-object v1, v0

    invoke-virtual {v1}, La/b/a;->a()La/b/c;

    move-result-object v1

    if-nez v1, :cond_2

    new-instance v1, La/b/d;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "no object DCH for MIME type "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, La/b/f;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, La/b/d;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    new-instance v1, Ljava/io/PipedOutputStream;

    invoke-direct {v1}, Ljava/io/PipedOutputStream;-><init>()V

    new-instance v3, Ljava/io/PipedInputStream;

    invoke-direct {v3, v1}, Ljava/io/PipedInputStream;-><init>(Ljava/io/PipedOutputStream;)V

    new-instance v4, Ljava/lang/Thread;

    new-instance v5, La/b/l;

    invoke-direct {v5, p0, v1, v2}, La/b/l;-><init>(La/b/f;Ljava/io/PipedOutputStream;La/b/c;)V

    const-string v1, "DataHandler.getInputStream"

    invoke-direct {v4, v5, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    move-object v1, v3

    goto :goto_0
.end method

.method public final e()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, La/b/f;->c:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, La/b/f;->c:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, La/b/f;->g()La/b/c;

    move-result-object v0

    invoke-virtual {p0}, La/b/f;->a()La/b/j;

    move-result-object v1

    invoke-interface {v0, v1}, La/b/c;->a(La/b/j;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
