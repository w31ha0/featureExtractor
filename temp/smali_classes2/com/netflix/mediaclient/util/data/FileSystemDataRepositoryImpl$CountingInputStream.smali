.class Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "FileSystemDataRepositoryImpl.java"


# instance fields
.field private bytesRead:I


# direct methods
.method private constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .prologue
    .line 313
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 310
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;->bytesRead:I

    .line 314
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$1;)V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;)I
    .locals 1

    .prologue
    .line 309
    iget v0, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;->bytesRead:I

    return v0
.end method


# virtual methods
.method public read()I
    .locals 2

    .prologue
    .line 318
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    .line 319
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 320
    iget v1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;->bytesRead:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;->bytesRead:I

    .line 322
    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 2

    .prologue
    .line 327
    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v0

    .line 328
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 329
    iget v1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;->bytesRead:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/netflix/mediaclient/util/data/FileSystemDataRepositoryImpl$CountingInputStream;->bytesRead:I

    .line 331
    :cond_0
    return v0
.end method
