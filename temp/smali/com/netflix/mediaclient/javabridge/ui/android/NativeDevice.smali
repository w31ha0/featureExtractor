.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;
.super Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.source "NativeDevice.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Device;


# static fields
.field public static final METHOD_factoryReset:Ljava/lang/String; = "factoryReset"

.field public static final PROPERTY_UILanguages:Ljava/lang/String; = "UILanguages"

.field public static final PROPERTY_UIVersion:Ljava/lang/String; = "UIVersion"

.field public static final SDK_VERSION:Ljava/lang/String; = "12.1"

.field private static final TAG:Ljava/lang/String; = "nf-bridge"


# instance fields
.field private uiLanguages:[Ljava/lang/String;

.field private uiVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 52
    return-void
.end method

.method private handleEvent(Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    const-string/jumbo v0, "data"

    invoke-virtual {p0, p1, v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "name"

    invoke-virtual {p0, p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    if-eqz v0, :cond_0

    const-string/jumbo v2, "idx"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    const-string/jumbo v2, "factoryReset"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/android/device/FactoryResetCompleteCommand;

    invoke-direct {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/device/FactoryResetCompleteCommand;-><init>(Lorg/json/JSONObject;)V

    invoke-virtual {p0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->handleCallback(Lcom/netflix/mediaclient/event/CallbackEvent;)I

    move-result v0

    .line 202
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handlePropertyUpdate(Lorg/json/JSONObject;)I
    .locals 2

    .prologue
    .line 174
    const-string/jumbo v0, "properties"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 175
    if-nez v0, :cond_0

    .line 176
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "handlePropertyUpdate:: properties does not exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    .line 181
    :goto_0
    return v0

    .line 180
    :cond_0
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "Not updating properties for now. That may change"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public factoryReset(Lcom/netflix/mediaclient/javabridge/ui/Callback;)V
    .locals 3

    .prologue
    .line 350
    const-string/jumbo v0, "device"

    const-string/jumbo v1, "factoryReset"

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->invokeMethodWithCallback(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/netflix/mediaclient/javabridge/ui/Callback;)V

    .line 351
    return-void
.end method

.method public getCertificationVersion()Ljava/lang/String;
    .locals 3

    .prologue
    .line 245
    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 249
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 250
    if-lez v1, :cond_0

    .line 251
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 257
    :cond_0
    return-object v0
.end method

.method public getDeviceModel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    .line 232
    if-nez v0, :cond_0

    .line 233
    const-string/jumbo v0, "N/A"

    .line 235
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getModelId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getESN()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getEsnProvider()Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;

    move-result-object v0

    .line 275
    if-nez v0, :cond_0

    .line 276
    const-string/jumbo v0, "N/A"

    .line 278
    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->getEsn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getESNPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/esn/EsnProvider;->ESN_PREFIX:Ljava/lang/String;

    return-object v0
.end method

.method public getFriendlyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 359
    const-string/jumbo v0, "Android"

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 288
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    if-nez v0, :cond_0

    .line 289
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "bridge is gone, probably destroyed. Ignoring"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 305
    :goto_0
    return-object v0

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getDeviceLocale()Ljava/util/Locale;

    move-result-object v1

    .line 294
    const-string/jumbo v0, "en"

    .line 295
    if-eqz v1, :cond_1

    .line 296
    invoke-static {v1}, Lcom/netflix/mediaclient/util/l10n/UserLocale;->toUserLocale(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 298
    :cond_1
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Device locale can not be null! Default to \'en\'."

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    const-string/jumbo v0, "device"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string/jumbo v0, "nrdp.device"

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 210
    const-string/jumbo v0, "12.1"

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 219
    if-nez v0, :cond_0

    .line 220
    const-string/jumbo v0, "N/A"

    .line 222
    :cond_0
    return-object v0
.end method

.method public getUILanguages()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->uiLanguages:[Ljava/lang/String;

    return-object v0
.end method

.method public getUIVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->uiVersion:Ljava/lang/String;

    return-object v0
.end method

.method public processUpdate(Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    .line 143
    :try_start_0
    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    const-string/jumbo v1, "PropertyUpdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 149
    if-eqz p1, :cond_0

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->handlePropertyUpdate(Lorg/json/JSONObject;)I

    move-result v0

    .line 162
    :goto_0
    return v0

    .line 154
    :cond_1
    const-string/jumbo v0, "nf-bridge"

    const-string/jumbo v1, "processUpdate: handle event"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->handleEvent(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 158
    :catch_0
    move-exception v0

    .line 159
    const-string/jumbo v1, "nf-bridge"

    const-string/jumbo v2, "Failed with JSON"

    invoke-static {v1, v2, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 162
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setUILanguages([Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 338
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->uiLanguages:[Ljava/lang/String;

    .line 339
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->joinArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v1}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v1

    const-string/jumbo v2, "device"

    const-string/jumbo v3, "UILanguages"

    invoke-interface {v1, v2, v3, v0}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    return-void
.end method

.method public setUIVersion(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 321
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->uiVersion:Ljava/lang/String;

    .line 322
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "device"

    const-string/jumbo v2, "UIVersion"

    invoke-interface {v0, v1, v2, p1}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    return-void
.end method
