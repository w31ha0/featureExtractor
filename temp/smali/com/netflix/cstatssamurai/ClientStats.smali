.class public Lcom/netflix/cstatssamurai/ClientStats;
.super Ljava/lang/Object;
.source "ClientStats.java"


# static fields
.field public static final PERCENTAGE_OF_DEVICES_TO_ALLOCATE:I = 0x64

.field private static final categoryHostnamesPackedConfig:Ljava/lang/String; = "[{\"category\":\"drop\",\"description\":\"ignore / don\\u0027t bucket, unless something above recursively resolves here\",\"remark\":\"also include arbitrary netflix + ccTLDs\",\"hostnamepatterns\":[\"netflix\\\\.net\",\"hailmary\\\\.netflix\\\\.com\",\"www\\\\.netflix\\\\.com\",\"nflxso\\\\.net\"]},{\"category\":\"awsapi\",\"description\":\"AWS API Calls\",\"hostnamepatterns\":[\"api-global\\\\.netflix\\\\.com\",\"api-staging\\\\.netflix\\\\.com\",\"apis\\\\.netflix\\\\.com\",\"search\\\\.netflix\\\\.ca\",\"oca-api\\\\.netflix\\\\.com\"]},{\"category\":\"awslog\",\"description\":\"AWS logging requests\",\"hostnamepatterns\":[\"ichnaea\\\\.netflix\\\\.com\",\"customerevents\\\\.netflix\\\\.com\",\"presentationtracking\\\\.netflix\\\\.com\",\"beacon\\\\.netflix\\\\.com\"]},{\"category\":\"awsboot\",\"description\":\"AWS Boot Requests for client startup\",\"hostnamepatterns\":[\"uiboot\\\\.netflix\\\\.com\",\"appboot\\\\.netflix\\\\.com\"]},{\"category\":\"awslicense\",\"description\":\"AWS License Request traffic\",\"hostnamepatterns\":[\".*\\\\.nrd\\\\.netflix\\\\.com\",\"nrdp\\\\.nccp\\\\.netflix\\\\.com\",\"android\\\\.nccp\\\\.netflix\\\\.com\",\"ios\\\\.nccp\\\\.netflix\\\\.com\",\"cbp\\\\.nccp\\\\.netflix\\\\.com\",\".*\\\\.nccp\\\\.netflix\\\\.com\"]},{\"category\":\"aws\",\"description\":\"General AWS traffic\",\"hostnamepatterns\":[\"account\\\\.netflix\\\\.com\",\"signup\\\\.netflix\\\\.com\",\"fast\\\\.netflix\\\\.com\"]},{\"category\":\"akamai\",\"description\":\"Akamai CDN Resources\",\"hostnamepatterns\":[\"secure\\\\.netflix\\\\.com\",\".*\\\\.netflix\\\\.ca\",\".*\\\\.nflximg\\\\.net\",\".*\\\\.nflximg\\\\.com\",\".*\\\\.nflxext\\\\.com\"]},{\"category\":\"ocso\",\"description\":\"Open Connect small objects\",\"hostnamepatterns\":[\".*\\\\.nflxso\\\\.net\"]},{\"category\":\"ocftl\",\"description\":\"Open Connect FTL\",\"hostnamepatterns\":[\"ftl\\\\.netflix\\\\.com\",\"api-ftl\\\\.netflix\\\\.com\"]},{\"category\":\"oc\",\"description\":\"General Open Connect\",\"remark\":\"might catch too much, but don\\u0027t have a definitive list of OC hostnames\",\"hostnamepatterns\":[\".*\\\\.nflxvideo\\\\.net\",\".*\"]},{\"ignore\":true,\"date\":2.0170214E7,\"rev\":1.0}]"

.field private static instance:Lcom/netflix/cstatssamurai/ClientStats;


# instance fields
.field private final MAX_LRU_CACHE_SIZE:I

.field private activeNetworkType:Ljava/lang/String;

.field private final esnRandomizationWhitelist:[Ljava/lang/String;

.field private esnRandomizationWhitelistList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private histogramList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/cstats/ExponentialHistogram",
            "<",
            "Ljava/lang/Integer;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private histogramTypes:[Ljava/lang/String;

.field private histogramTypesList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private hostnameCategoryResolver:Lcom/netflix/cstatssamurai/HostnameCategoryResolver;

.field private isEnabled:Z

.field private journal:Lcom/netflix/cstatssamurai/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/netflix/cstatssamurai/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private lastSnapshotHashCode:I

.field private final networkTypeTranslation:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 8

    .prologue
    const/16 v7, 0x64

    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v2, "RANDOM-13184FEF-8ABF-4BBA-B995-E07DD7533917"

    aput-object v2, v0, v1

    const-string/jumbo v2, "NFANDROIDD-PRV-P-LGE==NEXUS=5X-5911-C0A895E8B085608B2E11E44BB98763AB2395CE32EC6823C9CF3A08560119B593"

    aput-object v2, v0, v4

    const/4 v2, 0x2

    const-string/jumbo v3, "NFANDROID1-PRV-P-LGE==NEXUS=5X-5911-F1DFFFD908041FC15D630BBC3598EAF950856E85ADBCD155910CB9BD31EEAC51"

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->esnRandomizationWhitelist:[Ljava/lang/String;

    .line 35
    iput v7, p0, Lcom/netflix/cstatssamurai/ClientStats;->MAX_LRU_CACHE_SIZE:I

    .line 41
    invoke-static {}, Lcom/netflix/cstatssamurai/ClientStats;->initRecognizedNetworkTypes()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->networkTypeTranslation:Ljava/util/Map;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->activeNetworkType:Ljava/lang/String;

    .line 85
    iput-boolean v4, p0, Lcom/netflix/cstatssamurai/ClientStats;->isEnabled:Z

    .line 87
    const-string/jumbo v0, "[{\"category\":\"drop\",\"description\":\"ignore / don\\u0027t bucket, unless something above recursively resolves here\",\"remark\":\"also include arbitrary netflix + ccTLDs\",\"hostnamepatterns\":[\"netflix\\\\.net\",\"hailmary\\\\.netflix\\\\.com\",\"www\\\\.netflix\\\\.com\",\"nflxso\\\\.net\"]},{\"category\":\"awsapi\",\"description\":\"AWS API Calls\",\"hostnamepatterns\":[\"api-global\\\\.netflix\\\\.com\",\"api-staging\\\\.netflix\\\\.com\",\"apis\\\\.netflix\\\\.com\",\"search\\\\.netflix\\\\.ca\",\"oca-api\\\\.netflix\\\\.com\"]},{\"category\":\"awslog\",\"description\":\"AWS logging requests\",\"hostnamepatterns\":[\"ichnaea\\\\.netflix\\\\.com\",\"customerevents\\\\.netflix\\\\.com\",\"presentationtracking\\\\.netflix\\\\.com\",\"beacon\\\\.netflix\\\\.com\"]},{\"category\":\"awsboot\",\"description\":\"AWS Boot Requests for client startup\",\"hostnamepatterns\":[\"uiboot\\\\.netflix\\\\.com\",\"appboot\\\\.netflix\\\\.com\"]},{\"category\":\"awslicense\",\"description\":\"AWS License Request traffic\",\"hostnamepatterns\":[\".*\\\\.nrd\\\\.netflix\\\\.com\",\"nrdp\\\\.nccp\\\\.netflix\\\\.com\",\"android\\\\.nccp\\\\.netflix\\\\.com\",\"ios\\\\.nccp\\\\.netflix\\\\.com\",\"cbp\\\\.nccp\\\\.netflix\\\\.com\",\".*\\\\.nccp\\\\.netflix\\\\.com\"]},{\"category\":\"aws\",\"description\":\"General AWS traffic\",\"hostnamepatterns\":[\"account\\\\.netflix\\\\.com\",\"signup\\\\.netflix\\\\.com\",\"fast\\\\.netflix\\\\.com\"]},{\"category\":\"akamai\",\"description\":\"Akamai CDN Resources\",\"hostnamepatterns\":[\"secure\\\\.netflix\\\\.com\",\".*\\\\.netflix\\\\.ca\",\".*\\\\.nflximg\\\\.net\",\".*\\\\.nflximg\\\\.com\",\".*\\\\.nflxext\\\\.com\"]},{\"category\":\"ocso\",\"description\":\"Open Connect small objects\",\"hostnamepatterns\":[\".*\\\\.nflxso\\\\.net\"]},{\"category\":\"ocftl\",\"description\":\"Open Connect FTL\",\"hostnamepatterns\":[\"ftl\\\\.netflix\\\\.com\",\"api-ftl\\\\.netflix\\\\.com\"]},{\"category\":\"oc\",\"description\":\"General Open Connect\",\"remark\":\"might catch too much, but don\\u0027t have a definitive list of OC hostnames\",\"hostnamepatterns\":[\".*\\\\.nflxvideo\\\\.net\",\".*\"]},{\"ignore\":true,\"date\":2.0170214E7,\"rev\":1.0}]"

    invoke-direct {p0, v0}, Lcom/netflix/cstatssamurai/ClientStats;->initHistogramList(Ljava/lang/String;)V

    .line 89
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/netflix/cstatssamurai/ClientStats;->esnRandomizationWhitelist:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->esnRandomizationWhitelistList:Ljava/util/HashMap;

    .line 90
    iget-object v2, p0, Lcom/netflix/cstatssamurai/ClientStats;->esnRandomizationWhitelist:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 91
    iget-object v5, p0, Lcom/netflix/cstatssamurai/ClientStats;->esnRandomizationWhitelistList:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    iput v1, p0, Lcom/netflix/cstatssamurai/ClientStats;->lastSnapshotHashCode:I

    .line 95
    new-instance v0, Lcom/netflix/cstatssamurai/LruCache;

    invoke-direct {v0, v7}, Lcom/netflix/cstatssamurai/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->journal:Lcom/netflix/cstatssamurai/LruCache;

    .line 96
    return-void
.end method

.method public static djb2Hash([B)I
    .locals 3

    .prologue
    .line 163
    if-nez p0, :cond_0

    .line 164
    const-string/jumbo v0, ""

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 167
    :cond_0
    const/16 v1, 0x1505

    .line 169
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    .line 170
    shl-int/lit8 v2, v1, 0x5

    add-int/2addr v1, v2

    aget-byte v2, p0, v0

    xor-int/2addr v1, v2

    .line 169
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 173
    :cond_1
    return v1
.end method

.method public static getFileAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 75
    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 76
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 79
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHistogramCategoryNameAndNetworkTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/netflix/cstatssamurai/ClientStats;
    .locals 1

    .prologue
    .line 151
    sget-object v0, Lcom/netflix/cstatssamurai/ClientStats;->instance:Lcom/netflix/cstatssamurai/ClientStats;

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lcom/netflix/cstatssamurai/ClientStats;

    invoke-direct {v0}, Lcom/netflix/cstatssamurai/ClientStats;-><init>()V

    sput-object v0, Lcom/netflix/cstatssamurai/ClientStats;->instance:Lcom/netflix/cstatssamurai/ClientStats;

    .line 155
    :cond_0
    sget-object v0, Lcom/netflix/cstatssamurai/ClientStats;->instance:Lcom/netflix/cstatssamurai/ClientStats;

    return-object v0
.end method

.method private static getZeroValueFilteredHistogramMap(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 209
    new-instance v2, Ljava/util/HashMap;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 210
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 211
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_0

    .line 212
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 215
    :cond_1
    return-object v2
.end method

.method private initHistogramList(Ljava/lang/String;)V
    .locals 13

    .prologue
    .line 105
    new-instance v0, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;

    invoke-direct {v0, p1}, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->hostnameCategoryResolver:Lcom/netflix/cstatssamurai/HostnameCategoryResolver;

    .line 106
    iget-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->hostnameCategoryResolver:Lcom/netflix/cstatssamurai/HostnameCategoryResolver;

    .line 107
    invoke-virtual {v0}, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->getCategories()[Ljava/lang/String;

    move-result-object v0

    .line 106
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ge v0, v2, :cond_0

    .line 109
    const-string/jumbo v0, "drop"

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->histogramTypesList:Ljava/util/HashMap;

    .line 113
    iget-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->hostnameCategoryResolver:Lcom/netflix/cstatssamurai/HostnameCategoryResolver;

    invoke-virtual {v0}, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->getCategories()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 114
    iget-object v5, p0, Lcom/netflix/cstatssamurai/ClientStats;->histogramTypesList:Ljava/util/HashMap;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 117
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->histogramList:Ljava/util/HashMap;

    .line 119
    iget-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->hostnameCategoryResolver:Lcom/netflix/cstatssamurai/HostnameCategoryResolver;

    invoke-virtual {v0}, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->getCategories()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 120
    sget-object v5, Lcom/netflix/cstatssamurai/HistogramNetworkType;->allTypes:[Ljava/lang/String;

    array-length v6, v5

    const/4 v0, 0x0

    :goto_2
    if-ge v0, v6, :cond_2

    aget-object v7, v5, v0

    .line 121
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 124
    new-instance v9, Lcom/netflix/cstats/ExponentialHistogram;

    const-class v10, Ljava/lang/Integer;

    invoke-direct {v9, v10}, Lcom/netflix/cstats/ExponentialHistogram;-><init>(Ljava/lang/Class;)V

    .line 126
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/16 v11, 0x7530

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x30

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/netflix/cstats/ExponentialHistogram;->initializeBucketRanges(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Integer;)V

    .line 127
    const-string/jumbo v10, "duration"

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    new-instance v9, Lcom/netflix/cstats/ExponentialHistogram;

    const-class v10, Ljava/lang/Integer;

    invoke-direct {v9, v10}, Lcom/netflix/cstats/ExponentialHistogram;-><init>(Ljava/lang/Class;)V

    .line 131
    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/high16 v11, 0x20000

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v12, 0x20

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v9, v10, v11, v12}, Lcom/netflix/cstats/ExponentialHistogram;->initializeBucketRanges(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Integer;)V

    .line 132
    const-string/jumbo v10, "size"

    invoke-virtual {v8, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-direct {p0, v4, v7}, Lcom/netflix/cstatssamurai/ClientStats;->getHistogramCategoryNameAndNetworkTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 137
    iget-object v9, p0, Lcom/netflix/cstatssamurai/ClientStats;->histogramList:Ljava/util/HashMap;

    invoke-virtual {v9, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 119
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 140
    :cond_3
    return-void
.end method

.method private static initRecognizedNetworkTypes()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string/jumbo v1, "mobile"

    const-string/jumbo v2, "m"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-string/jumbo v1, "wired"

    const-string/jumbo v2, "w"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "w"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string/jumbo v1, "wimax"

    const-string/jumbo v2, "o"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string/jumbo v1, "cdma"

    const-string/jumbo v2, "o"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string/jumbo v1, "gsm"

    const-string/jumbo v2, "o"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string/jumbo v1, "bluetooth"

    const-string/jumbo v2, "o"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object v0
.end method


# virtual methods
.method public addCount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)V
    .locals 3

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->isEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->histogramTypesList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const-string/jumbo v0, "o"

    .line 194
    iget-object v1, p0, Lcom/netflix/cstatssamurai/ClientStats;->activeNetworkType:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/netflix/cstatssamurai/ClientStats;->networkTypeTranslation:Ljava/util/Map;

    iget-object v2, p0, Lcom/netflix/cstatssamurai/ClientStats;->activeNetworkType:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    iget-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->networkTypeTranslation:Ljava/util/Map;

    iget-object v1, p0, Lcom/netflix/cstatssamurai/ClientStats;->activeNetworkType:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/netflix/cstatssamurai/ClientStats;->histogramList:Ljava/util/HashMap;

    .line 198
    invoke-direct {p0, p1, v0}, Lcom/netflix/cstatssamurai/ClientStats;->getHistogramCategoryNameAndNetworkTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 199
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/cstats/ExponentialHistogram;

    invoke-virtual {v0, p3, p4}, Lcom/netflix/cstats/ExponentialHistogram;->addCount(Ljava/lang/Number;I)V

    .line 201
    :cond_1
    return-void
.end method

.method public getJournal()Ljava/lang/String;
    .locals 6

    .prologue
    .line 276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 277
    const/16 v0, 0x7b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    const/4 v0, 0x1

    .line 279
    iget-object v1, p0, Lcom/netflix/cstatssamurai/ClientStats;->journal:Lcom/netflix/cstatssamurai/LruCache;

    invoke-virtual {v1}, Lcom/netflix/cstatssamurai/LruCache;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 280
    if-eqz v1, :cond_0

    .line 281
    const/4 v1, 0x0

    .line 285
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 283
    :cond_0
    const-string/jumbo v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 287
    :cond_1
    const/16 v0, 0x7d

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 288
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkHistogramType(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 292
    const/4 v0, 0x0

    .line 296
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 301
    iget-object v2, p0, Lcom/netflix/cstatssamurai/ClientStats;->hostnameCategoryResolver:Lcom/netflix/cstatssamurai/HostnameCategoryResolver;

    invoke-virtual {v1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->resolveCategory(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 308
    :cond_0
    :goto_0
    return-object v0

    .line 303
    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public handleConnectivityChange(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 313
    iput-object p1, p0, Lcom/netflix/cstatssamurai/ClientStats;->activeNetworkType:Ljava/lang/String;

    .line 314
    return-void
.end method

.method public isDeviceInRandomization(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 178
    .line 180
    iget-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->esnRandomizationWhitelistList:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 183
    :cond_0
    const/4 v0, 0x1

    .line 188
    return v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/netflix/cstatssamurai/ClientStats;->instance:Lcom/netflix/cstatssamurai/ClientStats;

    if-eqz v0, :cond_0

    .line 144
    const-string/jumbo v0, "[{\"category\":\"drop\",\"description\":\"ignore / don\\u0027t bucket, unless something above recursively resolves here\",\"remark\":\"also include arbitrary netflix + ccTLDs\",\"hostnamepatterns\":[\"netflix\\\\.net\",\"hailmary\\\\.netflix\\\\.com\",\"www\\\\.netflix\\\\.com\",\"nflxso\\\\.net\"]},{\"category\":\"awsapi\",\"description\":\"AWS API Calls\",\"hostnamepatterns\":[\"api-global\\\\.netflix\\\\.com\",\"api-staging\\\\.netflix\\\\.com\",\"apis\\\\.netflix\\\\.com\",\"search\\\\.netflix\\\\.ca\",\"oca-api\\\\.netflix\\\\.com\"]},{\"category\":\"awslog\",\"description\":\"AWS logging requests\",\"hostnamepatterns\":[\"ichnaea\\\\.netflix\\\\.com\",\"customerevents\\\\.netflix\\\\.com\",\"presentationtracking\\\\.netflix\\\\.com\",\"beacon\\\\.netflix\\\\.com\"]},{\"category\":\"awsboot\",\"description\":\"AWS Boot Requests for client startup\",\"hostnamepatterns\":[\"uiboot\\\\.netflix\\\\.com\",\"appboot\\\\.netflix\\\\.com\"]},{\"category\":\"awslicense\",\"description\":\"AWS License Request traffic\",\"hostnamepatterns\":[\".*\\\\.nrd\\\\.netflix\\\\.com\",\"nrdp\\\\.nccp\\\\.netflix\\\\.com\",\"android\\\\.nccp\\\\.netflix\\\\.com\",\"ios\\\\.nccp\\\\.netflix\\\\.com\",\"cbp\\\\.nccp\\\\.netflix\\\\.com\",\".*\\\\.nccp\\\\.netflix\\\\.com\"]},{\"category\":\"aws\",\"description\":\"General AWS traffic\",\"hostnamepatterns\":[\"account\\\\.netflix\\\\.com\",\"signup\\\\.netflix\\\\.com\",\"fast\\\\.netflix\\\\.com\"]},{\"category\":\"akamai\",\"description\":\"Akamai CDN Resources\",\"hostnamepatterns\":[\"secure\\\\.netflix\\\\.com\",\".*\\\\.netflix\\\\.ca\",\".*\\\\.nflximg\\\\.net\",\".*\\\\.nflximg\\\\.com\",\".*\\\\.nflxext\\\\.com\"]},{\"category\":\"ocso\",\"description\":\"Open Connect small objects\",\"hostnamepatterns\":[\".*\\\\.nflxso\\\\.net\"]},{\"category\":\"ocftl\",\"description\":\"Open Connect FTL\",\"hostnamepatterns\":[\"ftl\\\\.netflix\\\\.com\",\"api-ftl\\\\.netflix\\\\.com\"]},{\"category\":\"oc\",\"description\":\"General Open Connect\",\"remark\":\"might catch too much, but don\\u0027t have a definitive list of OC hostnames\",\"hostnamepatterns\":[\".*\\\\.nflxvideo\\\\.net\",\".*\"]},{\"ignore\":true,\"date\":2.0170214E7,\"rev\":1.0}]"

    invoke-direct {p0, v0}, Lcom/netflix/cstatssamurai/ClientStats;->initHistogramList(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->lastSnapshotHashCode:I

    .line 146
    new-instance v0, Lcom/netflix/cstatssamurai/LruCache;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lcom/netflix/cstatssamurai/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->journal:Lcom/netflix/cstatssamurai/LruCache;

    .line 148
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 204
    iput-boolean p1, p0, Lcom/netflix/cstatssamurai/ClientStats;->isEnabled:Z

    .line 205
    return-void
.end method

.method public takeSnapshot()V
    .locals 4

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/netflix/cstatssamurai/ClientStats;->toString()Ljava/lang/String;

    move-result-object v0

    .line 269
    iget v1, p0, Lcom/netflix/cstatssamurai/ClientStats;->lastSnapshotHashCode:I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 270
    iget-object v1, p0, Lcom/netflix/cstatssamurai/ClientStats;->journal:Lcom/netflix/cstatssamurai/LruCache;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/netflix/cstatssamurai/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/netflix/cstatssamurai/ClientStats;->lastSnapshotHashCode:I

    .line 273
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    .prologue
    .line 222
    const-string/jumbo v3, "{}"

    .line 225
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 226
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/cstatssamurai/ClientStats;->hostnameCategoryResolver:Lcom/netflix/cstatssamurai/HostnameCategoryResolver;

    invoke-virtual {v1}, Lcom/netflix/cstatssamurai/HostnameCategoryResolver;->getCategories()[Ljava/lang/String;

    move-result-object v7

    array-length v8, v7

    const/4 v1, 0x0

    move v5, v1

    :goto_0
    if-ge v5, v8, :cond_4

    aget-object v9, v7, v5

    .line 227
    sget-object v10, Lcom/netflix/cstatssamurai/HistogramNetworkType;->allTypes:[Ljava/lang/String;

    array-length v11, v10

    const/4 v1, 0x0

    move v4, v1

    :goto_1
    if-ge v4, v11, :cond_3

    aget-object v1, v10, v4

    .line 228
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v1}, Lcom/netflix/cstatssamurai/ClientStats;->getHistogramCategoryNameAndNetworkTypeKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 230
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 232
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/netflix/cstatssamurai/ClientStats;->histogramList:Ljava/util/HashMap;

    invoke-virtual {v1, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_0
    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 233
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15}, Lorg/json/JSONObject;-><init>()V

    .line 234
    const-string/jumbo v2, "name"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 237
    const-string/jumbo v16, "layout"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/netflix/cstats/ExponentialHistogram;

    invoke-virtual {v2}, Lcom/netflix/cstats/ExponentialHistogram;->getLayoutForJson()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/netflix/cstats/ExponentialHistogram;

    invoke-virtual {v1}, Lcom/netflix/cstats/ExponentialHistogram;->getHistogramMapForJson()Ljava/util/Map;

    move-result-object v1

    .line 239
    invoke-static {v1}, Lcom/netflix/cstatssamurai/ClientStats;->getZeroValueFilteredHistogramMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 241
    const-string/jumbo v2, "data"

    new-instance v16, Lorg/json/JSONObject;

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v16

    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 244
    invoke-virtual {v13, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 256
    :catch_0
    move-exception v1

    move-object v1, v3

    .line 262
    :goto_3
    return-object v1

    .line 248
    :cond_1
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 249
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v13}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v6, v12, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    :cond_2
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto/16 :goto_1

    .line 226
    :cond_3
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto/16 :goto_0

    .line 255
    :cond_4
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_3

    .line 258
    :catch_1
    move-exception v1

    move-object v1, v3

    goto :goto_3
.end method
