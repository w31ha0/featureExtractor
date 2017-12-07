.class public La/b/v;
.super La/b/e;


# static fields
.field private static a:Lcom/a/b/a/b;


# instance fields
.field private b:[Lcom/a/b/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/b/v;->a:Lcom/a/b/a/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, La/b/e;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "MailcapCommandMap: load HOME"

    invoke-static {v1}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    :try_start_0
    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".mailcap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/v;->d(Ljava/lang/String;)Lcom/a/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    const-string v1, "MailcapCommandMap: load SYS"

    invoke-static {v1}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "java.home"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "lib"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mailcap"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/v;->d(Ljava/lang/String;)Lcom/a/b/a/b;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    const-string v1, "MailcapCommandMap: load JAR"

    invoke-static {v1}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    const-string v1, "mailcap"

    invoke-direct {p0, v0, v1}, La/b/v;->a(Ljava/util/List;Ljava/lang/String;)V

    const-string v1, "MailcapCommandMap: load DEF"

    invoke-static {v1}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    const-class v1, La/b/v;

    monitor-enter v1

    :try_start_2
    sget-object v2, La/b/v;->a:Lcom/a/b/a/b;

    if-nez v2, :cond_2

    const-string v2, "mailcap.default"

    invoke-direct {p0, v2}, La/b/v;->c(Ljava/lang/String;)Lcom/a/b/a/b;

    move-result-object v2

    sput-object v2, La/b/v;->a:Lcom/a/b/a/b;

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, La/b/v;->a:Lcom/a/b/a/b;

    if-eqz v1, :cond_3

    sget-object v1, La/b/v;->a:Lcom/a/b/a/b;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/a/b/a/b;

    iput-object v1, p0, La/b/v;->b:[Lcom/a/b/a/b;

    iget-object v1, p0, La/b/v;->b:[Lcom/a/b/a/b;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/a/b/a/b;

    iput-object v0, p0, La/b/v;->b:[Lcom/a/b/a/b;

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 9

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, La/b/m;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_4

    invoke-static {v0, p2}, La/b/m;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_f

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MailcapCommandMap: getResources"

    invoke-static {v1}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    :cond_1
    move v1, v2

    :goto_1
    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-lt v1, v3, :cond_5

    move v0, v2

    :goto_2
    if-nez v0, :cond_3

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "MailcapCommandMap: !anyLoaded"

    invoke-static {v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/b/v;->c(Ljava/lang/String;)Lcom/a/b/a/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :cond_4
    :try_start_1
    invoke-static {p2}, La/b/m;->a(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :cond_5
    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MailcapCommandMap: URL "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_6
    :try_start_2
    invoke-static {v3}, La/b/m;->a(Ljava/net/URL;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_9

    :try_start_3
    new-instance v5, Lcom/a/b/a/b;

    invoke-direct {v5, v4}, Lcom/a/b/a/b;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MailcapCommandMap: successfully loaded mailcap file from URL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_7
    :goto_3
    if-eqz v4, :cond_8

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_8
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_9
    :try_start_5
    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MailcapCommandMap: not loading mailcap file from URL: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v5

    move-object v8, v5

    move v5, v2

    move-object v2, v8

    :try_start_6
    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MailcapCommandMap: can\'t load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_a
    if-eqz v4, :cond_e

    :try_start_7
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    move v2, v5

    goto :goto_4

    :catch_1
    move-exception v2

    move v2, v5

    goto :goto_4

    :catch_2
    move-exception v5

    move-object v8, v5

    move v5, v2

    move-object v2, v8

    :try_start_8
    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v6

    if-eqz v6, :cond_b

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MailcapCommandMap: can\'t load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_b
    if-eqz v4, :cond_e

    :try_start_9
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7

    move v2, v5

    goto :goto_4

    :catch_3
    move-exception v2

    move v2, v5

    goto :goto_4

    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_c

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_c
    :goto_6
    :try_start_b
    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    :catch_4
    move-exception v0

    move v1, v2

    :goto_7
    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_d

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MailcapCommandMap: can\'t load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    move v0, v1

    goto/16 :goto_2

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v3

    goto/16 :goto_4

    :catch_7
    move-exception v0

    move v1, v5

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v4

    move v2, v5

    goto :goto_5

    :cond_e
    move v2, v5

    goto/16 :goto_4

    :cond_f
    move v0, v2

    goto/16 :goto_2
.end method

.method private c(Ljava/lang/String;)Lcom/a/b/a/b;
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, La/b/m;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_2

    :try_start_1
    new-instance v1, Lcom/a/b/a/b;

    invoke-direct {v1, v0}, Lcom/a/b/a/b;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MailcapCommandMap: successfully loaded mailcap file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_1
    :goto_0
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_2
    :try_start_3
    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "MailcapCommandMap: not loading mailcap file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_3
    if-eqz v0, :cond_4

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    :cond_4
    :goto_2
    move-object v0, v4

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v4

    :goto_3
    :try_start_5
    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MailcapCommandMap: can\'t load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_5
    if-eqz v1, :cond_4

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v4

    :goto_4
    :try_start_7
    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MailcapCommandMap: can\'t load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :cond_6
    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_2

    :catch_3
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v4

    :goto_5
    if-eqz v1, :cond_7

    :try_start_9
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :cond_7
    :goto_6
    throw v0

    :catch_4
    move-exception v0

    goto :goto_0

    :catch_5
    move-exception v1

    goto :goto_6

    :catch_6
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    :catchall_2
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    :catch_8
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3
.end method

.method private static d(Ljava/lang/String;)Lcom/a/b/a/b;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/a/b/a/b;

    invoke-direct {v1, p0}, Lcom/a/b/a/b;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)La/b/c;
    .locals 3

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "    got content-handler"

    invoke-static {v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "      class "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    :cond_1
    :try_start_0
    invoke-static {}, La/b/m;->a()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    :cond_2
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, La/b/c;

    move-object v0, p0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t load DCH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    const/4 v0, 0x0

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t load DCH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3
    move-exception v0

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t load DCH "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)La/b/c;
    .locals 5

    const/4 v4, 0x0

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MailcapCommandMap: createDataContentHandler for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_8

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    move v2, v4

    :goto_1
    iget-object v0, p0, La/b/v;->b:[Lcom/a/b/a/b;

    array-length v0, v0

    if-lt v2, v0, :cond_2

    move v2, v4

    :goto_2
    iget-object v0, p0, La/b/v;->b:[Lcom/a/b/a/b;

    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v2, v0, :cond_5

    const/4 v0, 0x0

    :cond_1
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_1
    iget-object v0, p0, La/b/v;->b:[Lcom/a/b/a/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "  search DB #"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, La/b/v;->b:[Lcom/a/b/a/b;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/a/b/a/b;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v3, "content-handler"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_4

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, La/b/v;->e(Ljava/lang/String;)La/b/c;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_4
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, La/b/v;->b:[Lcom/a/b/a/b;

    aget-object v0, v0, v2

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "  search fallback DB #"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, La/b/v;->b:[Lcom/a/b/a/b;

    aget-object v0, v0, v2

    invoke-virtual {v0, v1}, Lcom/a/b/a/b;->b(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_7

    const-string v3, "content-handler"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_7

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, La/b/v;->e(Ljava/lang/String;)La/b/c;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    :cond_7
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_8
    move-object v1, p1

    goto/16 :goto_0
.end method
