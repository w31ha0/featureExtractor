.class public final Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;
.super Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;
.source "NativeLog.java"

# interfaces
.implements Lcom/netflix/mediaclient/javabridge/ui/Log;


# static fields
.field public static final CMD_RESULT_EVENT_resetAppID:Ljava/lang/String; = "appIDChanged"

.field public static final CMD_RESULT_EVENT_resetSessionID:Ljava/lang/String; = "sessionIDChanged"

.field public static final METHOD_resetAppID:Ljava/lang/String; = "resetAppID"

.field public static final METHOD_resetSessionID:Ljava/lang/String; = "resetSessionID"

.field public static final PROPERTY_APP_ID:Ljava/lang/String; = "appid"

.field public static final PROPERTY_ASE_CODES:Ljava/lang/String; = "aseCodes"

.field public static final PROPERTY_SESSION_ID:Ljava/lang/String; = "sessionid"

.field public static final PROPERTY_XID:Ljava/lang/String; = "xid"

.field private static sAseCodes:Lorg/json/JSONObject;


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

.field private mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

.field private mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

.field private mSessionId:Ljava/lang/String;

.field private mXid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeNrdObject;-><init>(Lcom/netflix/mediaclient/javabridge/Bridge;)V

    .line 77
    return-void
.end method

.method public static getAseCodes()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 319
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->sAseCodes:Lorg/json/JSONObject;

    return-object v0
.end method

.method private handleEvent(Lorg/json/JSONObject;)I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 184
    const-string/jumbo v0, "data"

    invoke-virtual {p0, p1, v0, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 185
    const-string/jumbo v1, "name"

    invoke-virtual {p0, p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 186
    if-eqz v0, :cond_1

    .line 188
    const-string/jumbo v2, "nf_object"

    const-string/jumbo v3, "handleEvent data !null"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const-string/jumbo v2, "appIDChanged"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 190
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handleResetAppId(Lorg/json/JSONObject;)I

    move-result v0

    .line 199
    :goto_0
    return v0

    .line 193
    :cond_0
    const-string/jumbo v2, "sessionIDChanged"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    invoke-direct {p0, v0}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handleResetSessionId(Lorg/json/JSONObject;)I

    move-result v0

    goto :goto_0

    .line 198
    :cond_1
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Nobody to handle!"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handlePropertyUpdate(Lorg/json/JSONObject;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    const-string/jumbo v0, "properties"

    invoke-virtual {p0, p1, v0, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 143
    if-nez v0, :cond_0

    .line 144
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handlePropertyUpdate:: properties does not exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    .line 148
    :cond_0
    const-string/jumbo v1, "appid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 149
    const-string/jumbo v1, "appid"

    invoke-virtual {p0, v0, v1, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    .line 150
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    if-eqz v1, :cond_1

    .line 154
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;->onSet(Ljava/lang/String;)V

    .line 155
    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    .line 159
    :cond_1
    const-string/jumbo v1, "xid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    const-string/jumbo v1, "xid"

    invoke-virtual {p0, v0, v1, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mXid:Ljava/lang/String;

    .line 163
    :cond_2
    const-string/jumbo v1, "sessionid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 164
    const-string/jumbo v1, "sessionid"

    invoke-virtual {p0, v0, v1, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 167
    :cond_3
    const-string/jumbo v1, "aseCodes"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 168
    const-string/jumbo v1, "aseCodes"

    invoke-virtual {p0, v0, v1, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getJSONObject(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->sAseCodes:Lorg/json/JSONObject;

    .line 172
    :cond_4
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private handleResetAppId(Lorg/json/JSONObject;)I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 205
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 207
    const-string/jumbo v0, "sessionid"

    invoke-virtual {p0, p1, v0, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    const-string/jumbo v1, "appid"

    invoke-virtual {p0, p1, v1, v4}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 214
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    .line 215
    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 216
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    iget-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;->onSet(Ljava/lang/String;)V

    .line 221
    iput-object v4, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

    if-eqz v2, :cond_1

    .line 225
    const-string/jumbo v2, "nf_object"

    const-string/jumbo v3, "Log.handleResetAppId:: app id is changed and callback exist, report"

    invoke-static {v2, v3}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

    invoke-interface {v2, v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;->changed(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 228
    :cond_1
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handleResetAppId:: app id is changed but callback does NOT exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private handleResetSessionId(Lorg/json/JSONObject;)I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 235
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 236
    const-string/jumbo v0, "sessionid"

    invoke-virtual {p0, p1, v0, v3}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    iput-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    .line 242
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    if-eqz v1, :cond_0

    .line 243
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "Log.handleResetSessionId:: session id is changed and callback exist, report"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    invoke-interface {v1, v0}, Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;->sessionCreated(Ljava/lang/String;)V

    .line 245
    iput-object v3, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    .line 249
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 247
    :cond_0
    const-string/jumbo v0, "nf_object"

    const-string/jumbo v1, "Log.handleResetSessionId:: session id is changed but callback does NOT exist"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const-string/jumbo v0, "log"

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string/jumbo v0, "nrdp.log"

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public getXid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mXid:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized processUpdate(Lorg/json/JSONObject;)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 114
    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "type"

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 119
    const-string/jumbo v2, "PropertyUpdate"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 120
    if-eqz p1, :cond_0

    .line 123
    :cond_0
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handlePropertyUpdate(Lorg/json/JSONObject;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 133
    :goto_0
    monitor-exit p0

    return v0

    .line 125
    :cond_1
    :try_start_1
    const-string/jumbo v1, "nf_object"

    const-string/jumbo v2, "processUpdate: handle event"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->handleEvent(Lorg/json/JSONObject;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v1

    .line 130
    :try_start_2
    const-string/jumbo v2, "nf_object"

    const-string/jumbo v3, "Failed with JSON"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v2, v1, v3, v4}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 114
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public resetAppID()V
    .locals 4

    .prologue
    .line 292
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "resetAppID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    return-void
.end method

.method public resetSessionID(Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;)V
    .locals 4

    .prologue
    .line 282
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mSessionCallback:Lcom/netflix/mediaclient/javabridge/ui/Log$ResetSessionIdCallback;

    .line 283
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->bridge:Lcom/netflix/mediaclient/javabridge/Bridge;

    invoke-interface {v0}, Lcom/netflix/mediaclient/javabridge/Bridge;->getNrdProxy()Lcom/netflix/mediaclient/javabridge/NrdProxy;

    move-result-object v0

    const-string/jumbo v1, "log"

    const-string/jumbo v2, "resetSessionID"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/NrdProxy;->invokeMethod(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public setAppIdChangedListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdChangedListener;

    .line 302
    return-void
.end method

.method public setAppIdSetListener(Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 306
    if-eqz p1, :cond_1

    .line 307
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 308
    iget-object v0, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppId:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;->onSet(Ljava/lang/String;)V

    .line 309
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    .line 316
    :goto_0
    return-void

    .line 311
    :cond_0
    iput-object p1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    goto :goto_0

    .line 314
    :cond_1
    iput-object v1, p0, Lcom/netflix/mediaclient/javabridge/ui/android/NativeLog;->mAppIdSetListener:Lcom/netflix/mediaclient/javabridge/ui/Log$AppIdSetListener;

    goto :goto_0
.end method
