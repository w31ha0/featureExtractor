.class public interface abstract Lcom/netflix/mediaclient/servicemgr/Logblob;
.super Ljava/lang/Object;
.source "Logblob.java"


# virtual methods
.method public abstract getClientEpoch()J
.end method

.method public abstract getSeverity()Lcom/netflix/mediaclient/servicemgr/Logblob$Severity;
.end method

.method public abstract getType()Ljava/lang/String;
.end method

.method public abstract isMandatory()Z
.end method

.method public abstract shouldSendNow()Z
.end method

.method public abstract toJson()Lorg/json/JSONObject;
.end method

.method public abstract toJsonString()Ljava/lang/String;
.end method
