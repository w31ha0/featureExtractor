.class public interface abstract Lcom/netflix/mediaclient/partner/Response;
.super Ljava/lang/Object;
.source "Response.java"


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getResponder()Landroid/content/ComponentName;
.end method

.method public abstract getService()Ljava/lang/String;
.end method

.method public abstract toJson()Lorg/json/JSONObject;
.end method
