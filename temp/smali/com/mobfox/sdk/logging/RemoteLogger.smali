.class public Lcom/mobfox/sdk/logging/RemoteLogger;
.super Ljava/lang/Object;
.source "RemoteLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/logging/RemoteLogger$Message;
    }
.end annotation


# static fields
.field public static final DOMAIN:Ljava/lang/String; = "http://sdk-logs.matomy.com"

.field public static final PATHNAME:Ljava/lang/String; = "gelf"

.field public static final PORT:I = 0x2fa9


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static getJSON(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "invh"    # Ljava/lang/String;
    .param p2, "short_message"    # Ljava/lang/String;
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "extraData"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 36
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "ua"

    new-instance v3, Landroid/webkit/WebView;

    invoke-direct {v3, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    const-string v2, "id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    const-string v2, "host"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    const-string v2, "core"

    const-string v3, "Core_3.2.7"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    const-string v2, "invh"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    const-string v2, "message"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v2, "facility"

    invoke-virtual {v1, v2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    const-string v2, "extra"

    invoke-virtual {v1, v2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v1    # "json":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getJSON(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Lorg/json/JSONObject;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "invh"    # Ljava/lang/String;
    .param p2, "short_message"    # Ljava/lang/String;
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "extraData"    # Ljava/lang/String;
    .param p5, "err"    # Ljava/lang/Exception;

    .prologue
    .line 53
    :try_start_0
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 54
    .local v4, "stack":Lorg/json/JSONArray;
    invoke-virtual {p5}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 55
    .local v1, "elements":[Ljava/lang/StackTraceElement;
    array-length v7, v1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v5, v1, v6

    .line 56
    .local v5, "ste":Ljava/lang/StackTraceElement;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " >> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 57
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "()"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 58
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v4, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "s":Ljava/lang/String;
    .end local v5    # "ste":Ljava/lang/StackTraceElement;
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v2, "json":Lorg/json/JSONObject;
    const-string v6, "ua"

    new-instance v7, Landroid/webkit/WebView;

    invoke-direct {v7, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v7

    invoke-virtual {v7}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string v6, "error"

    invoke-virtual {p5}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    const-string v6, "id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    const-string v6, "host"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 65
    const-string v6, "core"

    invoke-virtual {v2, v6, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    const-string v6, "invh"

    invoke-virtual {v2, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    const-string v6, "message"

    invoke-virtual {v2, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string v6, "facility"

    invoke-virtual {v2, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v6, "extra"

    invoke-virtual {v2, v6, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v6, "platform"

    const-string v7, "android"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    .end local v1    # "elements":[Ljava/lang/StackTraceElement;
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v4    # "stack":Lorg/json/JSONArray;
    :goto_1
    return-object v2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "invh"    # Ljava/lang/String;
    .param p2, "short_message"    # Ljava/lang/String;
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "pubId"    # Ljava/lang/String;

    .prologue
    .line 92
    sget-boolean v2, Lcom/mobfox/sdk/bannerads/Banner;->DEBUG_MODE:Z

    if-nez v2, :cond_0

    .line 100
    :goto_0
    return-void

    .line 95
    :cond_0
    :try_start_0
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mobfox/sdk/logging/RemoteLogger;->getJSON(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 96
    .local v0, "data":Lorg/json/JSONObject;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/mobfox/sdk/logging/RemoteLogger;->postToGrayLog(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 97
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "MobFoxBanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send log failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static post(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "invh"    # Ljava/lang/String;
    .param p2, "short_message"    # Ljava/lang/String;
    .param p3, "facility"    # Ljava/lang/String;
    .param p4, "pubId"    # Ljava/lang/String;
    .param p5, "err"    # Ljava/lang/Exception;

    .prologue
    .line 80
    sget-boolean v2, Lcom/mobfox/sdk/bannerads/Banner;->DEBUG_MODE:Z

    if-nez v2, :cond_0

    .line 88
    :goto_0
    return-void

    .line 83
    :cond_0
    :try_start_0
    invoke-static/range {p0 .. p5}, Lcom/mobfox/sdk/logging/RemoteLogger;->getJSON(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)Lorg/json/JSONObject;

    move-result-object v0

    .line 84
    .local v0, "data":Lorg/json/JSONObject;
    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/mobfox/sdk/logging/RemoteLogger;->postToGrayLog(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    .end local v0    # "data":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 86
    .local v1, "throwable":Ljava/lang/Throwable;
    const-string v2, "MobFoxBanner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send log failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postToGrayLog(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "cb"    # Lcom/mobfox/sdk/networking/AsyncCallback;

    .prologue
    .line 104
    :try_start_0
    new-instance v1, Lcom/mobfox/sdk/networking/MobFoxRequest;

    const-string v2, "http://sdk-logs.matomy.com:12201/gelf"

    invoke-direct {v1, p0, v2}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    .local v1, "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/mobfox/sdk/networking/MobFoxRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/mobfox/sdk/networking/MobFoxRequest;

    move-result-object v1

    .line 106
    invoke-virtual {v1, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest;->setData(Lorg/json/JSONObject;)Lcom/mobfox/sdk/networking/MobFoxRequest;

    .line 107
    invoke-virtual {v1, p2}, Lcom/mobfox/sdk/networking/MobFoxRequest;->post(Lcom/mobfox/sdk/networking/AsyncCallback;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .end local v1    # "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    :goto_0
    return-void

    .line 108
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "MobFoxGraylog"

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
