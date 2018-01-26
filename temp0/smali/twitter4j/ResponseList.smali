.class public Ltwitter4j/ResponseList;
.super Ljava/util/ArrayList;
.source "ResponseList.java"

# interfaces
.implements Ltwitter4j/TwitterResponse;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;",
        "Ltwitter4j/TwitterResponse;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4e5cd1029e2727a0L


# instance fields
.field private transient featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

.field private transient rateLimitStatus:Ltwitter4j/RateLimitStatus;


# direct methods
.method constructor <init>(ILtwitter4j/internal/http/HttpResponse;)V
    .locals 1
    .param p1, "size"    # I
    .param p2, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .local p0, "this":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<TT;>;"
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 41
    iput-object v0, p0, Ltwitter4j/ResponseList;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 42
    iput-object v0, p0, Ltwitter4j/ResponseList;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 47
    invoke-static {p2}, Ltwitter4j/RateLimitStatusJSONImpl;->createFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/ResponseList;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 48
    invoke-static {p2}, Ltwitter4j/RateLimitStatusJSONImpl;->createFeatureSpecificRateLimitStatusFromResponseHeader(Ltwitter4j/internal/http/HttpResponse;)Ltwitter4j/RateLimitStatus;

    move-result-object v0

    iput-object v0, p0, Ltwitter4j/ResponseList;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    .line 49
    return-void
.end method


# virtual methods
.method public getFeatureSpecificRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 67
    .local p0, "this":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<TT;>;"
    iget-object v0, p0, Ltwitter4j/ResponseList;->featureSpecificRateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method

.method public getRateLimitStatus()Ltwitter4j/RateLimitStatus;
    .locals 1

    .prologue
    .line 55
    .local p0, "this":Ltwitter4j/ResponseList;, "Ltwitter4j/ResponseList<TT;>;"
    iget-object v0, p0, Ltwitter4j/ResponseList;->rateLimitStatus:Ltwitter4j/RateLimitStatus;

    return-object v0
.end method
