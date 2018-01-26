.class public final Ltwitter4j/PagableResponseList;
.super Ltwitter4j/ResponseList;
.source "PagableResponseList.java"

# interfaces
.implements Ltwitter4j/CursorSupport;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ltwitter4j/TwitterResponse;",
        ">",
        "Ltwitter4j/ResponseList",
        "<TT;>;",
        "Ltwitter4j/CursorSupport;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x154294b63421ddc1L


# instance fields
.field private final nextCursor:J

.field private final previousCursor:J


# direct methods
.method constructor <init>(ILtwitter4j/internal/org/json/JSONObject;Ltwitter4j/internal/http/HttpResponse;)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "json"    # Ltwitter4j/internal/org/json/JSONObject;
    .param p3, "res"    # Ltwitter4j/internal/http/HttpResponse;

    .prologue
    .line 47
    .local p0, "this":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<TT;>;"
    invoke-direct {p0, p1, p3}, Ltwitter4j/ResponseList;-><init>(ILtwitter4j/internal/http/HttpResponse;)V

    .line 48
    const-string v0, "previous_cursor"

    invoke-static {v0, p2}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/PagableResponseList;->previousCursor:J

    .line 49
    const-string v0, "next_cursor"

    invoke-static {v0, p2}, Ltwitter4j/ParseUtil;->getLong(Ljava/lang/String;Ltwitter4j/internal/org/json/JSONObject;)J

    move-result-wide v0

    iput-wide v0, p0, Ltwitter4j/PagableResponseList;->nextCursor:J

    .line 50
    return-void
.end method


# virtual methods
.method public getNextCursor()J
    .locals 2

    .prologue
    .line 65
    .local p0, "this":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<TT;>;"
    iget-wide v0, p0, Ltwitter4j/PagableResponseList;->nextCursor:J

    return-wide v0
.end method

.method public getPreviousCursor()J
    .locals 2

    .prologue
    .line 57
    .local p0, "this":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<TT;>;"
    iget-wide v0, p0, Ltwitter4j/PagableResponseList;->previousCursor:J

    return-wide v0
.end method

.method public hasNext()Z
    .locals 4

    .prologue
    .line 61
    .local p0, "this":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<TT;>;"
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/PagableResponseList;->nextCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPrevious()Z
    .locals 4

    .prologue
    .line 53
    .local p0, "this":Ltwitter4j/PagableResponseList;, "Ltwitter4j/PagableResponseList<TT;>;"
    const-wide/16 v0, 0x0

    iget-wide v2, p0, Ltwitter4j/PagableResponseList;->previousCursor:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
