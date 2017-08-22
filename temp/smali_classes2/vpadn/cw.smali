.class public Lvpadn/cw;
.super Ljava/lang/Object;
.source "Files.java"


# direct methods
.method public static a(Ljava/io/File;)I
    .locals 4

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string v0, "Files"

    const-string v1, "intLength: file == null"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    const/4 v0, 0x0

    .line 38
    :goto_0
    return v0

    .line 32
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 34
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 35
    long-to-int v0, v0

    goto :goto_0

    .line 37
    :cond_1
    const-string v0, "Files"

    const-string v1, "intLength: length > Integer.MAX_VALUE"

    invoke-static {v0, v1}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 10
    if-nez p0, :cond_0

    .line 11
    const-string v1, "Files"

    const-string v2, "createDirectory: absolutePath IS NULL"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :goto_0
    return-object v0

    .line 15
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_2

    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v0, v1

    .line 19
    goto :goto_0

    .line 22
    :cond_3
    const-string v1, "Files"

    const-string v2, "createDirectory: create directory failed"

    invoke-static {v1, v2}, Lvpadn/bi;->c(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
