.class Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4$1;
.super Ljava/lang/Object;
.source "PartnerJSObject.java"

# interfaces
.implements Lcom/netflix/mediaclient/partner/ResponseListener;


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4$1;->this$1:Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponseReceived(Lcom/netflix/mediaclient/partner/Response;)V
    .locals 3

    .prologue
    .line 313
    :try_start_0
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4$1;->this$1:Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4;

    iget-object v0, v0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    const-string/jumbo v1, "nrdpPartner.Signup._handleExternalUserConfirmation"

    invoke-interface {p1}, Lcom/netflix/mediaclient/partner/Response;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$300(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :goto_0
    return-void

    .line 314
    :catch_0
    move-exception v0

    .line 315
    const-string/jumbo v1, "nf_partner"

    const-string/jumbo v2, "Failed to get JSON from response"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
