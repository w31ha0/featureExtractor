.class Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;
.super Ljava/lang/Object;
.source "PartnerJSObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

.field final synthetic val$idx:I

.field final synthetic val$service:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    iput-object p2, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$service:Ljava/lang/String;

    iput p3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$idx:I

    iput-object p4, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 238
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Find partner"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    invoke-static {v0}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$100(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;)Lcom/netflix/mediaclient/partner/PartnerFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    iget-object v1, v1, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$service:Ljava/lang/String;

    iget-object v3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    invoke-static {v3}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$000(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;)Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/PartnerFactory;->getPartner(Landroid/content/Context;Ljava/lang/String;Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;)Lcom/netflix/mediaclient/partner/Partner;

    move-result-object v0

    .line 243
    if-nez v0, :cond_0

    .line 244
    :try_start_0
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Service not found!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    const-string/jumbo v1, "nrdpPartner.Signup._handleExternalUserData"

    const/4 v2, 0x0

    iget v3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$idx:I

    iget-object v4, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$service:Ljava/lang/String;

    const-string/jumbo v5, "101"

    const-string/jumbo v6, "Service not found!"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$200(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$300(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 270
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/partner/Partner;->getSignup()Lcom/netflix/mediaclient/partner/Partner$Signup;

    move-result-object v1

    if-nez v1, :cond_1

    .line 250
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Service does not support SSO!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->this$0:Lcom/netflix/mediaclient/jsapi/PartnerJSObject;

    const-string/jumbo v1, "nrdpPartner.Signup._handleExternalUserData"

    iget-object v2, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$userId:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$idx:I

    iget-object v4, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$service:Ljava/lang/String;

    const-string/jumbo v5, "102"

    const-string/jumbo v6, "Service does not support Signup!"

    invoke-static {v2, v3, v4, v5, v6}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$200(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->access$300(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    const-string/jumbo v1, "nf_partner"

    const-string/jumbo v2, "Failed to work with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 255
    :cond_1
    :try_start_1
    invoke-interface {v0}, Lcom/netflix/mediaclient/partner/Partner;->getSignup()Lcom/netflix/mediaclient/partner/Partner$Signup;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$service:Ljava/lang/String;

    iget-object v2, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$userId:Ljava/lang/String;

    iget v3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;->val$idx:I

    new-instance v4, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3$1;

    invoke-direct {v4, p0}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3$1;-><init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;)V

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/netflix/mediaclient/partner/Partner$Signup;->getExternalUserData(Ljava/lang/String;Ljava/lang/String;ILcom/netflix/mediaclient/partner/ResponseListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
