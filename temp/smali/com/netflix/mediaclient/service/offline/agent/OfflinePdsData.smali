.class public Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;
.super Ljava/lang/Object;
.source "OfflinePdsData.java"


# instance fields
.field private final mDownloadContext:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

.field private final mDxId:Ljava/lang/String;

.field private final mLinks:Lorg/json/JSONObject;

.field private final mOxId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->mLinks:Lorg/json/JSONObject;

    .line 22
    iput-object p2, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->mOxId:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->mDxId:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->mDownloadContext:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    .line 25
    return-void
.end method


# virtual methods
.method public getDownloadContext()Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->mDownloadContext:Lcom/netflix/mediaclient/service/logging/pdslogging/download/DownloadContext;

    return-object v0
.end method

.method public getDxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->mDxId:Ljava/lang/String;

    return-object v0
.end method

.method public getLinks()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->mLinks:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getOxId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/netflix/mediaclient/service/offline/agent/OfflinePdsData;->mOxId:Ljava/lang/String;

    return-object v0
.end method
