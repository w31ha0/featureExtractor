.class interface abstract Lcom/netflix/mediaclient/service/offline/download/DownloadableInfo;
.super Ljava/lang/Object;
.source "DownloadableInfo.java"


# virtual methods
.method public abstract getCdnUrls()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDownloadableId()Ljava/lang/String;
.end method

.method public abstract getDownloadableType()Lcom/netflix/mediaclient/service/offline/download/DownloadableType;
.end method

.method public abstract getSizeOfDownloadable()J
.end method
