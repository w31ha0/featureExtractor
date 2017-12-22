.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IMSLClient$NetworkRequestInspector;
.super Ljava/lang/Object;
.source "IMSLClient.java"


# virtual methods
.method public abstract inspectRequestAfterApiWrap(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract inspectRequestBeforeApiWrap(Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;)Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLApiUnwrappedParams;
.end method

.method public abstract inspectResponseAfterApiUnwrap(Lcom/netflix/msl/client/ApiHttpWrapper;)Lcom/netflix/msl/client/ApiHttpWrapper;
.end method

.method public abstract inspectResponseBeforeApiUnwrap([B)[B
.end method
