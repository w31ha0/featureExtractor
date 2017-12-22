.class public interface abstract Lcom/netflix/mediaclient/service/resfetcher/ResourceFetcherCallback;
.super Ljava/lang/Object;
.source "ResourceFetcherCallback.java"


# virtual methods
.method public abstract onResourceCached(Ljava/lang/String;Ljava/lang/String;JJLcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onResourceFetched(Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onResourcePrefetched(Ljava/lang/String;ILcom/netflix/mediaclient/android/app/Status;)V
.end method

.method public abstract onResourceRawFetched(Ljava/lang/String;[BLcom/netflix/mediaclient/android/app/Status;)V
.end method
