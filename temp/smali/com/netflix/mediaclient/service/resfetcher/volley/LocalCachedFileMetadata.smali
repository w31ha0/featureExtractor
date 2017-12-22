.class public Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;
.super Ljava/lang/Object;
.source "LocalCachedFileMetadata.java"


# instance fields
.field byteOffset:J

.field byteSize:J

.field localUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->localUrl:Ljava/lang/String;

    .line 10
    iput-wide p2, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->byteOffset:J

    .line 11
    iput-wide p4, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->byteSize:J

    .line 12
    return-void
.end method


# virtual methods
.method public getByteOffset()J
    .locals 2

    .prologue
    .line 31
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->byteOffset:J

    return-wide v0
.end method

.method public getByteSize()J
    .locals 2

    .prologue
    .line 39
    iget-wide v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->byteSize:J

    return-wide v0
.end method

.method public getLocalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/service/resfetcher/volley/LocalCachedFileMetadata;->localUrl:Ljava/lang/String;

    return-object v0
.end method
