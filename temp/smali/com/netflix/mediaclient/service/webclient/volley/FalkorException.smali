.class public Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;
.super Lcom/android/volley/VolleyError;
.source "FalkorException.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-string/jumbo v0, "FalkorException"

    sput-object v0, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    .line 24
    return-void
.end method

.method public static getErrorCode(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/ErrorLogging;)Lcom/netflix/mediaclient/StatusCode;
    .locals 4

    .prologue
    .line 31
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->FALKOR_RESPONSE_PARSE_ERROR:Lcom/netflix/mediaclient/StatusCode;

    .line 33
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 84
    :goto_0
    return-object v0

    .line 41
    :cond_0
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->isWrongState(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 44
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->BROWSE_AGENT_WRONG_STATE:Lcom/netflix/mediaclient/StatusCode;

    .line 82
    :cond_1
    :goto_1
    sget-object v1, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "statusCode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_2
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->isInvalidCounty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->INVALID_COUNRTY:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 48
    :cond_3
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->isInsufficientContentError(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 49
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->INSUFFICIENT_CONTENT:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 51
    :cond_4
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->isNotAuthorized(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 52
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->USER_NOT_AUTHORIZED:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 54
    :cond_5
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->isDeletedProfile(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 55
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->DELETED_PROFILE:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 57
    :cond_6
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->isNullPointerException(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 58
    if-eqz p1, :cond_7

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Endpoint NPE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 61
    :cond_7
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->WRONG_PATH:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 63
    :cond_8
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isAlreadyInQueue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 64
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->ALREADY_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 66
    :cond_9
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->isNotInQueue(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 67
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->NOT_IN_QUEUE:Lcom/netflix/mediaclient/StatusCode;

    goto :goto_1

    .line 69
    :cond_a
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->isMapCacheError(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 70
    if-eqz p1, :cond_b

    .line 71
    const-string/jumbo v0, "map cache miss"

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 73
    :cond_b
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->SERVER_ERROR_MAP_CACHE_MISS:Lcom/netflix/mediaclient/StatusCode;

    goto/16 :goto_1

    .line 75
    :cond_c
    invoke-static {v1}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorException;->isMapError(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    if-eqz p1, :cond_d

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "map error "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/servicemgr/ErrorLogging;->logHandledException(Ljava/lang/String;)V

    .line 79
    :cond_d
    sget-object v0, Lcom/netflix/mediaclient/StatusCode;->MAP_ERROR:Lcom/netflix/mediaclient/StatusCode;

    goto/16 :goto_1
.end method

.method private static isDeletedProfile(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 111
    const-string/jumbo v0, "deleted profile"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isInsufficientContentError(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 96
    const-string/jumbo v0, "failurereason=insufficientdata"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isInvalidCounty(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 92
    const-string/jumbo v0, "failurereason=invalidcountry"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isMapCacheError(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 127
    const-string/jumbo v0, "cache miss"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "mapgetcachedlistclient failed"

    .line 128
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "cachemiss"

    .line 129
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 127
    :goto_0
    return v0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isMapError(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "map error"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static isNotAuthorized(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 107
    const-string/jumbo v0, "not authorized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "unauthorized"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isNullPointerException(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 115
    const-string/jumbo v0, "nullpointerexception"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method private static isWrongState(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 88
    const-string/jumbo v0, "wrong state"

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
