.class Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field private static sRequestIdCounter:I


# instance fields
.field private final callback:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

.field private final requestId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1956
    const/4 v0, 0x0

    sput v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->sRequestIdCounter:I

    return-void
.end method

.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/ManagerCallback;)V
    .locals 1

    .prologue
    .line 1960
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1961
    sget v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->sRequestIdCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->sRequestIdCounter:I

    .line 1962
    sget v0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->sRequestIdCounter:I

    iput v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->requestId:I

    .line 1963
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->callback:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    .line 1964
    return-void
.end method


# virtual methods
.method public getDemuxedCallback()Lcom/netflix/mediaclient/servicemgr/ManagerCallback;
    .locals 1

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->callback:Lcom/netflix/mediaclient/servicemgr/ManagerCallback;

    return-object v0
.end method

.method public getRequestId()I
    .locals 1

    .prologue
    .line 1966
    iget v0, p0, Lcom/netflix/mediaclient/servicemgr/ServiceManager$CallbackMuxer$MuxedCallback;->requestId:I

    return v0
.end method
