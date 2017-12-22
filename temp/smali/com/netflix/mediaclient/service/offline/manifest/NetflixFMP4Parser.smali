.class public Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser;
.super Ljava/lang/Object;
.source "NetflixFMP4Parser.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "NetflixFMP4Parser"

.field private static final TYPE_sidx:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-string/jumbo v0, "sidx"

    invoke-static {v0}, Lcom/google/android/exoplayer/util/Util;->getIntegerCodeForString(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser;->TYPE_sidx:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseSidxInfo(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;
    .locals 15

    .prologue
    const/4 v6, 0x0

    const/4 v14, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 36
    .line 37
    const-wide/16 v4, -0x1

    .line 38
    const-wide/16 v2, 0x0

    .line 39
    const/4 v1, -0x1

    .line 41
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    move v1, v8

    .line 42
    :goto_0
    new-instance v7, Ljava/io/RandomAccessFile;

    const-string/jumbo v0, "r"

    invoke-direct {v7, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :try_start_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 45
    :goto_1
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0

    .line 46
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v10

    .line 47
    sget v11, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser;->TYPE_sidx:I

    if-ne v10, v11, :cond_1

    .line 48
    invoke-virtual {v7}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 50
    :try_start_2
    const-string/jumbo v7, "NetflixFMP4Parser"

    const-string/jumbo v10, "sidx offset=%d size=%d"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v7, v10, v11}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 51
    new-instance v7, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;

    int-to-long v10, v0

    invoke-direct {v7, v10, v11, v2, v3}, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;-><init>(JJ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v7

    :cond_0
    move v1, v9

    .line 41
    goto :goto_0

    .line 53
    :cond_1
    add-int/lit8 v10, v0, -0x8

    :try_start_3
    invoke-virtual {v7, v10}, Ljava/io/RandomAccessFile;->skipBytes(I)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 54
    int-to-long v10, v0

    add-long/2addr v2, v10

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception v0

    .line 59
    :goto_2
    if-eqz v6, :cond_2

    .line 60
    :try_start_4
    const-string/jumbo v7, "NetflixFMP4Parser"

    const-string/jumbo v10, "closing RandomAccessFile"

    invoke-static {v7, v10}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 66
    :cond_2
    :goto_3
    const-string/jumbo v6, "NetflixFMP4Parser"

    const-string/jumbo v7, "ParseSidxInfo fileName=%s fileSize=%d offsetInFile=%d fileExists=%d exception=%s"

    const/4 v10, 0x5

    new-array v10, v10, [Ljava/lang/Object;

    aput-object p0, v10, v9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v10, v8

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v10, v14

    const/4 v8, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v10, v8

    const/4 v8, 0x4

    aput-object v0, v10, v8

    invoke-static {v6, v7, v10}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 67
    new-instance v6, Ljava/lang/Exception;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "filename="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " fileSize="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " offsetInFile="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " fileExists="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v6

    .line 63
    :catch_1
    move-exception v6

    .line 64
    const-string/jumbo v7, "NetflixFMP4Parser"

    const-string/jumbo v10, "exception while closing RandomAccessFile:"

    invoke-static {v7, v10, v6}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 57
    :catch_2
    move-exception v0

    move-object v6, v7

    goto/16 :goto_2
.end method

.method public static sidxInfoMissing(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 72
    const/4 v0, 0x0

    .line 74
    :try_start_0
    invoke-static {p0}, Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser;->parseSidxInfo(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/manifest/NetflixFMP4Parser$SidxInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 75
    :catch_0
    move-exception v1

    goto :goto_0
.end method
