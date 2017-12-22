.class public interface abstract Lcom/netflix/mediaclient/servicemgr/FetchVideosHandler$FetchCallback;
.super Ljava/lang/Object;
.source "FetchVideosHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getRequestId()J
.end method

.method public abstract onErrorResponse()V
.end method

.method public abstract onNoVideosInResponse()V
.end method

.method public abstract updateDataSet(Ljava/util/List;Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation
.end method
