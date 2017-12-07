.class public final Lcom/gambler/a/a;
.super La/a/y;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:La/a/ae;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, La/a/y;-><init>()V

    const-string v0, "smtp.gmail.com"

    iput-object v0, p0, Lcom/gambler/a/a;->a:Ljava/lang/String;

    iput-object p1, p0, Lcom/gambler/a/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/gambler/a/a;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const-string v1, "mail.smtp.host"

    iget-object v2, p0, Lcom/gambler/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.port"

    const-string v2, "587"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/gambler/a/a;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "mail.smtp.auth"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "mail.smtp.user"

    iget-object v2, p0, Lcom/gambler/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.password"

    iget-object v2, p0, Lcom/gambler/a/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "mail.smtp.starttls.enable"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/gambler/a/b;

    invoke-direct {v1, p0}, Lcom/gambler/a/b;-><init>(Lcom/gambler/a/a;)V

    invoke-static {v0, v1}, La/a/ae;->a(Ljava/util/Properties;La/a/y;)La/a/ae;

    move-result-object v0

    iput-object v0, p0, Lcom/gambler/a/a;->d:La/a/ae;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;La/a/a/h;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    new-instance v0, La/a/a/t;

    iget-object v1, p0, Lcom/gambler/a/a;->d:La/a/ae;

    invoke-direct {v0, v1}, La/a/a/t;-><init>(La/a/ae;)V

    new-instance v1, La/a/a/q;

    invoke-direct {v1, p3}, La/a/a/q;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, La/a/a/t;->a(La/a/ac;)V

    invoke-virtual {v0, p1}, La/a/a/t;->c(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, La/a/a/t;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, La/a/a/e;

    const-string v2, "mixed"

    invoke-direct {v1, v2}, La/a/a/e;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p5}, La/a/a/e;->a(La/a/b;)V

    invoke-virtual {v0, v1}, La/a/a/t;->a(La/a/v;)V

    invoke-virtual {v0}, La/a/a/t;->e()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/16 v1, 0x2c

    :try_start_2
    invoke-virtual {p4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_0

    sget-object v1, La/a/q;->a:La/a/q;

    invoke-static {p4}, La/a/a/q;->a(Ljava/lang/String;)[La/a/a/q;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, La/a/a/t;->a(La/a/q;[La/a/ac;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    iget-object v1, p0, Lcom/gambler/a/a;->d:La/a/ae;

    invoke-virtual {v1}, La/a/ae;->a()V

    invoke-static {v0}, La/a/ag;->a(La/a/l;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit p0

    return-void

    :cond_0
    :try_start_4
    sget-object v1, La/a/q;->a:La/a/q;

    new-instance v2, La/a/a/q;

    invoke-direct {v2, p4}, La/a/a/q;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x1

    new-array v3, v3, [La/a/ac;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, La/a/l;->a(La/a/q;[La/a/ac;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_0
.end method
