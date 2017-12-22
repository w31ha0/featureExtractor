.class public interface abstract Lcom/netflix/mediaclient/util/data/DataRepository;
.super Ljava/lang/Object;
.source "DataRepository.java"


# virtual methods
.method public abstract clear()V
.end method

.method public abstract getEntries()[Lcom/netflix/mediaclient/util/data/DataRepository$Entry;
.end method

.method public abstract load(Ljava/lang/String;Lcom/netflix/mediaclient/util/data/DataRepository$DataLoadedCallback;)V
.end method

.method public abstract loadAll(Lcom/netflix/mediaclient/util/data/DataRepository$LoadedCallback;)V
.end method

.method public abstract remove(Ljava/lang/String;)V
.end method

.method public abstract save(Ljava/lang/String;[B)Ljava/lang/String;
.end method

.method public abstract save(Ljava/lang/String;[BLcom/netflix/mediaclient/util/data/DataRepository$DataSavedCallback;)Ljava/lang/String;
.end method
