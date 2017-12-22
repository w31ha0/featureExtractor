.class public Lorg/chromium/net/impl/RequestFinishedInfoImpl;
.super Lorg/chromium/net/RequestFinishedInfo;
.source "RequestFinishedInfoImpl.java"


# instance fields
.field private final mAnnotations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mException:Lorg/chromium/net/CronetException;

.field private final mFinishedReason:I

.field private final mMetrics:Lorg/chromium/net/RequestFinishedInfo$Metrics;

.field private final mResponseInfo:Lorg/chromium/net/UrlResponseInfo;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Collection;Lorg/chromium/net/RequestFinishedInfo$Metrics;ILorg/chromium/net/UrlResponseInfo;Lorg/chromium/net/CronetException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/chromium/net/RequestFinishedInfo$Metrics;",
            "I",
            "Lorg/chromium/net/UrlResponseInfo;",
            "Lorg/chromium/net/CronetException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/chromium/net/RequestFinishedInfo;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mUrl:Ljava/lang/String;

    .line 43
    iput-object p2, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mAnnotations:Ljava/util/Collection;

    .line 44
    iput-object p3, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mMetrics:Lorg/chromium/net/RequestFinishedInfo$Metrics;

    .line 45
    iput p4, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mFinishedReason:I

    .line 46
    iput-object p5, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    .line 47
    iput-object p6, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mException:Lorg/chromium/net/CronetException;

    .line 48
    return-void
.end method


# virtual methods
.method public getAnnotations()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mAnnotations:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 58
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mAnnotations:Ljava/util/Collection;

    goto :goto_0
.end method

.method public getException()Lorg/chromium/net/CronetException;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mException:Lorg/chromium/net/CronetException;

    return-object v0
.end method

.method public getFinishedReason()I
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mFinishedReason:I

    return v0
.end method

.method public getMetrics()Lorg/chromium/net/RequestFinishedInfo$Metrics;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mMetrics:Lorg/chromium/net/RequestFinishedInfo$Metrics;

    return-object v0
.end method

.method public getResponseInfo()Lorg/chromium/net/UrlResponseInfo;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mResponseInfo:Lorg/chromium/net/UrlResponseInfo;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/chromium/net/impl/RequestFinishedInfoImpl;->mUrl:Ljava/lang/String;

    return-object v0
.end method
