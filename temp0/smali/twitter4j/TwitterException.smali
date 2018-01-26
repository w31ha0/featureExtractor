.class public final Ltwitter4j/TwitterException;
.super Ljava/lang/Exception;
.source "TwitterException.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;
.implements Ltwitter4j/internal/http/HttpResponseCode;


# static fields
.field private static final serialVersionUID:J = -0x2467dddfd16c8207L


# instance fields
.field private featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

.field private rateLimitStatus:Ltwitter4j/RateLimitStatus;

.field private retryAfter:I

.field private statusCode:I


# direct methods
.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Exception;

    .prologue
    const/4 v1, 0x0

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 42
    iput-object v1, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 52
    iput-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 42
    iput-object v1, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 47
    iput-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Exception;
    .param p3, "statusCode"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 81
    iput p3, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ltwitter4j/internal/http/HttpResponse;)V
    .locals 5
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    const/4 v4, -0x1

    .line 56
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {p2}, Ltwitter4j/TwitterException;->getCause(Ltwitter4j/internal/http/HttpResponse;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 39
    iput v4, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 42
    const/4 v2, 0x0

    iput-object v2, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 57
    invoke-virtual {p2}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v2

    const/16 v3, 0x1a4

    if-ne v2, v3, :cond_0

    .line 62
    :try_start_0
    const-string v2, "Retry-After"

    invoke-virtual {p2, v2}, Ltwitter4j/internal/http/HttpResponse;->getResponseHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 63
    .local v1, "retryAfterStr":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Ltwitter4j/TwitterException;->retryAfter:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .end local v1    # "retryAfterStr":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v2

    iput v2, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 71
    invoke-static {p2}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 72
    invoke-static {p2}, Ltwitter4j/RateLimitStatusJSONImpl;->createFeatureSpecificRateLimitStatusFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v2

    iput-object v2, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 73
    return-void

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "ignore":Ljava/lang/NumberFormatException;
    iput v4, p0, Ltwitter4j/TwitterException;->retryAfter:I

    goto :goto_0
.end method

.method private static getCause(Ltwitter4j/internal/http/HttpResponse;)Ljava/lang/String;
    .locals 4
    .param p0, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 193
    invoke-virtual {p0}, Ltwitter4j/internal/http/HttpResponse;->getStatusCode()I

    move-result v1

    .line 194
    .local v1, "statusCode":I
    const/4 v0, 0x0

    .line 196
    .local v0, "cause":Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 228
    const-string v0, ""

    .line 230
    :goto_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 198
    :sswitch_0
    const-string v0, "There was no new data to return."

    .line 199
    goto :goto_0

    .line 201
    :sswitch_1
    const-string v0, "The request was invalid.  An accompanying error message will explain why. This is the status code will be returned during rate limiting."

    .line 202
    goto :goto_0

    .line 204
    :sswitch_2
    const-string v0, "Authentication credentials were missing or incorrect."

    .line 205
    goto :goto_0

    .line 207
    :sswitch_3
    const-string v0, "The request is understood, but it has been refused.  An accompanying error message will explain why."

    .line 208
    goto :goto_0

    .line 210
    :sswitch_4
    const-string v0, "The URI requested is invalid or the resource requested, such as a user, does not exists."

    .line 211
    goto :goto_0

    .line 213
    :sswitch_5
    const-string v0, "Returned by the Search API when an invalid format is specified in the request."

    .line 214
    goto :goto_0

    .line 216
    :sswitch_6
    const-string v0, "The number of requests you have made exceeds the quota afforded by your assigned rate limit."

    .line 217
    goto :goto_0

    .line 219
    :sswitch_7
    const-string v0, "Something is broken.  Please post to the group so the Twitter team can investigate."

    .line 220
    goto :goto_0

    .line 222
    :sswitch_8
    const-string v0, "Twitter is down or being upgraded."

    .line 223
    goto :goto_0

    .line 225
    :sswitch_9
    const-string v0, "Service Unavailable: The Twitter servers are up, but overloaded with requests. Try again later. The search and trend methods use this to indicate when you are being rate limited."

    .line 226
    goto :goto_0

    .line 196
    :sswitch_data_0
    .sparse-switch
        0x130 -> :sswitch_0
        0x190 -> :sswitch_1
        0x191 -> :sswitch_2
        0x193 -> :sswitch_3
        0x194 -> :sswitch_4
        0x196 -> :sswitch_5
        0x1a4 -> :sswitch_6
        0x1f4 -> :sswitch_7
        0x1f6 -> :sswitch_8
        0x1f7 -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 161
    if-ne p0, p1, :cond_1

    .line 171
    :cond_0
    :goto_0
    return v1

    .line 162
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 164
    check-cast v0, Ltwitter4j/TwitterException;

    .line 166
    .local v0, "that":Ltwitter4j/TwitterException;
    iget v3, p0, Ltwitter4j/TwitterException;->retryAfter:I

    iget v4, v0, Ltwitter4j/TwitterException;->retryAfter:I

    if-eq v3, v4, :cond_4

    move v1, v2

    goto :goto_0

    .line 167
    :cond_4
    iget v3, p0, Ltwitter4j/TwitterException;->statusCode:I

    iget v4, v0, Ltwitter4j/TwitterException;->statusCode:I

    if-eq v3, v4, :cond_5

    move v1, v2

    goto :goto_0

    .line 168
    :cond_5
    iget-object v3, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    if-eqz v3, :cond_6

    iget-object v3, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    iget-object v4, v0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_1
    move v1, v2

    .line 169
    goto :goto_0

    .line 168
    :cond_6
    iget-object v3, v0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public exceededRateLimitation()Z
    .locals 2

    .prologue
    .line 145
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x190

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x1a4

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFeatureSpecificRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Ltwitter4j/TwitterException;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method

.method public getRetryAfter()I
    .locals 2

    .prologue
    .line 121
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x1a4

    if-eq v0, v1, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Rate limitation is not exceeded"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget v0, p0, Ltwitter4j/TwitterException;->retryAfter:I

    return v0
.end method

.method public getStatusCode()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 176
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    .line 177
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Ltwitter4j/TwitterException;->retryAfter:I

    add-int v0, v1, v2

    .line 178
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v2, v1

    .line 179
    return v0

    .line 178
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCausedByNetworkIssue()Z
    .locals 1

    .prologue
    .line 134
    invoke-virtual {p0}, Ltwitter4j/TwitterException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/io/IOException;

    return v0
.end method

.method public resourceNotFound()Z
    .locals 2

    .prologue
    .line 156
    iget v0, p0, Ltwitter4j/TwitterException;->statusCode:I

    const/16 v1, 0x194

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "TwitterException{statusCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterException;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", retryAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Ltwitter4j/TwitterException;->retryAfter:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", rateLimitStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/TwitterException;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
