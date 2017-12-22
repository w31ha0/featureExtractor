.class public Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;
.super Lcom/android/volley/Request;
.source "DownloadAndCacheRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/volley/Request",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final RESOURCE_BACKOFF_MULT:F = 2.0f

.field private static final RESOURCE_MAX_RETRIES:I = 0x2

.field public static final TAG:Ljava/lang/String; = "DownloadAndCacheRequest"


# instance fields
.field private final mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

.field private mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;Lcom/android/volley/Response$ErrorListener;ILcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;)V
    .locals 3

    .prologue
    .line 41
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p3}, Lcom/android/volley/Request;-><init>(ILjava/lang/String;Lcom/android/volley/Response$ErrorListener;)V

    .line 42
    iput-object p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    .line 43
    iput-object p5, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    .line 44
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->setShouldCache(Z)V

    .line 45
    new-instance v0, Lcom/android/volley/DefaultRetryPolicy;

    const/4 v1, 0x2

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v0, p4, v1, v2}, Lcom/android/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->setRetryPolicy(Lcom/android/volley/RetryPolicy;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected deliverResponse(Ljava/lang/Integer;)V
    .locals 9

    .prologue
    .line 62
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->mVolleyCacheWrapper:Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->getCacheKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper;->getEntryMetaData(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;

    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->mCallback:Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->getByteOffset()J

    move-result-wide v4

    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/resfetcher/VolleyCacheWrapper$CachedResourceMetaData;->getByteLength()J

    move-result-wide v6

    sget-object v8, Lcom/netflix/mediaclient/android/app/CommonStatus;->OK:Lcom/netflix/mediaclient/android/app/NetflixImmutableStatus;

    invoke-interface/range {v1 .. v8}, Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;->onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V

    .line 66
    :cond_0
    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->deliverResponse(Ljava/lang/Integer;)V

    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/resfetcher/volley/DownloadAndCacheRequest;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->getPathFromUri(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/android/volley/Request$Priority;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/volley/Request$Priority;->NORMAL:Lcom/android/volley/Request$Priority;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/volley/NetworkResponse;",
            ")",
            "Lcom/android/volley/Response",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    const-string/jumbo v0, "Request to cache response is not allowed because the response has no-cache param in header"

    .line 53
    const-string/jumbo v1, "DownloadAndCacheRequest"

    invoke-static {v1, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, v0}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/volley/Response;->error(Lcom/android/volley/VolleyError;)Lcom/android/volley/Response;

    move-result-object v0

    .line 56
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p1, Lcom/android/volley/NetworkResponse;->data:[B

    array-length v0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 57
    invoke-static {p1}, Lcom/android/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/android/volley/NetworkResponse;)Lcom/android/volley/Cache$Entry;

    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/android/volley/Response;->success(Ljava/lang/Object;Lcom/android/volley/Cache$Entry;)Lcom/android/volley/Response;

    move-result-object v0

    goto :goto_0
.end method
