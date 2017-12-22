.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IMSLClient;
.super Ljava/lang/Object;
.source "IMSLClient.java"


# virtual methods
.method public abstract addNetworkRequestInspector(Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;[Ljava/lang/Class;)V
.end method

.method public abstract getMslEncoderFactory()Lcom/netflix/msl/io/MslEncoderFactory;
.end method

.method public abstract getMslEncoderFormat()Lcom/netflix/msl/io/MslEncoderFormat;
.end method

.method public abstract getMslTokensAndCrypto()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslTokensAndCrypto;
.end method

.method public abstract getMslUserState()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MslUserState;
.end method

.method public abstract getServerTimeAtAppboot()J
.end method

.method public abstract getSwitchProfileAuthenticationData(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/msl/userauth/SwitchProfileAuthenticationData;
.end method

.method public abstract isUserKnown(Ljava/lang/String;)Z
.end method

.method public abstract logout()V
.end method

.method public abstract prepareDataRequest(Lcom/netflix/mediaclient/service/msl/volley/MSLVolleyRequest;)V
.end method

.method public abstract resetRenewUserAuthenticationData()Lcom/netflix/mediaclient/servicemgr/IMSLClient$RenewUserAuthenticationData;
.end method

.method public abstract setAppbootTimeListener(Lcom/netflix/mediaclient/servicemgr/IMSLClient$AppbootTimeUpdateListener;)V
.end method

.method public abstract updateUserId(Ljava/lang/String;Ljava/lang/String;)V
.end method
