.class public Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;
.super Ljava/lang/Object;
.source "RewardedVideoCompletionRequestHandler.java"

# interfaces
.implements Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;


# static fields
.field private static final API_VERSION_KEY:Ljava/lang/String; = "&v="

.field private static final CUSTOMER_ID_KEY:Ljava/lang/String; = "&customer_id="

.field static final MAX_RETRIES:I = 0x11

.field static final REQUEST_TIMEOUT_DELAY:I = 0x3e8

.field static final RETRY_TIMES:[I

.field private static final REWARD_AMOUNT_KEY:Ljava/lang/String; = "&rca="

.field private static final REWARD_NAME_KEY:Ljava/lang/String; = "&rcn="

.field private static final SDK_VERSION_KEY:Ljava/lang/String; = "&nv="


# instance fields
.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final mRequestQueue:Lcom/mopub/volley/RequestQueue;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mRetryCount:I

.field private volatile mShouldStop:Z

.field private final mUrl:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1388
        0x2710
        0x4e20
        0x9c40
        0xea60
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "customerId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "rewardName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "rewardAmount"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 55
    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 56
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "customerId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4, "rewardName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5, "rewardAmount"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6, "handler"    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 65
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 66
    invoke-static {p4}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    invoke-static {p5}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 68
    invoke-static {p6}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 70
    invoke-static {p2, p3, p4, p5}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->appendParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    iput v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    .line 72
    iput-object p6, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mHandler:Landroid/os/Handler;

    .line 73
    invoke-static {p1}, Lcom/mopub/network/Networking;->getRequestQueue(Landroid/content/Context;)Lcom/mopub/network/MoPubRequestQueue;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    .line 74
    return-void
.end method

.method private static appendParameters(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "customerId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "rewardName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "rewardAmount"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 146
    invoke-static {p0}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 147
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 148
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&customer_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const-string v0, ""

    .line 151
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&rcn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 152
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&rca="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 153
    invoke-static {p3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&nv="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "4.15.0"

    .line 154
    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 150
    return-object v0

    .line 151
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static getTimeout(I)I
    .locals 2
    .param p0, "retryCount"    # I

    .prologue
    .line 135
    if-ltz p0, :cond_0

    sget-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 136
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    aget v0, v0, p0

    .line 138
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    sget-object v1, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->RETRY_TIMES:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static makeRewardedVideoCompletionRequest(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "url"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "customerId"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "rewardName"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "rewardAmount"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 126
    if-eqz p0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 132
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->makeRewardedVideoCompletionRequest()V

    goto :goto_0
.end method


# virtual methods
.method getRetryCount()I
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 167
    iget v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    return v0
.end method

.method getShouldStop()Z
    .locals 1
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    return v0
.end method

.method makeRewardedVideoCompletionRequest()V
    .locals 6

    .prologue
    .line 77
    iget-boolean v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    if-eqz v1, :cond_0

    .line 79
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    iget-object v2, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/mopub/volley/RequestQueue;->cancelAll(Ljava/lang/Object;)V

    .line 102
    :goto_0
    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;

    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    new-instance v2, Lcom/mopub/volley/DefaultRetryPolicy;

    iget v3, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    .line 85
    invoke-static {v3}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->getTimeout(I)I

    move-result v3

    add-int/lit16 v3, v3, -0x3e8

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Lcom/mopub/volley/DefaultRetryPolicy;-><init>(IIF)V

    invoke-direct {v0, v1, v2, p0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;-><init>(Ljava/lang/String;Lcom/mopub/volley/RetryPolicy;Lcom/mopub/mobileads/RewardedVideoCompletionRequest$RewardedVideoCompletionRequestListener;)V

    .line 87
    .local v0, "rewardedVideoCompletionRequest":Lcom/mopub/mobileads/RewardedVideoCompletionRequest;
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/RewardedVideoCompletionRequest;->setTag(Ljava/lang/Object;)Lcom/mopub/volley/Request;

    .line 88
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRequestQueue:Lcom/mopub/volley/RequestQueue;

    invoke-virtual {v1, v0}, Lcom/mopub/volley/RequestQueue;->add(Lcom/mopub/volley/Request;)Lcom/mopub/volley/Request;

    .line 90
    iget v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 91
    const-string v1, "Exceeded number of retries for rewarded video completion request."

    invoke-static {v1}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    iget-object v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;

    invoke-direct {v2, p0}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler$1;-><init>(Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;)V

    iget v3, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    .line 100
    invoke-static {v3}, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->getTimeout(I)I

    move-result v3

    int-to-long v4, v3

    .line 95
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 101
    iget v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    goto :goto_0
.end method

.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 2
    .param p1, "volleyError"    # Lcom/mopub/volley/VolleyError;

    .prologue
    .line 114
    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/mopub/volley/VolleyError;->networkResponse:Lcom/mopub/volley/NetworkResponse;

    iget v0, v0, Lcom/mopub/volley/NetworkResponse;->statusCode:I

    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    .line 117
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    .line 119
    :cond_1
    return-void
.end method

.method public onResponse(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/Integer;

    .prologue
    .line 107
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x1f4

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x258

    if-lt v0, v1, :cond_1

    .line 108
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mShouldStop:Z

    .line 110
    :cond_1
    return-void
.end method

.method setRetryCount(I)V
    .locals 0
    .param p1, "retryCount"    # I
    .annotation build Lcom/mopub/common/VisibleForTesting;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 173
    iput p1, p0, Lcom/mopub/mobileads/RewardedVideoCompletionRequestHandler;->mRetryCount:I

    .line 174
    return-void
.end method
