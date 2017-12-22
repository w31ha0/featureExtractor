.class final Lcom/netflix/mediaclient/service/offline/download/CdnUrl$1;
.super Ljava/lang/Object;
.source "CdnUrl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/netflix/mediaclient/service/offline/download/CdnUrl;Lcom/netflix/mediaclient/service/offline/download/CdnUrl;)I
    .locals 2

    .prologue
    .line 37
    iget v0, p1, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mRank:I

    iget v1, p2, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mRank:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    check-cast p2, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/CdnUrl$1;->compare(Lcom/netflix/mediaclient/service/offline/download/CdnUrl;Lcom/netflix/mediaclient/service/offline/download/CdnUrl;)I

    move-result v0

    return v0
.end method
