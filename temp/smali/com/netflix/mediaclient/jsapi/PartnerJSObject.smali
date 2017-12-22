.class public Lcom/netflix/mediaclient/jsapi/PartnerJSObject;
.super Lcom/netflix/mediaclient/jsapi/JSObject;
.source "PartnerJSObject.java"


# static fields
.field public static final INTERFACE_NAME:Ljava/lang/String; = "n_partner_api"

.field private static final JSAPI_handleExternalUserAuth:Ljava/lang/String; = "nrdpPartner.Sso._handleExternalUserAuth"

.field private static final JSAPI_handleExternalUserConfirmation:Ljava/lang/String; = "nrdpPartner.Signup._handleExternalUserConfirmation"

.field private static final JSAPI_handleExternalUserData:Ljava/lang/String; = "nrdpPartner.Signup._handleExternalUserData"

.field private static final JSAPI_handleExternalUserToken:Ljava/lang/String; = "nrdpPartner.Sso._handleExternalUserToken"

.field private static final TAG:Ljava/lang/String; = "nf_partner"


# instance fields
.field private comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

.field private partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/webkit/WebView;Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/jsapi/JSObject;-><init>(Landroid/content/Context;Landroid/webkit/WebView;)V

    .line 76
    iput-object p3, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    .line 77
    new-instance v0, Lcom/netflix/mediaclient/partner/PartnerFactory;

    invoke-direct {v0}, Lcom/netflix/mediaclient/partner/PartnerFactory;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;)Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;)Lcom/netflix/mediaclient/partner/PartnerFactory;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    return-object v0
.end method

.method static synthetic access$200(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3, p4}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->getErrorForPartner(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->returnResultToJS(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method private static getErrorForPartner(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 380
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 381
    const-string/jumbo v1, "idx"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 382
    const-string/jumbo v1, "service"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string/jumbo v1, "status"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 384
    if-eqz p0, :cond_0

    .line 385
    const-string/jumbo v1, "userid"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    :cond_0
    const-string/jumbo v1, "errcode"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string/jumbo v1, "msg"

    invoke-virtual {v0, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    return-object v0
.end method

.method private returnResultToJS(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 335
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->toJavaScript(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    .line 339
    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->injectJavaScript(Ljava/lang/String;)V

    .line 340
    return-void
.end method

.method private toJavaScript(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 353
    const-string/jumbo v1, "javascript:(function() { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    const-string/jumbo v1, " console.log(\'Sending event...\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    const-string/jumbo v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    const-string/jumbo v1, " console.log(\'Event sent.\');"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    const-string/jumbo v1, "})()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExternalSignUpServices()Ljava/lang/String;
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    iget-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/PartnerFactory;->getExternalSignUpServices(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalSsoServices()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    iget-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/partner/PartnerFactory;->getExternalSsoServices(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExternalUserData(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 234
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$3;-><init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 272
    return-void
.end method

.method public getExternalUserToken(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$1;-><init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 158
    return-void
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string/jumbo v0, "n_partner_api"

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-super {p0}, Lcom/netflix/mediaclient/jsapi/JSObject;->release()V

    .line 85
    iget-object v0, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/partner/PartnerFactory;->releasePartners()V

    .line 86
    iput-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->partnerFactory:Lcom/netflix/mediaclient/partner/PartnerFactory;

    .line 87
    iput-object v1, p0, Lcom/netflix/mediaclient/jsapi/PartnerJSObject;->comHandler:Lcom/netflix/mediaclient/partner/PartnerCommunicationHandler;

    .line 88
    return-void
.end method

.method public requestExternalUserAuth(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 172
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$2;-><init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 210
    return-void
.end method

.method public requestExternalUserConfirmation(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 287
    new-instance v0, Lcom/netflix/mediaclient/android/app/BackgroundTask;

    invoke-direct {v0}, Lcom/netflix/mediaclient/android/app/BackgroundTask;-><init>()V

    new-instance v1, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/netflix/mediaclient/jsapi/PartnerJSObject$4;-><init>(Lcom/netflix/mediaclient/jsapi/PartnerJSObject;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/app/BackgroundTask;->execute(Ljava/lang/Runnable;)V

    .line 325
    return-void
.end method
