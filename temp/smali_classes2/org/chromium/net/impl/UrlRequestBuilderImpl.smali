.class public Lorg/chromium/net/impl/UrlRequestBuilderImpl;
.super Lorg/chromium/net/ExperimentalUrlRequest$Builder;
.source "UrlRequestBuilderImpl.java"


# static fields
.field private static final ACCEPT_ENCODING:Ljava/lang/String; = "Accept-Encoding"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowDirectExecutor:Z

.field private final mCallback:Lorg/chromium/net/UrlRequest$Callback;

.field private final mCronetEngine:Lorg/chromium/net/impl/CronetEngineBase;

.field private mDisableCache:Z

.field private mDisableConnectionMigration:Z

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private mMethod:Ljava/lang/String;

.field private mPriority:I

.field private mRequestAnnotations:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;

.field private mUploadDataProviderExecutor:Ljava/util/concurrent/Executor;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;Lorg/chromium/net/impl/CronetEngineBase;)V
    .locals 2

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/chromium/net/ExperimentalUrlRequest$Builder;-><init>()V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mRequestHeaders:Ljava/util/ArrayList;

    .line 47
    const/4 v0, 0x3

    iput v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mPriority:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mAllowDirectExecutor:Z

    .line 72
    if-nez p1, :cond_0

    .line 73
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "URL is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_0
    if-nez p2, :cond_1

    .line 76
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Callback is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_1
    if-nez p3, :cond_2

    .line 79
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Executor is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_2
    if-nez p4, :cond_3

    .line 82
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "CronetEngine is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_3
    iput-object p1, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mUrl:Ljava/lang/String;

    .line 85
    iput-object p2, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mCallback:Lorg/chromium/net/UrlRequest$Callback;

    .line 86
    iput-object p3, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mExecutor:Ljava/util/concurrent/Executor;

    .line 87
    iput-object p4, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mCronetEngine:Lorg/chromium/net/impl/CronetEngineBase;

    .line 88
    return-void
.end method


# virtual methods
.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lorg/chromium/net/impl/UrlRequestBuilderImpl;
    .locals 3

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 102
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Invalid header name."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    if-nez p2, :cond_1

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Invalid header value."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    const-string/jumbo v0, "Accept-Encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 108
    sget-object v0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "It\'s not necessary to set Accept-Encoding on requests - cronet will do this automatically for you, and setting it yourself has no effect. See https://crbug.com/581399 for details."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    :goto_0
    return-object p0

    .line 114
    :cond_2
    iget-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mRequestHeaders:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public bridge synthetic addRequestAnnotation(Ljava/lang/Object;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->addRequestAnnotation(Ljava/lang/Object;)Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public addRequestAnnotation(Ljava/lang/Object;)Lorg/chromium/net/impl/UrlRequestBuilderImpl;
    .locals 2

    .prologue
    .line 161
    if-nez p1, :cond_0

    .line 162
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Invalid metrics annotation."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    .line 167
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 168
    return-object p0
.end method

.method public bridge synthetic allowDirectExecutor()Lorg/chromium/net/ExperimentalUrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->allowDirectExecutor()Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic allowDirectExecutor()Lorg/chromium/net/UrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->allowDirectExecutor()Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public allowDirectExecutor()Lorg/chromium/net/impl/UrlRequestBuilderImpl;
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mAllowDirectExecutor:Z

    .line 156
    return-object p0
.end method

.method public bridge synthetic build()Lorg/chromium/net/ExperimentalUrlRequest;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->build()Lorg/chromium/net/impl/UrlRequestBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lorg/chromium/net/UrlRequest;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->build()Lorg/chromium/net/impl/UrlRequestBase;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/chromium/net/impl/UrlRequestBase;
    .locals 9

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mCronetEngine:Lorg/chromium/net/impl/CronetEngineBase;

    iget-object v1, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mUrl:Ljava/lang/String;

    iget-object v2, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mCallback:Lorg/chromium/net/UrlRequest$Callback;

    iget-object v3, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mExecutor:Ljava/util/concurrent/Executor;

    iget v4, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mPriority:I

    iget-object v5, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mRequestAnnotations:Ljava/util/Collection;

    iget-boolean v6, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mDisableCache:Z

    iget-boolean v7, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mDisableConnectionMigration:Z

    iget-boolean v8, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mAllowDirectExecutor:Z

    invoke-virtual/range {v0 .. v8}, Lorg/chromium/net/impl/CronetEngineBase;->createRequest(Ljava/lang/String;Lorg/chromium/net/UrlRequest$Callback;Ljava/util/concurrent/Executor;ILjava/util/Collection;ZZZ)Lorg/chromium/net/impl/UrlRequestBase;

    move-result-object v2

    .line 177
    iget-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mMethod:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mMethod:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/chromium/net/impl/UrlRequestBase;->setHttpMethod(Ljava/lang/String;)V

    .line 180
    :cond_0
    iget-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mRequestHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 181
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lorg/chromium/net/impl/UrlRequestBase;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 183
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;

    if-eqz v0, :cond_2

    .line 184
    iget-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;

    iget-object v1, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mUploadDataProviderExecutor:Ljava/util/concurrent/Executor;

    invoke-virtual {v2, v0, v1}, Lorg/chromium/net/impl/UrlRequestBase;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)V

    .line 186
    :cond_2
    return-object v2
.end method

.method public bridge synthetic disableCache()Lorg/chromium/net/ExperimentalUrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->disableCache()Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic disableCache()Lorg/chromium/net/UrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->disableCache()Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public disableCache()Lorg/chromium/net/impl/UrlRequestBuilderImpl;
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mDisableCache:Z

    .line 121
    return-object p0
.end method

.method public bridge synthetic disableConnectionMigration()Lorg/chromium/net/ExperimentalUrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->disableConnectionMigration()Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public disableConnectionMigration()Lorg/chromium/net/impl/UrlRequestBuilderImpl;
    .locals 1

    .prologue
    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mDisableConnectionMigration:Z

    .line 127
    return-object p0
.end method

.method public setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;
    .locals 2

    .prologue
    .line 92
    if-nez p1, :cond_0

    .line 93
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Method is required."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_0
    iput-object p1, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mMethod:Ljava/lang/String;

    .line 96
    return-object p0
.end method

.method public bridge synthetic setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/UrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->setHttpMethod(Ljava/lang/String;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPriority(I)Lorg/chromium/net/ExperimentalUrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->setPriority(I)Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setPriority(I)Lorg/chromium/net/UrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->setPriority(I)Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public setPriority(I)Lorg/chromium/net/impl/UrlRequestBuilderImpl;
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mPriority:I

    .line 133
    return-object p0
.end method

.method public bridge synthetic setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/ExperimentalUrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/UrlRequest$Builder;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0, p1, p2}, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/impl/UrlRequestBuilderImpl;

    move-result-object v0

    return-object v0
.end method

.method public setUploadDataProvider(Lorg/chromium/net/UploadDataProvider;Ljava/util/concurrent/Executor;)Lorg/chromium/net/impl/UrlRequestBuilderImpl;
    .locals 2

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Invalid UploadDataProvider."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_0
    if-nez p2, :cond_1

    .line 143
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "Invalid UploadDataProvider Executor."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_1
    iget-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mMethod:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 146
    const-string/jumbo v0, "POST"

    iput-object v0, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mMethod:Ljava/lang/String;

    .line 148
    :cond_2
    iput-object p1, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mUploadDataProvider:Lorg/chromium/net/UploadDataProvider;

    .line 149
    iput-object p2, p0, Lorg/chromium/net/impl/UrlRequestBuilderImpl;->mUploadDataProviderExecutor:Ljava/util/concurrent/Executor;

    .line 150
    return-object p0
.end method
