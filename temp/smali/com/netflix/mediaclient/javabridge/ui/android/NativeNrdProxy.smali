.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;
.super Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;
.source "NativeNrdProxy.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private nrdp:Lcom/netflix/mediaclient/javabridge/NrdpObject;

.field private objMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/netflix/mediaclient/javabridge/NrdpObject;",
            ">;"
        }
    .end annotation
.end field

.field private player:Lcom/netflix/mediaclient/javabridge/NrdpObject;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 6

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/BaseNrdProxy;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 21
    const-string/jumbo v0, "native_nrd_proxy"

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    .line 45
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "Add all NRD objects"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdp;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->nrdp:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    .line 47
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativePlayer;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->player:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    .line 48
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 49
    new-instance v1, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;

    invoke-direct {v1, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 50
    new-instance v2, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;

    invoke-direct {v2, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 51
    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->nrdp:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v4}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->nrdp:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->player:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v4}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->getPath()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->player:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeDevice;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeStorage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method private getKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 76
    if-nez p1, :cond_1

    .line 77
    const-string/jumbo p1, "nrdp"

    .line 84
    :cond_0
    :goto_0
    return-object p1

    .line 80
    :cond_1
    const-string/jumbo v0, "nrdp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "nrdp."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private handleName(Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 164
    const-string/jumbo v1, "native_nrd_proxy"

    const-string/jumbo v2, "MUNRDP::handleName: start"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const-string/jumbo v1, "name"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    if-nez v1, :cond_1

    .line 168
    const-string/jumbo v1, "native_nrd_proxy"

    const-string/jumbo v2, "handleName:: name not found"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    const-string/jumbo v2, "IMediaControl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 173
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "handleName:: IMC event, pass to Media proxy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->player:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->processUpdate(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 175
    :cond_2
    const-string/jumbo v2, "background"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 176
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "handleName:: background event, pass to Media proxy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->player:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->processUpdate(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 178
    :cond_3
    const-string/jumbo v2, "ObjectSyncComplete"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "handleName:: ObjectSyncComplete event, pass to Nrdp proxy"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->nrdp:Lcom/netflix/mediaclient/javabridge/NrdpObject;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->processUpdate(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0
.end method

.method private handleObject(Lorg/json/JSONObject;)I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 199
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v2, "MUNRDP::handleObject: start"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const-string/jumbo v0, "object"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    if-nez v0, :cond_0

    .line 203
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v2, "handleObject:: object not found"

    invoke-static {v0, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 219
    :goto_0
    return v0

    .line 207
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->getKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/NrdpObject;

    .line 208
    if-eqz v0, :cond_1

    .line 212
    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/NrdpObject;->processUpdate(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 219
    goto :goto_0
.end method


# virtual methods
.method public findObjectCache(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/NrdpObject;
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->objMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/NrdpObject;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 227
    const-string/jumbo v0, "native_nrd_proxy"

    return-object v0
.end method

.method public invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V
    .locals 2

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->getLogTag()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Command is nul, noop"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :goto_0
    return-void

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0, p1}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->invokeMethod(Lcom/netflix/mediaclient/javabridge/invoke/Invoke;)V

    goto :goto_0

    .line 117
    :cond_1
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "NrdLIb not initialized, initTimeout most likely."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "NrdLIb not initialized, initTimeout most likely."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public processUpdate(Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->handleName(Lorg/json/JSONObject;)I

    move-result v1

    .line 134
    if-ne v3, v1, :cond_1

    .line 135
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "MUNRDP::processUpdate: update consumed by name handler"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 138
    :cond_1
    const-string/jumbo v2, "object"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 139
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "Object property not found. Push update!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    const-string/jumbo v1, "native_nrd_proxy"

    const-string/jumbo v2, "Invalid JSON string received from NRDlib"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2, v3}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 142
    :cond_2
    if-nez v1, :cond_0

    .line 143
    :try_start_1
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->handleObject(Lorg/json/JSONObject;)I

    move-result v0

    .line 144
    if-ne v3, v0, :cond_0

    .line 145
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "MUNRDP::processUpdate: update consumed by object handler"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdProxy;->transport:Lcom/netflix/mediaclient/javabridge/transport/Transport;

    invoke-interface {v0, p1, p2, p3}, Lcom/netflix/mediaclient/javabridge/transport/Transport;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const-string/jumbo v0, "native_nrd_proxy"

    const-string/jumbo v1, "NrdLIb not initialized, initTimeout most likely."

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
