.class public Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;
.super Ljava/lang/Object;
.source "BillboardLogLimiter.java"


# instance fields
.field private final mBillboardVideos:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentLolomoId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mBillboardVideos:Ljava/util/HashSet;

    .line 18
    return-void
.end method


# virtual methods
.method public shouldSendBillboardLog(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 22
    invoke-static {p2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    .line 53
    :goto_0
    return v0

    .line 27
    :cond_1
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mCurrentLolomoId:Ljava/lang/String;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mCurrentLolomoId:Ljava/lang/String;

    .line 29
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mBillboardVideos:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 30
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mBillboardVideos:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 33
    :cond_2
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mBillboardVideos:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 38
    :cond_3
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mCurrentLolomoId:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/netflix/mediaclient/util/StringUtils;->safeEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 39
    const-class v2, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/LogUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "different lolomoId old: %s, new %s, videoId: %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mCurrentLolomoId:Ljava/lang/String;

    aput-object v5, v4, v1

    aput-object p1, v4, v0

    aput-object p2, v4, v6

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mCurrentLolomoId:Ljava/lang/String;

    .line 41
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mBillboardVideos:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 42
    iget-object v1, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mBillboardVideos:Ljava/util/HashSet;

    invoke-virtual {v1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 47
    :cond_4
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mBillboardVideos:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v0, v1

    .line 48
    goto :goto_0

    .line 51
    :cond_5
    iget-object v2, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mBillboardVideos:Ljava/util/HashSet;

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    const-class v2, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;

    invoke-static {v2}, Lcom/netflix/mediaclient/util/LogUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "(size: %d) - Added videoId: %s"

    new-array v4, v6, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/netflix/mediaclient/service/falkor/BillboardLogLimiter;->mBillboardVideos:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    aput-object p2, v4, v0

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0
.end method
