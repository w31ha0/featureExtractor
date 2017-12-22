.class Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;
.super Ljava/lang/Object;
.source "LinphoneVoipEngine.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IVoip$Call;


# instance fields
.field mCall:Lorg/linphone/core/LinphoneCall;

.field mCallId:Ljava/lang/String;

.field mCallParams:Lorg/linphone/core/LinphoneCallParams;

.field mCallStatsSent:Z

.field mCodecName:Ljava/lang/String;

.field mCodecRate:I

.field private state:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;


# direct methods
.method constructor <init>(Ljava/lang/String;Lorg/linphone/core/LinphoneCall;)V
    .locals 1

    .prologue
    .line 999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;->CONNECTING:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->state:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    .line 994
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCallStatsSent:Z

    .line 1000
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCallId:Ljava/lang/String;

    .line 1001
    iput-object p2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCall:Lorg/linphone/core/LinphoneCall;

    .line 1002
    return-void
.end method


# virtual methods
.method public callStatsSent()V
    .locals 1

    .prologue
    .line 1027
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCallStatsSent:Z

    .line 1028
    return-void
.end method

.method public getCallParams()Lorg/linphone/core/LinphoneCallParams;
    .locals 1

    .prologue
    .line 1023
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCallParams:Lorg/linphone/core/LinphoneCallParams;

    return-object v0
.end method

.method public getCallStatsSent()Z
    .locals 1

    .prologue
    .line 1031
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCallStatsSent:Z

    return v0
.end method

.method public getCodecName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1035
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCodecName:Ljava/lang/String;

    return-object v0
.end method

.method public getCodecRate()I
    .locals 1

    .prologue
    .line 1039
    iget v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCodecRate:I

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 1010
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method getLinphoneCall()Lorg/linphone/core/LinphoneCall;
    .locals 1

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCall:Lorg/linphone/core/LinphoneCall;

    return-object v0
.end method

.method public getState()Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;
    .locals 1

    .prologue
    .line 1015
    iget-object v0, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->state:Lcom/netflix/mediaclient/servicemgr/IVoip$CallState;

    return-object v0
.end method

.method public setCallParams(Lorg/linphone/core/LinphoneCallParams;)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCallParams:Lorg/linphone/core/LinphoneCallParams;

    .line 1020
    return-void
.end method

.method public setCodec(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1043
    iput-object p1, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCodecName:Ljava/lang/String;

    .line 1044
    iput p2, p0, Lcom/netflix/mediaclient/service/voip/LinphoneVoipEngine$LinphoneCallWrapper;->mCodecRate:I

    .line 1045
    return-void
.end method
