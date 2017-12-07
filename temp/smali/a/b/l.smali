.class final La/b/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:La/b/f;

.field private final synthetic b:Ljava/io/PipedOutputStream;

.field private final synthetic c:La/b/c;


# direct methods
.method constructor <init>(La/b/f;Ljava/io/PipedOutputStream;La/b/c;)V
    .locals 0

    iput-object p1, p0, La/b/l;->a:La/b/f;

    iput-object p2, p0, La/b/l;->b:Ljava/io/PipedOutputStream;

    iput-object p3, p0, La/b/l;->c:La/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, La/b/l;->c:La/b/c;

    iget-object v1, p0, La/b/l;->a:La/b/f;

    invoke-static {v1}, La/b/f;->a(La/b/f;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, La/b/l;->a:La/b/f;

    invoke-static {v2}, La/b/f;->b(La/b/f;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, La/b/l;->b:Ljava/io/PipedOutputStream;

    invoke-interface {v0, v1, v2, v3}, La/b/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, La/b/l;->b:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v0, p0, La/b/l;->b:Ljava/io/PipedOutputStream;

    invoke-virtual {v0}, Ljava/io/PipedOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_3
    iget-object v1, p0, La/b/l;->b:Ljava/io/PipedOutputStream;

    invoke-virtual {v1}, Ljava/io/PipedOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_1
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_1
.end method
