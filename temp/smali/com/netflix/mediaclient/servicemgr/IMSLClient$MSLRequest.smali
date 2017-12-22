.class public interface abstract Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLRequest;
.super Ljava/lang/Object;
.source "IMSLClient.java"

# interfaces
.implements Lcom/netflix/mediaclient/servicemgr/NetflixDataRequest;


# virtual methods
.method public abstract getMSLHeaders()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMSLPayload()Ljava/lang/String;
.end method

.method public abstract getMSLQuery()Ljava/lang/String;
.end method

.method public abstract getMSLUri()Ljava/lang/String;
.end method

.method public abstract getMSLUserCredentialRegistry()Lcom/netflix/mediaclient/servicemgr/IMSLClient$MSLUserCredentialRegistry;
.end method
