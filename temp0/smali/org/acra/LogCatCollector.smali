.class Lorg/acra/LogCatCollector;
.super Ljava/lang/Object;
.source "LogCatCollector.java"


# static fields
.field private static final DEFAULT_TAIL_COUNT:I = 0x64


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static collectLogCat(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "bufferName"    # Ljava/lang/String;

    .prologue
    .line 59
    const/4 v5, 0x0

    .line 61
    .local v5, "logcatBuf":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    .local v1, "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v10, "logcat"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 63
    if-eqz p0, :cond_0

    .line 64
    const-string v10, "-b"

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    :cond_0
    const/4 v8, -0x1

    .line 70
    .local v8, "tailCount":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {}, Lorg/acra/ACRA;->getConfig()Lorg/acra/annotation/ReportsCrashes;

    move-result-object v10

    invoke-interface {v10}, Lorg/acra/annotation/ReportsCrashes;->logcatArguments()[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 72
    .local v4, "logcatArgumentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "-t"

    invoke-interface {v4, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v9

    .line 73
    .local v9, "tailIndex":I
    const/4 v10, -0x1

    if-le v9, v10, :cond_1

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 74
    add-int/lit8 v10, v9, 0x1

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 75
    invoke-static {}, Lorg/acra/Compatibility;->getAPILevel()I

    move-result v10

    const/16 v11, 0x8

    if-ge v10, v11, :cond_1

    .line 76
    add-int/lit8 v10, v9, 0x1

    invoke-interface {v4, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 77
    invoke-interface {v4, v9}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 78
    const-string v10, "-d"

    invoke-interface {v4, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_1
    new-instance v6, Lorg/acra/util/BoundedLinkedList;

    if-lez v8, :cond_2

    .end local v8    # "tailCount":I
    :goto_0
    invoke-direct {v6, v8}, Lorg/acra/util/BoundedLinkedList;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    .end local v5    # "logcatBuf":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<Ljava/lang/String;>;"
    .local v6, "logcatBuf":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<Ljava/lang/String;>;"
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 84
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v11

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v7

    .line 85
    .local v7, "process":Ljava/lang/Process;
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/InputStreamReader;

    invoke-virtual {v7}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 87
    .local v0, "bufferedReader":Ljava/io/BufferedReader;
    sget-object v10, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v11, "Retrieving logcat output..."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :goto_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .local v3, "line":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 90
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lorg/acra/util/BoundedLinkedList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 93
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v7    # "process":Ljava/lang/Process;
    :catch_0
    move-exception v2

    move-object v5, v6

    .line 94
    .end local v1    # "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "logcatArgumentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v6    # "logcatBuf":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<Ljava/lang/String;>;"
    .end local v9    # "tailIndex":I
    .local v2, "e":Ljava/io/IOException;
    .restart local v5    # "logcatBuf":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<Ljava/lang/String;>;"
    :goto_2
    sget-object v10, Lorg/acra/ACRA;->LOG_TAG:Ljava/lang/String;

    const-string v11, "LogCatCollector.collectLogcat could not retrieve data."

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    :goto_3
    invoke-virtual {v5}, Lorg/acra/util/BoundedLinkedList;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 81
    .restart local v1    # "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "logcatArgumentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v8    # "tailCount":I
    .restart local v9    # "tailIndex":I
    :cond_2
    const/16 v8, 0x64

    goto :goto_0

    .end local v5    # "logcatBuf":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<Ljava/lang/String;>;"
    .end local v8    # "tailCount":I
    .restart local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v6    # "logcatBuf":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<Ljava/lang/String;>;"
    .restart local v7    # "process":Ljava/lang/Process;
    :cond_3
    move-object v5, v6

    .line 95
    .end local v6    # "logcatBuf":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<Ljava/lang/String;>;"
    .restart local v5    # "logcatBuf":Lorg/acra/util/BoundedLinkedList;, "Lorg/acra/util/BoundedLinkedList<Ljava/lang/String;>;"
    goto :goto_3

    .line 93
    .end local v0    # "bufferedReader":Ljava/io/BufferedReader;
    .end local v1    # "commandLine":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "logcatArgumentsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "process":Ljava/lang/Process;
    .end local v9    # "tailIndex":I
    :catch_1
    move-exception v2

    goto :goto_2
.end method
