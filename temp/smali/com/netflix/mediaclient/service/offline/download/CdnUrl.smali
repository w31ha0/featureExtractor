.class public Lcom/netflix/mediaclient/service/offline/download/CdnUrl;
.super Ljava/lang/Object;
.source "CdnUrl.java"


# instance fields
.field public final mCdnId:J

.field public final mRank:I

.field public final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IJ)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mUrl:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mRank:I

    .line 24
    iput-wide p3, p0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl;->mCdnId:J

    .line 25
    return-void
.end method

.method public static sortByRank(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/netflix/mediaclient/service/offline/download/CdnUrl;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/netflix/mediaclient/service/offline/download/CdnUrl$1;

    invoke-direct {v0}, Lcom/netflix/mediaclient/service/offline/download/CdnUrl$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    return-void
.end method
