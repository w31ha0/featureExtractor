.class public final Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;
.super Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;
.source "HandshakeAccepted.java"


# static fields
.field private static final PROPERTY_accepted:Ljava/lang/String; = "accepted"

.field private static final PROPERTY_contractVersion:Ljava/lang/String; = "contractVersion"

.field private static final PROPERTY_volumeControl:Ljava/lang/String; = "volumeControl"

.field private static final PROPERTY_volumeStep:Ljava/lang/String; = "volumeStep"


# instance fields
.field private mAccepted:Z

.field private mContractVersion:I

.field private mVolumeControl:Z

.field private mVolumeStep:I


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 48
    const-string/jumbo v0, "HANDSHAKE_ACCEPTED"

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/TargetMessage;-><init>(Ljava/lang/String;)V

    .line 37
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;->mVolumeControl:Z

    .line 39
    iput v1, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;->mVolumeStep:I

    .line 49
    const-string/jumbo v0, "contractVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;->mContractVersion:I

    .line 50
    const-string/jumbo v0, "accepted"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;->mAccepted:Z

    .line 51
    const-string/jumbo v0, "volumeControl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    const-string/jumbo v0, "volumeControl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;->mVolumeControl:Z

    .line 54
    :cond_0
    const-string/jumbo v0, "volumeStep"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    const-string/jumbo v0, "volumeStep"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;->mVolumeStep:I

    .line 57
    :cond_1
    return-void
.end method


# virtual methods
.method public isAccepted()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/mdx/protocol/message/target/HandshakeAccepted;->mAccepted:Z

    return v0
.end method
