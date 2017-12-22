.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerChangeMetaData;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;
.source "PlayerChangeMetaData.java"


# static fields
.field private static final PROPERTY_catalogId:Ljava/lang/String; = "catalogId"

.field private static final PROPERTY_episodeId:Ljava/lang/String; = "episodeId"

.field private static final PROPERTY_type:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 8
    const-string/jumbo v0, "META_DATA_CHANGED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/ControllerMessage;-><init>(Ljava/lang/String;)V

    .line 9
    const-string/jumbo v0, "catalogId"

    invoke-virtual {p0, v0, p1}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerChangeMetaData;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string/jumbo v0, "episodeId"

    invoke-virtual {p0, v0, p2}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerChangeMetaData;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p3}, Lcom/netflix/mediaclient/service/mdx/protocol/message/controller/PlayerChangeMetaData;->addAppBodyProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method
