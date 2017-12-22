.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.source "PinRequired.java"


# static fields
.field private static PROPERTY_ancestorVideoId:Ljava/lang/String;

.field private static PROPERTY_ancestorVideoType:Ljava/lang/String;

.field private static PROPERTY_title:Ljava/lang/String;

.field private static PROPERTY_videoId:Ljava/lang/String;


# instance fields
.field private mAncestorVideoId:I

.field private mAncestorVideoType:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mVideoId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-string/jumbo v0, "title"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->PROPERTY_title:Ljava/lang/String;

    .line 7
    const-string/jumbo v0, "videoId"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->PROPERTY_videoId:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, "ancestorVideoId"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->PROPERTY_ancestorVideoId:Ljava/lang/String;

    .line 9
    const-string/jumbo v0, "ancestorVideoType"

    sput-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->PROPERTY_ancestorVideoType:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 15
    const-string/jumbo v0, "PIN_VERIFICATION_SHOW"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;-><init>(Ljava/lang/String;)V

    .line 16
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->PROPERTY_title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->mTitle:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->PROPERTY_videoId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->mVideoId:I

    .line 18
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->PROPERTY_ancestorVideoId:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->mAncestorVideoId:I

    .line 19
    sget-object v0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->PROPERTY_ancestorVideoType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->mAncestorVideoType:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->appBodyJson:Lorg/json/JSONObject;

    .line 21
    return-void
.end method


# virtual methods
.method public getAncestorVideoId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->mAncestorVideoId:I

    return v0
.end method

.method public getAncestorVideoType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->mAncestorVideoType:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoId()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/PinRequired;->mVideoId:I

    return v0
.end method
