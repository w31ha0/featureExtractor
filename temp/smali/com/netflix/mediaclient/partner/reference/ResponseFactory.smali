.class public final Lcom/netflix/mediaclient/partner/reference/ResponseFactory;
.super Ljava/lang/Object;
.source "ResponseFactory.java"


# static fields
.field public static final ERROR_CODE_COMPONENT_NULL:Ljava/lang/String; = "100"

.field public static final ERROR_CODE_RECEPIENT_UKNOWN:Ljava/lang/String; = "102"

.field public static final ERROR_CODE_SERVICE_MISMATCH:Ljava/lang/String; = "101"

.field public static final ERROR_CODE_UKNOWN_RESULT_CODE:Ljava/lang/String; = "103"

.field public static final JSPI_billing_zip:Ljava/lang/String; = "billingzip"

.field public static final JSPI_email:Ljava/lang/String; = "email"

.field public static final JSPI_first_name:Ljava/lang/String; = "firstname"

.field public static final JSPI_last_name:Ljava/lang/String; = "lastname"

.field public static final JSPI_payments:Ljava/lang/String; = "payments"

.field public static final RESPONSE_billing_zip:Ljava/lang/String; = "billing_zip"

.field public static final RESPONSE_client:Ljava/lang/String; = "client"

.field public static final RESPONSE_confirmed:Ljava/lang/String; = "confirmed"

.field public static final RESPONSE_email:Ljava/lang/String; = "email"

.field public static final RESPONSE_error_code:Ljava/lang/String; = "error_code"

.field public static final RESPONSE_error_msg:Ljava/lang/String; = "error_msg"

.field public static final RESPONSE_external_user_token:Ljava/lang/String; = "external_user_token"

.field public static final RESPONSE_first_name:Ljava/lang/String; = "first_name"

.field public static final RESPONSE_internal_token:Ljava/lang/String; = "internal_token"

.field public static final RESPONSE_last_name:Ljava/lang/String; = "last_name"

.field public static final RESPONSE_payments:Ljava/lang/String; = "payments"

.field public static final RESPONSE_token:Ljava/lang/String; = "token"

.field public static final RESPONSE_user_id:Ljava/lang/String; = "user_id"

.field public static final RESULT_ERROR:I = 0x66

.field public static final RESULT_NONE:I = 0x65

.field private static final TAG:Ljava/lang/String; = "nf_partner"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    return-void
.end method

.method private static createErrorResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/netflix/mediaclient/partner/Response;
    .locals 7

    .prologue
    .line 372
    .line 373
    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->iSso(Lcom/netflix/mediaclient/partner/PartnerRequestType;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getIdx()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 382
    :goto_0
    return-object v0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->iSignup(Lcom/netflix/mediaclient/partner/PartnerRequestType;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    new-instance v0, Lcom/netflix/mediaclient/partner/SignupFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getIdx()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getUserId()Ljava/lang/String;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/partner/SignupFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 378
    :cond_1
    const-string/jumbo v0, "nf_partner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uknown request type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getIdx()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public static createErrorResponseForPartnerCommunicationHandleIsNull(Lcom/netflix/mediaclient/partner/PartnerRequest;)Lcom/netflix/mediaclient/partner/Response;
    .locals 3

    .prologue
    .line 348
    const-string/jumbo v0, "100"

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createErrorResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    return-object v0
.end method

.method public static createErrorResponseForRecepientUknown(Lcom/netflix/mediaclient/partner/PartnerRequest;Ljava/lang/String;)Lcom/netflix/mediaclient/partner/Response;
    .locals 3

    .prologue
    .line 394
    const-string/jumbo v0, "102"

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createErrorResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    return-object v0
.end method

.method public static createErrorResponseForServiceMismatch(Lcom/netflix/mediaclient/partner/PartnerRequest;Ljava/lang/String;)Lcom/netflix/mediaclient/partner/Response;
    .locals 3

    .prologue
    .line 360
    const-string/jumbo v0, "101"

    const-string/jumbo v1, ""

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createErrorResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    return-object v0
.end method

.method private static createGetExternalSignUpServiceResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;
    .locals 6

    .prologue
    .line 228
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "createGetExternalSignUpServiceResponse start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 231
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoSuccess;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/ComponentName;)V

    .line 244
    :goto_0
    return-object v0

    .line 232
    :cond_0
    if-nez p2, :cond_1

    .line 233
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoUserCancel;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoUserCancel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 234
    :cond_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_2

    .line 235
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoNoUser;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoNoUser;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 236
    :cond_2
    const/16 v0, 0x66

    if-ne p2, v0, :cond_3

    .line 238
    const-string/jumbo v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 239
    const-string/jumbo v0, "error_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 240
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 243
    :cond_3
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Uknown result code, report error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "103"

    const-string/jumbo v4, ""

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private static createGetExternalSsoServiceResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;
    .locals 6

    .prologue
    .line 129
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "createGetExternalSsoServiceResponse start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 132
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoSuccess;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getUserId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/ComponentName;)V

    .line 145
    :goto_0
    return-object v0

    .line 133
    :cond_0
    if-nez p2, :cond_1

    .line 134
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoUserCancel;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoUserCancel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 135
    :cond_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_2

    .line 136
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoNoUser;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoNoUser;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 137
    :cond_2
    const/16 v0, 0x66

    if-ne p2, v0, :cond_3

    .line 139
    const-string/jumbo v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 140
    const-string/jumbo v0, "error_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 141
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 144
    :cond_3
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Uknown result code, report error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "103"

    const-string/jumbo v4, ""

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private static createGetExternalUserDataResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;
    .locals 8

    .prologue
    .line 257
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "createGetExternalUserDataResponse start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 261
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 262
    const-string/jumbo v0, "first_name"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 263
    const-string/jumbo v1, "last_name"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 264
    const-string/jumbo v2, "email"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 265
    const-string/jumbo v4, "billing_zip"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 266
    const-string/jumbo v4, "payments"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 268
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 270
    :try_start_0
    const-string/jumbo v7, "firstname"

    invoke-virtual {v4, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string/jumbo v0, "lastname"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string/jumbo v0, "email"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string/jumbo v0, "billingzip"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string/jumbo v0, "payments"

    invoke-virtual {v4, v0, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 280
    :goto_0
    new-instance v0, Lcom/netflix/mediaclient/partner/ExternalUserDataSuccess;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/ExternalUserDataSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/ComponentName;)V

    .line 298
    :goto_1
    return-object v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    const-string/jumbo v1, "nf_partner"

    const-string/jumbo v2, "JSON failed"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 282
    :cond_0
    if-nez p2, :cond_1

    .line 284
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoUserCancel;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoUserCancel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_1

    .line 286
    :cond_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_2

    .line 288
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoNoUser;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoNoUser;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_1

    .line 290
    :cond_2
    const/16 v0, 0x66

    if-ne p2, v0, :cond_3

    .line 292
    const-string/jumbo v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 293
    const-string/jumbo v0, "error_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_1

    .line 297
    :cond_3
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Uknown result code, report error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "103"

    const-string/jumbo v4, ""

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto/16 :goto_1
.end method

.method private static createGetExternalUserTokenResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;
    .locals 6

    .prologue
    .line 158
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "createGetExternalUserTokenResponse start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 162
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 163
    const-string/jumbo v0, "external_user_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->toJSon(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 164
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoSuccess;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/ComponentName;)V

    .line 182
    :goto_0
    return-object v0

    .line 166
    :cond_0
    if-nez p2, :cond_1

    .line 168
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoUserCancel;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoUserCancel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 170
    :cond_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_2

    .line 172
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoNoUser;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoNoUser;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 174
    :cond_2
    const/16 v0, 0x66

    if-ne p2, v0, :cond_3

    .line 176
    const-string/jumbo v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 177
    const-string/jumbo v0, "error_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 181
    :cond_3
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Uknown result code, report error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "103"

    const-string/jumbo v4, ""

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private static createRequestExternalUserAuthResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;
    .locals 6

    .prologue
    .line 195
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "createRequestExternalUserAuthResponse start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 199
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    const-string/jumbo v0, "external_user_token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->toJSon(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 201
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoSuccess;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Landroid/content/ComponentName;)V

    .line 215
    :goto_0
    return-object v0

    .line 203
    :cond_0
    if-nez p2, :cond_1

    .line 205
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoUserCancel;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoUserCancel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 207
    :cond_1
    const/16 v0, 0x66

    if-ne p2, v0, :cond_2

    .line 209
    const-string/jumbo v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    const-string/jumbo v0, "error_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 211
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 214
    :cond_2
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Uknown result code, report error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "103"

    const-string/jumbo v4, ""

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method private static createRequestExternalUserConfirmationResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;
    .locals 7

    .prologue
    .line 311
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "createRequestExternalUserConfirmationResponse start"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 315
    const-string/jumbo v0, "user_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 316
    const-string/jumbo v0, "token"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->toJSon(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 317
    const-string/jumbo v0, "confirmed"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 319
    new-instance v0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Landroid/content/ComponentName;)V

    .line 337
    :goto_0
    return-object v0

    .line 321
    :cond_0
    if-nez p2, :cond_1

    .line 323
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoUserCancel;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoUserCancel;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 325
    :cond_1
    const/16 v0, 0x65

    if-ne p2, v0, :cond_2

    .line 327
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoNoUser;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/partner/SsoNoUser;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 329
    :cond_2
    const/16 v0, 0x66

    if-ne p2, v0, :cond_3

    .line 331
    const-string/jumbo v0, "error_code"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 332
    const-string/jumbo v0, "error_msg"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/partner/BaseResponse;->noNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 333
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0

    .line 336
    :cond_3
    const-string/jumbo v0, "nf_partner"

    const-string/jumbo v1, "Uknown result code, report error"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    new-instance v0, Lcom/netflix/mediaclient/partner/SsoFailure;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getId()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "103"

    const-string/jumbo v4, ""

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/netflix/mediaclient/partner/SsoFailure;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    goto :goto_0
.end method

.method public static createResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;
    .locals 3

    .prologue
    .line 101
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalSignUpService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createGetExternalSignUpServiceResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 103
    :cond_0
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalSsoService:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 104
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createGetExternalSsoServiceResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    goto :goto_0

    .line 105
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalUserData:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 106
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createGetExternalUserDataResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    goto :goto_0

    .line 107
    :cond_2
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->getExternalUserToken:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 108
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createGetExternalUserTokenResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_3
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestExternalUserAuth:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 110
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createRequestExternalUserAuthResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    goto :goto_0

    .line 111
    :cond_4
    sget-object v0, Lcom/netflix/mediaclient/partner/PartnerRequestType;->requestExternalUserConfirmation:Lcom/netflix/mediaclient/partner/PartnerRequestType;

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/PartnerRequestType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    invoke-static {p0, p1, p2}, Lcom/netflix/mediaclient/partner/reference/ResponseFactory;->createRequestExternalUserConfirmationResponse(Lcom/netflix/mediaclient/partner/PartnerRequest;Landroid/content/Intent;I)Lcom/netflix/mediaclient/partner/Response;

    move-result-object v0

    goto :goto_0

    .line 114
    :cond_5
    const-string/jumbo v0, "nf_partner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Uknown request type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/PartnerRequest;->getRequestType()Lcom/netflix/mediaclient/partner/PartnerRequestType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/4 v0, 0x0

    goto :goto_0
.end method
