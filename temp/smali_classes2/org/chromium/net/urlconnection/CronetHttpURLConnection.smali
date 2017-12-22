.class public Lorg/chromium/net/urlconnection/CronetHttpURLConnection;
.super Ljava/net/HttpURLConnection;
.source "CronetHttpURLConnection.java"


# static fields
.field private static final CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCronetEngine:Lorg/chromium/net/CronetEngine;

.field private mException:Lorg/chromium/net/CronetException;

.field private mHasResponseHeadersOrCompleted:Z

.field private mInputStream:Lorg/chromium/net/urlconnection/CronetInputStream;

.field private final mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

.field private mOnRedirectCalled:Z

.field private mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

.field private mRequest:Lorg/chromium/net/UrlRequest;

.field private final mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResponseHeadersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResponseHeadersMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mResponseInfo:Lorg/chromium/net/UrlResponseInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-class v0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;Lorg/chromium/net/CronetEngine;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Ljava/net/HttpURLConnection;-><init>(Ljava/net/URL;)V

    .line 56
    iput-object p2, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mCronetEngine:Lorg/chromium/net/CronetEngine;

    .line 57
    new-instance v0, Lorg/chromium/net/urlconnection/MessageLoop;

    invoke-direct {v0}, Lorg/chromium/net/urlconnection/MessageLoop;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    .line 58
    new-instance v0, Lorg/chromium/net/urlconnection/CronetInputStream;

    invoke-direct {v0, p0}, Lorg/chromium/net/urlconnection/CronetInputStream;-><init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mInputStream:Lorg/chromium/net/urlconnection/CronetInputStream;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    .line 60
    return-void
.end method

.method static synthetic access$002(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Lorg/chromium/net/UrlResponseInfo;)Lorg/chromium/net/UrlResponseInfo;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    return-object p1
.end method

.method static synthetic access$1000(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/urlconnection/CronetInputStream;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mInputStream:Lorg/chromium/net/urlconnection/CronetInputStream;

    return-object v0
.end method

.method static synthetic access$102(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mHasResponseHeadersOrCompleted:Z

    return p1
.end method

.method static synthetic access$1100(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/urlconnection/CronetOutputStream;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    return-object v0
.end method

.method static synthetic access$200(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/urlconnection/MessageLoop;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    return-object v0
.end method

.method static synthetic access$302(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Z)Z
    .locals 0

    .prologue
    .line 36
    iput-boolean p1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOnRedirectCalled:Z

    return p1
.end method

.method static synthetic access$400(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Ljava/net/URL;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->url:Ljava/net/URL;

    return-object v0
.end method

.method static synthetic access$500(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->instanceFollowRedirects:Z

    return v0
.end method

.method static synthetic access$602(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Ljava/net/URL;)Ljava/net/URL;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->url:Ljava/net/URL;

    return-object p1
.end method

.method static synthetic access$700(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->instanceFollowRedirects:Z

    return v0
.end method

.method static synthetic access$800(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/UrlRequest;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequest:Lorg/chromium/net/UrlRequest;

    return-object v0
.end method

.method static synthetic access$900(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)Lorg/chromium/net/CronetException;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mException:Lorg/chromium/net/CronetException;

    return-object v0
.end method

.method static synthetic access$902(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;Lorg/chromium/net/CronetException;)Lorg/chromium/net/CronetException;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mException:Lorg/chromium/net/CronetException;

    return-object p1
.end method

.method private checkHasResponseHeaders()V
    .locals 2

    .prologue
    .line 544
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mHasResponseHeadersOrCompleted:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "No response."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 545
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mException:Lorg/chromium/net/CronetException;

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mException:Lorg/chromium/net/CronetException;

    throw v0

    .line 547
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    if-nez v0, :cond_2

    .line 548
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Response info is null when there is no exception."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 551
    :cond_2
    return-void
.end method

.method private findRequestProperty(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 426
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 427
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 428
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    :goto_1
    return v1

    .line 426
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 432
    :cond_1
    const/4 v1, -0x1

    goto :goto_1
.end method

.method private getAllHeaders()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 580
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersMap:Ljava/util/Map;

    .line 592
    :goto_0
    return-object v0

    .line 582
    :cond_0
    new-instance v2, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v2, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 583
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 584
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 585
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 586
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 588
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 591
    :cond_2
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersMap:Ljava/util/Map;

    .line 592
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersMap:Ljava/util/Map;

    goto :goto_0
.end method

.method private getAllHeadersAsList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 596
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 597
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    .line 608
    :goto_0
    return-object v0

    .line 599
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    .line 600
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 602
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "Content-Encoding"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 603
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v3, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/util/Map$Entry;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 607
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    .line 608
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseHeadersList:Ljava/util/List;

    goto :goto_0
.end method

.method private getHeaderFieldEntry(I)Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 558
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 562
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getAllHeadersAsList()Ljava/util/List;

    move-result-object v1

    .line 563
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lt p1, v2, :cond_0

    .line 566
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    goto :goto_0

    .line 559
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private getResponse()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/CronetOutputStream;->checkReceivedEnoughContent()V

    .line 525
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->isChunkedUpload()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/CronetOutputStream;->close()V

    .line 530
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mHasResponseHeadersOrCompleted:Z

    if-nez v0, :cond_1

    .line 531
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->startRequest()V

    .line 533
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/MessageLoop;->loop()V

    .line 535
    :cond_1
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->checkHasResponseHeaders()V

    .line 536
    return-void
.end method

.method private getStreamingModeContentLength()J
    .locals 6

    .prologue
    .line 232
    iget v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->fixedContentLength:I

    int-to-long v2, v0

    .line 236
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 237
    const-string/jumbo v1, "fixedContentLengthLong"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 239
    const-wide/16 v4, -0x1

    cmp-long v4, v0, v4

    if-eqz v4, :cond_0

    .line 245
    :goto_0
    return-wide v0

    .line 242
    :catch_0
    move-exception v0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    move-wide v0, v2

    goto :goto_0
.end method

.method private isChunkedUpload()Z
    .locals 1

    .prologue
    .line 574
    iget v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->chunkLength:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final setRequestPropertyInternal(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    .prologue
    .line 332
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot modify request property after connection is made."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 336
    :cond_0
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->findRequestProperty(Ljava/lang/String;)I

    move-result v0

    .line 337
    if-ltz v0, :cond_1

    .line 338
    if-eqz p3, :cond_2

    .line 339
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 349
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    return-void

    .line 343
    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cannot add multiple headers of the same key, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ". crbug.com/432719."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private startRequest()V
    .locals 6

    .prologue
    .line 252
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 295
    :goto_0
    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mCronetEngine:Lorg/chromium/net/CronetEngine;

    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;

    invoke-direct {v2, p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection$CronetUrlRequestCallback;-><init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)V

    iget-object v3, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    invoke-virtual {v0, v1, v2, v3}, Lorg/chromium/net/CronetEngine;->newUrlRequestBuilder(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    move-result-object v2

    .line 257
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->doOutput:Z

    if-eqz v0, :cond_4

    .line 258
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->method:Ljava/lang/String;

    const-string/jumbo v1, "GET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    const-string/jumbo v0, "POST"

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->method:Ljava/lang/String;

    .line 261
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    if-eqz v0, :cond_5

    .line 262
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/CronetOutputStream;->getUploadDataProvider()Lorg/chromium/net/UploadDataProvider;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    invoke-virtual {v2, v0, v1}, Lorg/chromium/net/UrlRequest$Builder;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;

    .line 264
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->isChunkedUpload()Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    const-string/jumbo v0, "Content-Length"

    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    invoke-virtual {v1}, Lorg/chromium/net/urlconnection/CronetOutputStream;->getUploadDataProvider()Lorg/chromium/net/UploadDataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lorg/chromium/net/UploadDataProvider;->getLength()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    invoke-virtual {v0}, Lorg/chromium/net/urlconnection/CronetOutputStream;->setConnected()V

    .line 277
    :cond_3
    :goto_1
    const-string/jumbo v0, "Content-Type"

    invoke-virtual {p0, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 278
    const-string/jumbo v0, "Content-Type"

    const-string/jumbo v1, "application/x-www-form-urlencoded"

    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_4
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 283
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/chromium/net/UrlRequest$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    goto :goto_2

    .line 272
    :cond_5
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 273
    const-string/jumbo v0, "Content-Length"

    const-string/jumbo v1, "0"

    invoke-virtual {p0, v0, v1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 285
    :cond_6
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getUseCaches()Z

    move-result v0

    if-nez v0, :cond_7

    .line 286
    invoke-virtual {v2}, Lorg/chromium/net/UrlRequest$Builder;->disableCache()Lorg/chromium/net/UrlRequest$Builder;

    .line 289
    :cond_7
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->method:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/chromium/net/UrlRequest$Builder;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;

    .line 291
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    .line 292
    invoke-virtual {v2}, Lorg/chromium/net/UrlRequest$Builder;->build()Lorg/chromium/net/UrlRequest;

    move-result-object v0

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequest:Lorg/chromium/net/UrlRequest;

    .line 294
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequest:Lorg/chromium/net/UrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->start()V

    goto/16 :goto_0
.end method


# virtual methods
.method public final addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 319
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->setRequestPropertyInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 320
    return-void
.end method

.method public connect()V
    .locals 0

    .prologue
    .line 69
    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    .line 72
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->startRequest()V

    .line 73
    return-void
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequest:Lorg/chromium/net/UrlRequest;

    invoke-virtual {v0}, Lorg/chromium/net/UrlRequest;->cancel()V

    .line 85
    :cond_0
    return-void
.end method

.method public getErrorStream()Ljava/io/InputStream;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 304
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v1}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v1

    const/16 v2, 0x190

    if-lt v1, v2, :cond_0

    .line 309
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mInputStream:Lorg/chromium/net/urlconnection/CronetInputStream;

    .line 311
    :cond_0
    :goto_0
    return-object v0

    .line 305
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getHeaderField(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getHeaderFieldEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 158
    if-nez v0, :cond_0

    .line 159
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getHeaderField(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 126
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getAllHeaders()Ljava/util/Map;

    move-result-object v1

    .line 131
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 135
    :goto_0
    return-object v0

    .line 134
    :cond_0
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 135
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    .line 127
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final getHeaderFieldKey(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getHeaderFieldEntry(I)Ljava/util/Map$Entry;

    move-result-object v0

    .line 145
    if-nez v0, :cond_0

    .line 146
    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getHeaderFields()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 111
    :try_start_0
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getAllHeaders()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 2

    .prologue
    .line 175
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V

    .line 176
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->instanceFollowRedirects:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOnRedirectCalled:Z

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Cannot read response body of a redirect."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    const/16 v1, 0x190

    if-lt v0, v1, :cond_1

    .line 182
    new-instance v0, Ljava/io/FileNotFoundException;

    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->url:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mInputStream:Lorg/chromium/net/urlconnection/CronetInputStream;

    return-object v0
.end method

.method getMoreData(Ljava/nio/ByteBuffer;)V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequest:Lorg/chromium/net/UrlRequest;

    invoke-virtual {v0, p1}, Lorg/chromium/net/UrlRequest;->read(Ljava/nio/ByteBuffer;)V

    .line 418
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    invoke-virtual {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getReadTimeout()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/chromium/net/urlconnection/MessageLoop;->loop(I)V

    .line 419
    return-void
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 4

    .prologue
    .line 193
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->doOutput:Z

    if-eqz v0, :cond_1

    .line 194
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 195
    new-instance v0, Ljava/net/ProtocolException;

    const-string/jumbo v1, "Cannot write to OutputStream after receiving response."

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->isChunkedUpload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 199
    new-instance v0, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;

    iget v1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->chunkLength:I

    iget-object v2, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    invoke-direct {v0, p0, v1, v2}, Lorg/chromium/net/urlconnection/CronetChunkedOutputStream;-><init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;ILorg/chromium/net/urlconnection/MessageLoop;)V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    .line 201
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->startRequest()V

    .line 224
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    return-object v0

    .line 203
    :cond_2
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getStreamingModeContentLength()J

    move-result-wide v0

    .line 204
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    .line 205
    new-instance v2, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;

    iget-object v3, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mMessageLoop:Lorg/chromium/net/urlconnection/MessageLoop;

    invoke-direct {v2, p0, v0, v1, v3}, Lorg/chromium/net/urlconnection/CronetFixedModeOutputStream;-><init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;JLorg/chromium/net/urlconnection/MessageLoop;)V

    iput-object v2, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    .line 208
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->startRequest()V

    goto :goto_0

    .line 213
    :cond_3
    sget-object v0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Outputstream is being buffered in memory."

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string/jumbo v0, "Content-Length"

    invoke-virtual {p0, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 215
    if-nez v0, :cond_4

    .line 216
    new-instance v0, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-direct {v0, p0}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;-><init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;)V

    iput-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    goto :goto_0

    .line 218
    :cond_4
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 219
    new-instance v2, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;

    invoke-direct {v2, p0, v0, v1}, Lorg/chromium/net/urlconnection/CronetBufferedOutputStream;-><init>(Lorg/chromium/net/urlconnection/CronetHttpURLConnection;J)V

    iput-object v2, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mOutputStream:Lorg/chromium/net/urlconnection/CronetOutputStream;

    goto :goto_0
.end method

.method public getRequestProperties()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 358
    iget-boolean v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->connected:Z

    if-eqz v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Cannot access request headers after connection is set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :cond_0
    new-instance v1, Ljava/util/TreeMap;

    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v1, v0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    .line 364
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 365
    iget-object v3, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 367
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Should not have multiple values."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 370
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 371
    iget-object v4, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 372
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 375
    :cond_2
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getRequestProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 384
    invoke-direct {p0, p1}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->findRequestProperty(Ljava/lang/String;)I

    move-result v0

    .line 385
    if-ltz v0, :cond_0

    .line 386
    iget-object v1, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mRequestHeaders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 388
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V

    .line 102
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusCode()I

    move-result v0

    return v0
.end method

.method public getResponseMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->getResponse()V

    .line 93
    iget-object v0, p0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->mResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    invoke-virtual {v0}, Lorg/chromium/net/UrlResponseInfo;->getHttpStatusText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setConnectTimeout(I)V
    .locals 2

    .prologue
    .line 406
    sget-object v0, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setConnectTimeout is not supported by CronetHttpURLConnection"

    invoke-static {v0, v1}, Lorg/chromium/base/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    return-void
.end method

.method public final setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/chromium/net/urlconnection/CronetHttpURLConnection;->setRequestPropertyInternal(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 328
    return-void
.end method

.method public usingProxy()Z
    .locals 1

    .prologue
    .line 397
    const/4 v0, 0x0

    return v0
.end method
