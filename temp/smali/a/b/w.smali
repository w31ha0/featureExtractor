.class public La/b/w;
.super La/b/k;


# static fields
.field private static a:Lcom/a/b/a/e;

.field private static c:Ljava/lang/String;


# instance fields
.field private b:[Lcom/a/b/a/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, La/b/w;->a:Lcom/a/b/a/e;

    const-string v0, "application/octet-stream"

    sput-object v0, La/b/w;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, La/b/k;-><init>()V

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const-string v1, "MimetypesFileTypeMap: load HOME"

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

    const-string v2, ".mime.types"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/w;->b(Ljava/lang/String;)Lcom/a/b/a/e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    :goto_0
    const-string v1, "MimetypesFileTypeMap: load SYS"

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

    const-string v2, "mime.types"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, La/b/w;->b(Ljava/lang/String;)Lcom/a/b/a/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_1
    const-string v1, "MimetypesFileTypeMap: load JAR"

    invoke-static {v1}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    const-string v1, "mime.types"

    invoke-direct {p0, v0, v1}, La/b/w;->a(Ljava/util/Vector;Ljava/lang/String;)V

    const-string v1, "MimetypesFileTypeMap: load DEF"

    invoke-static {v1}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    const-class v1, La/b/w;

    monitor-enter v1

    :try_start_2
    sget-object v2, La/b/w;->a:Lcom/a/b/a/e;

    if-nez v2, :cond_2

    const-string v2, "/mimetypes.default"

    invoke-direct {p0, v2}, La/b/w;->a(Ljava/lang/String;)Lcom/a/b/a/e;

    move-result-object v2

    sput-object v2, La/b/w;->a:Lcom/a/b/a/e;

    :cond_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-object v1, La/b/w;->a:Lcom/a/b/a/e;

    if-eqz v1, :cond_3

    sget-object v1, La/b/w;->a:Lcom/a/b/a/e;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Lcom/a/b/a/e;

    iput-object v1, p0, La/b/w;->b:[Lcom/a/b/a/e;

    iget-object v1, p0, La/b/w;->b:[Lcom/a/b/a/e;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

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

.method private a(Ljava/lang/String;)Lcom/a/b/a/e;
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
    new-instance v1, Lcom/a/b/a/e;

    invoke-direct {v1, v0}, Lcom/a/b/a/e;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MimetypesFileTypeMap: successfully loaded mime types file: "

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

    const-string v2, "MimetypesFileTypeMap: not loading mime types file: "

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

    const-string v3, "MimetypesFileTypeMap: can\'t load "

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

    const-string v3, "MimetypesFileTypeMap: can\'t load "

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

.method private a(Ljava/util/Vector;Ljava/lang/String;)V
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
    if-eqz v0, :cond_3

    invoke-static {v0, p2}, La/b/m;->a(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_e

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MimetypesFileTypeMap: getResources"

    invoke-static {v1}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    :cond_1
    move v1, v2

    :goto_1
    array-length v3, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    if-lt v1, v3, :cond_4

    move v0, v2

    :goto_2
    if-nez v0, :cond_2

    const-string v0, "MimetypesFileTypeMap: !anyLoaded"

    invoke-static {v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/b/w;->a(Ljava/lang/String;)Lcom/a/b/a/e;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    return-void

    :cond_3
    :try_start_1
    invoke-static {p2}, La/b/m;->a(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v0

    goto :goto_0

    :cond_4
    aget-object v3, v0, v1

    const/4 v4, 0x0

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v5

    if-eqz v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MimetypesFileTypeMap: URL "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/a/b/a/f;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :cond_5
    :try_start_2
    invoke-static {v3}, La/b/m;->a(Ljava/net/URL;)Ljava/io/InputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v4

    if-eqz v4, :cond_8

    :try_start_3
    new-instance v5, Lcom/a/b/a/e;

    invoke-direct {v5, v4}, Lcom/a/b/a/e;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v2, 0x1

    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MimetypesFileTypeMap: successfully loaded mime types from URL: "

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

    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_7
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_8
    :try_start_5
    invoke-static {}, Lcom/a/b/a/f;->a()Z

    move-result v5

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "MimetypesFileTypeMap: not loading mime types from URL: "

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

    if-eqz v6, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_9
    if-eqz v4, :cond_d

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

    if-eqz v6, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :cond_a
    if-eqz v4, :cond_d

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
    if-eqz v1, :cond_b

    :try_start_a
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    :cond_b
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

    if-eqz v2, :cond_c

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MimetypesFileTypeMap: can\'t load "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_c
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

    :cond_d
    move v2, v5

    goto/16 :goto_4

    :cond_e
    move v0, v2

    goto/16 :goto_2
.end method

.method private static b(Ljava/lang/String;)Lcom/a/b/a/e;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/a/b/a/e;

    invoke-direct {v1, p0}, Lcom/a/b/a/e;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    sget-object v0, La/b/w;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v0, La/b/w;->c:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, La/b/w;->b:[Lcom/a/b/a/e;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    sget-object v0, La/b/w;->c:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, La/b/w;->b:[Lcom/a/b/a/e;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, La/b/w;->b:[Lcom/a/b/a/e;

    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/a/b/a/e;->a(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v0, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Ljava/io/File;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, La/b/w;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
