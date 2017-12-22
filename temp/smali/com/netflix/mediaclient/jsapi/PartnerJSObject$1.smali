.class Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;
.super Ljava/lang/Object;
.source "PartnerJSObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

.field final synthetic val$idx:I

.field final synthetic val$service:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    iput-object p2, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->val$service:Ljava/lang/String;

    iput p3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->val$idx:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 124
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Find partner"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    invoke-static {v0}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$100(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;)Lcom/netflix/mediaclient/partner/PartnerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    iget-object v1, v1, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->val$service:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    invoke-static {v3}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$000(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;)Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/PartnerFactory;->getPartner(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;)Lcom/netflix/mediaclient/partner/Partner;

    move-result-object v0

    .line 129
    if-nez v0, :cond_0

    .line 130
    :try_start_0
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Service not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    const-string/jumbo v1, "nrdpPartner.Sso._handleExternalUserToken"

    const/4 v2, 0x0

    iget v3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->val$idx:I

    iget-object v4, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->val$service:Ljava/lang/String;

    const-string/jumbo v5, "101"

    const-string/jumbo v6, "Service not found!"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$200(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$300(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 156
    :goto_0
    return-void

    .line 135
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/partner/Partner;->getSSO()Lcom/netflix/mediaclient/partner/Partner$SSO;

    move-result-object v1

    if-nez v1, :cond_1

    .line 136
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Service does not support SSO!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    const-string/jumbo v1, "nrdpPartner.Sso._handleExternalUserToken"

    const/4 v2, 0x0

    iget v3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->val$idx:I

    iget-object v4, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->val$service:Ljava/lang/String;

    const-string/jumbo v5, "102"

    const-string/jumbo v6, "Service does not support SSO!"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$200(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$300(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string/jumbo v1, "nf_partner"

    const-string/jumbo v2, "Failed to work with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/partner/Partner;->getSSO()Lcom/netflix/mediaclient/partner/Partner$SSO;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->val$service:Ljava/lang/String;

    iget v2, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;->val$idx:I

    new-instance v3, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1$1;

    invoke-direct {v3, p0}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1$1;-><init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;)V

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/Partner$SSO;->getExternalUserToken(Ljava/lang/String;ILcom/netflix/mediaclient/partner/ResponseListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
