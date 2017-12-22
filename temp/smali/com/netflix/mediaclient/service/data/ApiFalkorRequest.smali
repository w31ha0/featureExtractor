.class public abstract Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;
.super Lcom/netflix/mediaclient/service/data/FalkorRequest;
.source "ApiFalkorRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/netflix/mediaclient/service/data/FalkorRequest",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p2}, Lcom/netflix/mediaclient/service/data/FalkorRequest;-><init>(Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->mContext:Landroid/content/Context;

    .line 32
    return-void
.end method


# virtual methods
.method protected createTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->mTransport:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->msl:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    if-ne v0, v1, :cond_0

    .line 40
    sget-object v0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Create MSL transport for"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    new-instance v0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;

    invoke-direct {v0, p0}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$1;-><init>(Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;)V

    .line 174
    :goto_0
    return-object v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->mTransport:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->web:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    if-ne v0, v1, :cond_1

    .line 98
    sget-object v0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Create Web transport for"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest$2;-><init>(Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;Landroid/content/Context;)V

    goto :goto_0

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uknown transport type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/netflix/mediaclient/service/data/ApiFalkorRequest;->mTransport:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
