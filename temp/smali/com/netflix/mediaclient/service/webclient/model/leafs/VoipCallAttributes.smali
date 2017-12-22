.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;
.super Ljava/lang/Object;
.source "VoipCallAttributes.java"


# instance fields
.field private callId:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CALLID"
    .end annotation
.end field

.field private codecs:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CODECS"
    .end annotation
.end field

.field private credential:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "CREDENTIAL"
    .end annotation
.end field

.field private desinationNumber:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DEST_NUMBER"
    .end annotation
.end field

.field private destinationAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DEST_SERVER"
    .end annotation
.end field

.field private destinationPORT:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "DEST_PORT"
    .end annotation
.end field

.field private sdkType:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "SDK"
    .end annotation
.end field

.field private twilioAccessToken:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "TWILIO_ACCESS_TOKEN"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCallId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->callId:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecs()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->codecs:Ljava/lang/String;

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCredential()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->credential:Ljava/lang/String;

    return-object v0
.end method

.method public getDesinationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->desinationNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->destinationAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationPORT()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->destinationPORT:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkType()Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->sdkType:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    return-object v0
.end method

.method public getTwilioAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->twilioAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public setSdkType(Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes;->sdkType:Lcom/netflix/mediaclient/service/webclient/model/leafs/VoipCallAttributes$SDKTypes;

    .line 97
    return-void
.end method
