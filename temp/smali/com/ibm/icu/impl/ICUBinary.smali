.class public final Lcom/ibm/icu/impl/ICUBinary;
.super Ljava/lang/Object;
.source "ICUBinary.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final icuDataFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/impl/ICUBinary$DataFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/ibm/icu/impl/ICUBinary;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ibm/icu/impl/ICUBinary;->$assertionsDisabled:Z

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ibm/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/ibm/icu/impl/ICUBinary;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".dataPath"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUConfig;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    if-eqz v0, :cond_0

    .line 286
    sget-object v1, Lcom/ibm/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/ibm/icu/impl/ICUBinary;->addDataFilesFromPath(Ljava/lang/String;Ljava/util/List;)V

    .line 288
    :cond_0
    return-void

    .line 29
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/ibm/icu/impl/ICUBinary;->mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static addBaseNamesInFileFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 544
    sget-object v0, Lcom/ibm/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUBinary$DataFile;

    .line 545
    invoke-virtual {v0, p0, p1, p2}, Lcom/ibm/icu/impl/ICUBinary$DataFile;->addBaseNamesInFolder(Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 547
    :cond_0
    return-void
.end method

.method private static addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/StringBuilder;",
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/impl/ICUBinary$DataFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 322
    if-eqz v2, :cond_0

    array-length v0, v2

    if-nez v0, :cond_1

    .line 352
    :cond_0
    return-void

    .line 325
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 326
    if-lez v0, :cond_2

    .line 330
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 331
    add-int/lit8 v0, v0, 0x1

    .line 333
    :cond_2
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 334
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 335
    const-string/jumbo v6, ".txt"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 333
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 338
    :cond_3
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 341
    invoke-static {v4, p1, p2}, Lcom/ibm/icu/impl/ICUBinary;->addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 350
    :cond_4
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    goto :goto_1

    .line 342
    :cond_5
    const-string/jumbo v6, ".dat"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 343
    invoke-static {v4}, Lcom/ibm/icu/impl/ICUBinary;->mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 344
    if-eqz v4, :cond_4

    invoke-static {v4}, Lcom/ibm/icu/impl/ICUBinary$DatPackageReader;->validate(Ljava/nio/ByteBuffer;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 345
    new-instance v5, Lcom/ibm/icu/impl/ICUBinary$PackageDataFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/ibm/icu/impl/ICUBinary$PackageDataFile;-><init>(Ljava/lang/String;Ljava/nio/ByteBuffer;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 348
    :cond_6
    new-instance v5, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/ibm/icu/impl/ICUBinary$SingleDataFile;-><init>(Ljava/lang/String;Ljava/io/File;)V

    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private static addDataFilesFromPath(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/ibm/icu/impl/ICUBinary$DataFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 296
    move v0, v1

    .line 297
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 298
    sget-char v2, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 300
    if-ltz v3, :cond_3

    move v2, v3

    .line 305
    :goto_1
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 306
    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 307
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 309
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 310
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/ibm/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-static {v2, v0, v4}, Lcom/ibm/icu/impl/ICUBinary;->addDataFilesFromFolder(Ljava/io/File;Ljava/lang/StringBuilder;Ljava/util/List;)V

    .line 312
    :cond_1
    if-gez v3, :cond_4

    .line 317
    :cond_2
    return-void

    .line 303
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    .line 315
    :cond_4
    add-int/lit8 v0, v3, 0x1

    .line 316
    goto :goto_0
.end method

.method static compareKeys(Ljava/lang/CharSequence;Ljava/nio/ByteBuffer;I)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 359
    move v0, v1

    .line 360
    :goto_0
    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 361
    if-nez v2, :cond_1

    .line 362
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 372
    :goto_1
    return v1

    .line 365
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 367
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 368
    const/4 v1, -0x1

    goto :goto_1

    .line 370
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int v2, v3, v2

    .line 371
    if-eqz v2, :cond_3

    move v1, v2

    .line 372
    goto :goto_1

    .line 359
    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method static compareKeys(Ljava/lang/CharSequence;[BI)I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 378
    move v0, v1

    .line 379
    :goto_0
    aget-byte v2, p1, p2

    .line 380
    if-nez v2, :cond_1

    .line 381
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 391
    :goto_1
    return v1

    .line 384
    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    .line 386
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ne v0, v3, :cond_2

    .line 387
    const/4 v1, -0x1

    goto :goto_1

    .line 389
    :cond_2
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    sub-int v2, v3, v2

    .line 390
    if-eqz v2, :cond_3

    move v1, v2

    .line 391
    goto :goto_1

    .line 378
    :cond_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0
.end method

.method public static getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    const/16 v1, 0x80

    const/4 v2, 0x0

    .line 707
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 708
    const/16 v3, 0x20

    if-le v0, v3, :cond_1

    .line 711
    new-array v0, v0, [B

    :goto_0
    move-object v3, v0

    .line 718
    :goto_1
    array-length v0, v3

    if-ge v2, v0, :cond_3

    .line 719
    array-length v0, v3

    sub-int/2addr v0, v2

    invoke-virtual {p0, v3, v2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 720
    if-gez v0, :cond_2

    .line 743
    :cond_0
    const/4 v0, 0x0

    invoke-static {v3, v0, v2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 745
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 743
    return-object v0

    .line 713
    :cond_1
    const/16 v0, 0x80

    :try_start_1
    new-array v0, v0, [B

    goto :goto_0

    .line 723
    :cond_2
    add-int/2addr v0, v2

    move v2, v0

    .line 724
    goto :goto_1

    .line 726
    :cond_3
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v5

    .line 727
    if-ltz v5, :cond_0

    .line 730
    array-length v0, v3

    mul-int/lit8 v0, v0, 0x2

    .line 731
    if-ge v0, v1, :cond_5

    move v0, v1

    .line 737
    :cond_4
    :goto_2
    new-array v4, v0, [B

    .line 738
    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-static {v3, v0, v4, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 740
    add-int/lit8 v0, v2, 0x1

    int-to-byte v3, v5

    aput-byte v3, v4, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v2, v0

    move-object v3, v4

    .line 741
    goto :goto_1

    .line 733
    :cond_5
    const/16 v4, 0x4000

    if-ge v0, v4, :cond_4

    .line 734
    mul-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 745
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    throw v0
.end method

.method public static getChars(Ljava/nio/ByteBuffer;II)[C
    .locals 2

    .prologue
    .line 662
    new-array v0, p1, [C

    .line 663
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/CharBuffer;->get([C)Ljava/nio/CharBuffer;

    .line 664
    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 665
    return-object v0
.end method

.method public static getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/ibm/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 482
    invoke-static {p2}, Lcom/ibm/icu/impl/ICUBinary;->getDataFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 483
    if-eqz v0, :cond_0

    .line 503
    :goto_0
    return-object v0

    .line 486
    :cond_0
    if-nez p0, :cond_1

    .line 487
    const-class v0, Lcom/ibm/icu/impl/ICUData;

    invoke-static {v0}, Lcom/ibm/icu/impl/ClassLoaderUtil;->getClassLoader(Ljava/lang/Class;)Ljava/lang/ClassLoader;

    move-result-object p0

    .line 489
    :cond_1
    if-nez p1, :cond_2

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com/ibm/icu/impl/data/icudt59b/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 495
    :cond_2
    :try_start_0
    invoke-static {p0, p1, p3}, Lcom/ibm/icu/impl/ICUData;->getStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 496
    if-nez v0, :cond_3

    .line 497
    const/4 v0, 0x0

    goto :goto_0

    .line 499
    :cond_3
    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getByteBufferFromInputStreamAndCloseStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 500
    :catch_0
    move-exception v0

    .line 501
    new-instance v1, Lcom/ibm/icu/util/ICUUncheckedIOException;

    invoke-direct {v1, v0}, Lcom/ibm/icu/util/ICUUncheckedIOException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 423
    const/4 v0, 0x0

    invoke-static {v1, v1, p0, v0}, Lcom/ibm/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method private static getDataFromFile(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 507
    sget-object v0, Lcom/ibm/icu/impl/ICUBinary;->icuDataFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ibm/icu/impl/ICUBinary$DataFile;

    .line 508
    invoke-virtual {v0, p0}, Lcom/ibm/icu/impl/ICUBinary$DataFile;->getData(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_0

    .line 513
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInts(Ljava/nio/ByteBuffer;II)[I
    .locals 2

    .prologue
    .line 676
    new-array v0, p1, [I

    .line 677
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 678
    mul-int/lit8 v1, p1, 0x4

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 679
    return-object v0
.end method

.method public static getRequiredData(Ljava/lang/String;)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 449
    const/4 v0, 0x1

    invoke-static {v1, v1, p0, v0}, Lcom/ibm/icu/impl/ICUBinary;->getData(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Z)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/nio/ByteBuffer;II)Ljava/lang/String;
    .locals 2

    .prologue
    .line 655
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    .line 656
    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 657
    mul-int/lit8 v1, p1, 0x2

    add-int/2addr v1, p2

    invoke-static {p0, v1}, Lcom/ibm/icu/impl/ICUBinary;->skipBytes(Ljava/nio/ByteBuffer;I)V

    .line 658
    return-object v0
.end method

.method public static getVersionInfoFromCompactInt(I)Lcom/ibm/icu/util/VersionInfo;
    .locals 4

    .prologue
    .line 753
    ushr-int/lit8 v0, p0, 0x18

    shr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    shr-int/lit8 v2, p0, 0x8

    and-int/lit16 v2, v2, 0xff

    and-int/lit16 v3, p0, 0xff

    invoke-static {v0, v1, v2, v3}, Lcom/ibm/icu/util/VersionInfo;->getInstance(IIII)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method private static mapFile(Ljava/io/File;)Ljava/nio/ByteBuffer;
    .locals 7

    .prologue
    .line 520
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 521
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 524
    :try_start_1
    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 526
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 534
    :goto_0
    return-object v0

    .line 526
    :catchall_0
    move-exception v0

    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    throw v0
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 529
    :catch_0
    move-exception v0

    .line 530
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 534
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 531
    :catch_1
    move-exception v0

    .line 532
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public static readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I
    .locals 11

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 573
    sget-boolean v0, Lcom/ibm/icu/impl/ICUBinary;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 574
    :cond_1
    invoke-virtual {p0, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 575
    invoke-virtual {p0, v9}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 576
    const/16 v2, -0x26

    if-ne v0, v2, :cond_2

    const/16 v0, 0x27

    if-eq v1, v0, :cond_3

    .line 577
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ICU data file error: Not an ICU data file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 580
    :cond_3
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    .line 581
    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    .line 582
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    .line 583
    if-ltz v0, :cond_4

    if-lt v8, v0, :cond_4

    if-nez v1, :cond_4

    if-eq v2, v7, :cond_5

    .line 585
    :cond_4
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_5
    if-eqz v0, :cond_7

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    :goto_0
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 589
    invoke-virtual {p0, v6}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v0

    .line 590
    invoke-virtual {p0, v10}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result v1

    .line 591
    const/16 v2, 0x14

    if-lt v1, v2, :cond_6

    add-int/lit8 v1, v1, 0x4

    if-ge v0, v1, :cond_8

    .line 592
    :cond_6
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Internal Error: Header size error"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 587
    :cond_7
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_0

    .line 596
    :cond_8
    new-array v1, v10, [B

    const/16 v2, 0x10

    .line 597
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, v1, v6

    const/16 v2, 0x11

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, v1, v8

    const/16 v2, 0x12

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, v1, v7

    const/16 v2, 0x13

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    aput-byte v2, v1, v9

    .line 599
    const/16 v2, 0xc

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    shr-int/lit8 v3, p1, 0x18

    int-to-byte v3, v3

    if-ne v2, v3, :cond_9

    const/16 v2, 0xd

    .line 600
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    shr-int/lit8 v3, p1, 0x10

    int-to-byte v3, v3

    if-ne v2, v3, :cond_9

    const/16 v2, 0xe

    .line 601
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    shr-int/lit8 v3, p1, 0x8

    int-to-byte v3, v3

    if-ne v2, v3, :cond_9

    const/16 v2, 0xf

    .line 602
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    int-to-byte v3, p1

    if-ne v2, v3, :cond_9

    if-eqz p2, :cond_a

    .line 603
    invoke-interface {p2, v1}, Lcom/ibm/icu/impl/ICUBinary$Authenticate;->isDataVersionAcceptable([B)Z

    move-result v2

    if-nez v2, :cond_a

    .line 604
    :cond_9
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ICU data file error: Header authentication failed, please check if you have a valid ICU data file"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "; data format %02x%02x%02x%02x, format version %d.%d.%d.%d"

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0xc

    .line 606
    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v6

    const/16 v5, 0xd

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v8

    const/16 v5, 0xe

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v7

    const/16 v5, 0xf

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v4, v9

    aget-byte v5, v1, v6

    and-int/lit16 v5, v5, 0xff

    .line 607
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v10

    const/4 v5, 0x5

    aget-byte v6, v1, v8

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x6

    aget-byte v6, v1, v7

    and-int/lit16 v6, v6, 0xff

    .line 608
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x7

    aget-byte v1, v1, v9

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v5

    .line 605
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 611
    :cond_a
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 612
    const/16 v0, 0x14

    .line 613
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    const/16 v1, 0x15

    .line 614
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/16 v1, 0x16

    .line 615
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/16 v1, 0x17

    .line 616
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    .line 612
    return v0
.end method

.method public static readHeaderAndDataVersion(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)Lcom/ibm/icu/util/VersionInfo;
    .locals 1

    .prologue
    .line 556
    invoke-static {p0, p1, p2}, Lcom/ibm/icu/impl/ICUBinary;->readHeader(Ljava/nio/ByteBuffer;ILcom/ibm/icu/impl/ICUBinary$Authenticate;)I

    move-result v0

    invoke-static {v0}, Lcom/ibm/icu/impl/ICUBinary;->getVersionInfoFromCompactInt(I)Lcom/ibm/icu/util/VersionInfo;

    move-result-object v0

    return-object v0
.end method

.method public static skipBytes(Ljava/nio/ByteBuffer;I)V
    .locals 1

    .prologue
    .line 649
    if-lez p1, :cond_0

    .line 650
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 652
    :cond_0
    return-void
.end method

.method public static sliceWithOrder(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 2

    .prologue
    .line 693
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 694
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method
