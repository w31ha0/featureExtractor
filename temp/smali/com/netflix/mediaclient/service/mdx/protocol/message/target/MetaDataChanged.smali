.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MetaDataChanged;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.source "MetaDataChanged.java"


# static fields
.field private static final PROPERTY_catalogId:Ljava/lang/String; = "catalogId"

.field private static final PROPERTY_episodeId:Ljava/lang/String; = "episodeId"

.field private static final PROPERTY_type:Ljava/lang/String; = "type"


# instance fields
.field private mCatalogId:Ljava/lang/String;

.field private mEpisodeId:Ljava/lang/String;

.field private mType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 14
    const-string/jumbo v0, "META_DATA_CHANGED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;-><init>(Ljava/lang/String;)V

    .line 15
    const-string/jumbo v0, "catalogId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MetaDataChanged;->mCatalogId:Ljava/lang/String;

    .line 16
    const-string/jumbo v0, "episodeId"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MetaDataChanged;->mEpisodeId:Ljava/lang/String;

    .line 17
    const-string/jumbo v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MetaDataChanged;->mType:Ljava/lang/String;

    .line 18
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MetaDataChanged;->appBodyJson:Lorg/json/JSONObject;

    .line 19
    return-void
.end method


# virtual methods
.method public getCatalogId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MetaDataChanged;->mCatalogId:Ljava/lang/String;

    return-object v0
.end method

.method public getEpisodeId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MetaDataChanged;->mEpisodeId:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/MetaDataChanged;->mType:Ljava/lang/String;

    return-object v0
.end method
