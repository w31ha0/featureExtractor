.class Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest$1;
.super Ljava/lang/Object;
.source "FalkorMSLVolleyRequest.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;

.field final synthetic val$data:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;)V
    .locals 0

    .prologue
    .line 464
    iput-object p1, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest$1;->this$0:Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest;

    iput-object p2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest$1;->val$data:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getUserAuthenticationData()Lcom/netflix/msl/userauth/UserAuthenticationData;
    .locals 3

    .prologue
    .line 472
    new-instance v0, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest$1;->val$data:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    iget-object v1, v1, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->masterToken:Lcom/netflix/msl/tokens/MasterToken;

    iget-object v2, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest$1;->val$data:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    iget-object v2, v2, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userIdToken:Lcom/netflix/msl/tokens/UserIdToken;

    invoke-direct {v0, v1, v2}, Lcom/netflix/msl/userauth/UserIdTokenAuthenticationData;-><init>(Lcom/netflix/msl/tokens/MasterToken;Lcom/netflix/msl/tokens/UserIdToken;)V

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lcom/netflix/mediaclient/service/msl/volley/FalkorMSLVolleyRequest$1;->val$data:Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;

    iget-object v0, v0, Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public updateApiEndpointHost(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 478
    return-void
.end method
