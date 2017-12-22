.class public Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;
.super Ljava/lang/Object;
.source "UserDataRequestFactory.java"


# instance fields
.field private mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    .line 26
    return-void
.end method

.method private getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mConfig:Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;

    invoke-interface {v0}, Lcom/netflix/mediaclient/service/ServiceAgent$ConfigurationAgentInterface;->useMslForDataRequests()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->msl:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    .line 33
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;->web:Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    goto :goto_0
.end method


# virtual methods
.method public createAddUserProfileRequest(Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 7

    .prologue
    .line 38
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/AddUserProfileRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/user/volley/AddUserProfileRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 39
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createAllocateABTestRequest(IILcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 6

    .prologue
    .line 44
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move v3, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;ILjava/lang/Integer;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 45
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createAutoLoginRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 56
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/AutoLoginRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 57
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createAutoLoginTokenRequest(JLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 7

    .prologue
    .line 62
    new-instance v1, Lcom/netflix/mediaclient/service/user/volley/CreateAutoLoginTokenRequest;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v3

    move-wide v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/netflix/mediaclient/service/user/volley/CreateAutoLoginTokenRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;JLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 63
    invoke-virtual {v1}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createDeallocateABTestRequest(ILcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 6

    .prologue
    .line 50
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    const/4 v4, 0x0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/service/user/volley/AllocateABTestRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;ILjava/lang/Integer;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 51
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createDoOnRampEligibilityActionRequest(Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 68
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/DoOnRampEligibilityActionRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/DoOnRampEligibilityActionRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lcom/netflix/model/leafs/OnRampEligibility$Action;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 69
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createEditUserProfileRequest(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 8

    .prologue
    .line 85
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/EditUserProfileRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/netflix/mediaclient/service/user/volley/EditUserProfileRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 86
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createFetchAccountDataRequest(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchAccountDataMSLRequest;-><init>(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    return-object v0
.end method

.method public createFetchAvailableAvatarsRequest(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 91
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchAvailableAvatarsRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchAvailableAvatarsRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 92
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createFetchProfileDataRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;
    .locals 1

    .prologue
    .line 104
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;

    invoke-direct {v0, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    return-object v0
.end method

.method public createFetchProfileDataRequest(Ljava/lang/String;ZLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;
    .locals 1

    .prologue
    .line 117
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;

    invoke-direct {v0, p1, p2, p3}, Lcom/netflix/mediaclient/service/user/volley/FetchProfileDataMSLRequest;-><init>(Ljava/lang/String;ZLcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    return-object v0
.end method

.method public createFetchSurveyRequest(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 122
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchSurveyRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchSurveyRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 123
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createFetchUserDataRequest(Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 128
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lcom/netflix/mediaclient/service/user/volley/FetchUserDataRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 129
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createMarkSurveyReadRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 134
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/MarkSurveyReadRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/user/volley/MarkSurveyReadRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;)V

    .line 135
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createRecordPlanSelection(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 140
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/RecordPlanSelectionRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/RecordPlanSelectionRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createRecordUmsImpression(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 146
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/RecordUmsImpressionRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/RecordUmsImpressionRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createRefreshUserMessageRequest(Landroid/content/Context;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 152
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p2}, Lcom/netflix/mediaclient/service/user/volley/RefreshUserMessageRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Lcom/netflix/mediaclient/service/webclient/model/leafs/User;)V

    .line 153
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createRemoveUserProfileRequest(Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 3

    .prologue
    .line 158
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/RemoveUserProfileRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/netflix/mediaclient/service/user/volley/RemoveUserProfileRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 159
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method

.method public createVerifyPinRequest(Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;
    .locals 7

    .prologue
    .line 164
    new-instance v0, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/user/volley/UserDataRequestFactory;->getTransport()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/service/user/volley/VerifyPinRequest;-><init>(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest$Transport;Ljava/lang/String;Lcom/netflix/mediaclient/ui/verifyplay/PinVerifier$PinType;Ljava/lang/String;Lcom/netflix/mediaclient/service/user/UserAgentWebCallback;)V

    .line 165
    invoke-virtual {v0}, Lcom/netflix/mediaclient/service/data/FalkorRequest;->getNetflixDataRequest()Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;

    move-result-object v0

    return-object v0
.end method
