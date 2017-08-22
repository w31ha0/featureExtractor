.class public Lvpadn/dd;
.super Lvpadn/de;
.source "VpadnDiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lvpadn/de",
        "<",
        "Ljava/lang/String;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p3}, Lvpadn/de;-><init>(I)V

    .line 28
    if-nez p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    if-nez p2, :cond_1

    .line 31
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "cacheDirectoryName may not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    if-gez p3, :cond_2

    .line 33
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSizeBytes must be positive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 36
    :cond_2
    iput-object p1, p0, Lvpadn/dd;->a:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Lvpadn/dd;->b:Ljava/lang/String;

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lvpadn/dd;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-static {v0}, Lvpadn/cw;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lvpadn/dd;->c:Ljava/io/File;

    .line 42
    iget-object v0, p0, Lvpadn/dd;->c:Ljava/io/File;

    if-nez v0, :cond_3

    .line 43
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to obtain access to directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lvpadn/dd;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_3
    invoke-direct {p0}, Lvpadn/dd;->b()V

    .line 47
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 93
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lvpadn/dd;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lvpadn/dd;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 97
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :try_start_1
    invoke-static {p2, v2}, Lvpadn/cz;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 108
    invoke-static {v2}, Lvpadn/cz;->a(Ljava/io/Closeable;)V

    .line 111
    :goto_0
    return-object v0

    .line 98
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 99
    goto :goto_0

    .line 104
    :catch_1
    move-exception v3

    .line 105
    :try_start_2
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 108
    invoke-static {v2}, Lvpadn/cz;->a(Ljava/io/Closeable;)V

    move-object v0, v1

    .line 106
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v0

    invoke-static {v2}, Lvpadn/cz;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method private b()V
    .locals 5

    .prologue
    .line 115
    iget-object v0, p0, Lvpadn/dd;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 117
    if-eqz v1, :cond_0

    .line 118
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 119
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lvpadn/dd;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_0
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 19
    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lvpadn/dd;->a(Ljava/lang/String;Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method protected a(Ljava/lang/String;Ljava/io/File;)I
    .locals 4

    .prologue
    .line 141
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 142
    invoke-static {p2}, Lvpadn/cw;->a(Ljava/io/File;)I

    move-result v0

    .line 145
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lvpadn/de;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .prologue
    .line 54
    invoke-static {p1}, Lvpadn/da;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lvpadn/dd;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 56
    if-nez v0, :cond_0

    .line 57
    const/4 v0, 0x0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method a()Ljava/io/File;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lvpadn/dd;->c:Ljava/io/File;

    return-object v0
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 19
    check-cast p2, Ljava/lang/String;

    check-cast p3, Ljava/io/File;

    check-cast p4, Ljava/io/File;

    invoke-virtual {p0, p1, p2, p3, p4}, Lvpadn/dd;->a(ZLjava/lang/String;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;Ljava/io/File;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3, p4}, Lvpadn/de;->a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 132
    if-eqz p3, :cond_0

    .line 133
    invoke-virtual {p3}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    const-string v0, "VpadnDiskLruCache"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to delete file from cache: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lvpadn/bi;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    :cond_0
    return-void
.end method

.method declared-synchronized a(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 64
    monitor-enter p0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 81
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 68
    :cond_1
    :try_start_0
    invoke-static {p1}, Lvpadn/da;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-virtual {p0, v1}, Lvpadn/dd;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-nez v2, :cond_0

    .line 74
    invoke-direct {p0, v1, p2}, Lvpadn/dd;->b(Ljava/lang/String;Ljava/io/InputStream;)Ljava/io/File;

    move-result-object v2

    .line 76
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    invoke-virtual {p0, v1, v2}, Lvpadn/dd;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    const/4 v0, 0x1

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
