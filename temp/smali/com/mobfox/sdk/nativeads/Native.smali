.class public Lcom/mobfox/sdk/nativeads/Native;
.super Ljava/lang/Object;
.source "Native.java"


# static fields
.field private static final MY_PERMISSIONS_REQUEST_FINE_LOCATION:I = 0x1

.field static debug:Z

.field public static loc:Z


# instance fields
.field ad:Lcom/mobfox/sdk/nativeads/NativeAd;

.field context:Landroid/content/Context;

.field customEventNativeListener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

.field handler:Landroid/os/Handler;

.field iter:Lcom/mobfox/sdk/nativeads/EventIterator;

.field listener:Lcom/mobfox/sdk/nativeads/NativeListener;

.field location:Landroid/location/Location;

.field locationService:Lcom/mobfox/sdk/services/MobFoxLocationService;

.field public params:Lcom/mobfox/sdk/networking/RequestParams;

.field readyListener:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

.field respHandler:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

.field secure:Z

.field self:Lcom/mobfox/sdk/nativeads/Native;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36
    sput-boolean v0, Lcom/mobfox/sdk/nativeads/Native;->loc:Z

    .line 48
    sput-boolean v0, Lcom/mobfox/sdk/nativeads/Native;->debug:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v1, p0, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    .line 35
    iput-object v1, p0, Lcom/mobfox/sdk/nativeads/Native;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mobfox/sdk/nativeads/Native;->secure:Z

    .line 39
    iput-object v1, p0, Lcom/mobfox/sdk/nativeads/Native;->handler:Landroid/os/Handler;

    .line 40
    new-instance v0, Lcom/mobfox/sdk/networking/RequestParams;

    invoke-direct {v0}, Lcom/mobfox/sdk/networking/RequestParams;-><init>()V

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->params:Lcom/mobfox/sdk/networking/RequestParams;

    .line 56
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Native;->context:Landroid/content/Context;

    .line 57
    iput-object p0, p0, Lcom/mobfox/sdk/nativeads/Native;->self:Lcom/mobfox/sdk/nativeads/Native;

    .line 59
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->handler:Landroid/os/Handler;

    .line 61
    invoke-virtual {p0}, Lcom/mobfox/sdk/nativeads/Native;->init()V

    .line 62
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "debug"    # Z

    .prologue
    .line 236
    sput-boolean p0, Lcom/mobfox/sdk/nativeads/Native;->debug:Z

    .line 237
    return-void
.end method

.method public static setLoc(Z)V
    .locals 0
    .param p0, "loc"    # Z

    .prologue
    .line 260
    sput-boolean p0, Lcom/mobfox/sdk/nativeads/Native;->loc:Z

    .line 261
    return-void
.end method


# virtual methods
.method public getListener()Lcom/mobfox/sdk/nativeads/NativeListener;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    return-object v0
.end method

.method protected getLocation()V
    .locals 3

    .prologue
    .line 187
    sget-boolean v0, Lcom/mobfox/sdk/nativeads/Native;->loc:Z

    if-nez v0, :cond_0

    .line 201
    :goto_0
    return-void

    .line 190
    :cond_0
    new-instance v0, Lcom/mobfox/sdk/services/MobFoxLocationService;

    new-instance v1, Lcom/mobfox/sdk/nativeads/Native$4;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/nativeads/Native$4;-><init>(Lcom/mobfox/sdk/nativeads/Native;)V

    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/Native;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/services/MobFoxLocationService;-><init>(Lcom/mobfox/sdk/services/MobFoxLocationService$Listener;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->locationService:Lcom/mobfox/sdk/services/MobFoxLocationService;

    .line 200
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->locationService:Lcom/mobfox/sdk/services/MobFoxLocationService;

    invoke-virtual {v0}, Lcom/mobfox/sdk/services/MobFoxLocationService;->execute()V

    goto :goto_0
.end method

.method public getRespHandler()Lcom/mobfox/sdk/networking/AsyncCallbackJSON;
    .locals 1

    .prologue
    .line 226
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->respHandler:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    return-object v0
.end method

.method handleEvents()V
    .locals 3

    .prologue
    .line 209
    const-string v0, "MobFoxNative"

    const-string v1, "handle custom events"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->iter:Lcom/mobfox/sdk/nativeads/EventIterator;

    invoke-virtual {v0}, Lcom/mobfox/sdk/nativeads/EventIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->iter:Lcom/mobfox/sdk/nativeads/EventIterator;

    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/Native;->customEventNativeListener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/nativeads/EventIterator;->callNextEvent(Lcom/mobfox/sdk/customevents/CustomEventNativeListener;)V

    .line 217
    :goto_0
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "no native ad returned"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/nativeads/NativeListener;->onNativeError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/mobfox/sdk/nativeads/Native;->getLocation()V

    .line 67
    new-instance v0, Lcom/mobfox/sdk/nativeads/Native$1;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/nativeads/Native$1;-><init>(Lcom/mobfox/sdk/nativeads/Native;)V

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->customEventNativeListener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    .line 105
    new-instance v0, Lcom/mobfox/sdk/nativeads/Native$2;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/nativeads/Native$2;-><init>(Lcom/mobfox/sdk/nativeads/Native;)V

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->respHandler:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    .line 135
    new-instance v0, Lcom/mobfox/sdk/nativeads/Native$3;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/nativeads/Native$3;-><init>(Lcom/mobfox/sdk/nativeads/Native;)V

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->readyListener:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

    .line 156
    return-void
.end method

.method iterate(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/HashMap;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 182
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .local p4, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p1, p2, p3, v0}, Lcom/mobfox/sdk/nativeads/EventIterator;->parse(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/Map;)Lcom/mobfox/sdk/nativeads/EventIterator;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->iter:Lcom/mobfox/sdk/nativeads/EventIterator;

    .line 183
    invoke-virtual {p0}, Lcom/mobfox/sdk/nativeads/Native;->handleEvents()V

    .line 184
    return-void
.end method

.method public load(Ljava/lang/String;)V
    .locals 4
    .param p1, "invh"    # Ljava/lang/String;

    .prologue
    .line 159
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    :cond_0
    const-string v0, "MobFoxNative"

    const-string v1, "no invh provided, aborting."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    if-eqz v0, :cond_1

    .line 162
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "inventory hash is not available"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/nativeads/NativeListener;->onNativeError(Ljava/lang/Exception;)V

    .line 174
    :cond_1
    :goto_0
    return-void

    .line 167
    :cond_2
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->params:Lcom/mobfox/sdk/networking/RequestParams;

    const-string v1, "s"

    invoke-virtual {v0, v1, p1}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-boolean v0, Lcom/mobfox/sdk/nativeads/Native;->debug:Z

    if-eqz v0, :cond_3

    .line 170
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->params:Lcom/mobfox/sdk/networking/RequestParams;

    const-string v1, "m"

    const-string v2, "test"

    invoke-virtual {v0, v1, v2}, Lcom/mobfox/sdk/networking/RequestParams;->setParam(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    :cond_3
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/Native;->params:Lcom/mobfox/sdk/networking/RequestParams;

    iget-boolean v2, p0, Lcom/mobfox/sdk/nativeads/Native;->secure:Z

    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/Native;->readyListener:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/mobfox/sdk/nativeads/Native;->makeRequest(Landroid/content/Context;Lcom/mobfox/sdk/networking/RequestParams;ZLcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;)V

    goto :goto_0
.end method

.method makeRequest(Landroid/content/Context;Lcom/mobfox/sdk/networking/RequestParams;ZLcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "params"    # Lcom/mobfox/sdk/networking/RequestParams;
    .param p3, "secure"    # Z
    .param p4, "readyListener"    # Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

    .prologue
    .line 177
    new-instance v0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/networking/RequestParams;ZLcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;)V

    .line 178
    .local v0, "builder":Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;
    invoke-virtual {v0}, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->build()V

    .line 179
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 204
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->locationService:Lcom/mobfox/sdk/services/MobFoxLocationService;

    if-nez v0, :cond_0

    .line 206
    :goto_0
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native;->locationService:Lcom/mobfox/sdk/services/MobFoxLocationService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/mobfox/sdk/services/MobFoxLocationService;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public setListener(Lcom/mobfox/sdk/nativeads/NativeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/mobfox/sdk/nativeads/NativeListener;

    .prologue
    .line 244
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    .line 245
    return-void
.end method

.method public setLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 252
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Native;->location:Landroid/location/Location;

    .line 253
    return-void
.end method

.method public setParams(Lcom/mobfox/sdk/networking/RequestParams;)V
    .locals 0
    .param p1, "params"    # Lcom/mobfox/sdk/networking/RequestParams;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Native;->params:Lcom/mobfox/sdk/networking/RequestParams;

    .line 241
    return-void
.end method

.method public setReadyListener(Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;)V
    .locals 0
    .param p1, "readyListener"    # Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Native;->readyListener:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

    .line 257
    return-void
.end method

.method public setRespHandler(Lcom/mobfox/sdk/networking/AsyncCallbackJSON;)V
    .locals 0
    .param p1, "respHandler"    # Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    .prologue
    .line 232
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Native;->respHandler:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    .line 233
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "secure"    # Z

    .prologue
    .line 248
    iput-boolean p1, p0, Lcom/mobfox/sdk/nativeads/Native;->secure:Z

    .line 249
    return-void
.end method
