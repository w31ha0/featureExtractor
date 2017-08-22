.class public Lcom/mopub/common/util/Files;
.super Ljava/lang/Object;
.source "Files.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createDirectory(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p0, "absolutePath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 7
    if-nez p0, :cond_1

    move-object v0, v1

    .line 18
    :cond_0
    :goto_0
    return-object v0

    .line 11
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    .local v0, "directory":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move-object v0, v1

    .line 18
    goto :goto_0
.end method

.method public static intLength(Ljava/io/File;)I
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .prologue
    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v2, 0x0

    .line 31
    :goto_0
    return v2

    .line 26
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 28
    .local v0, "length":J
    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 29
    long-to-int v2, v0

    goto :goto_0

    .line 31
    :cond_1
    const v2, 0x7fffffff

    goto :goto_0
.end method
