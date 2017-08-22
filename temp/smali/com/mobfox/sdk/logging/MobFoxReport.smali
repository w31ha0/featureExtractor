.class public Lcom/mobfox/sdk/logging/MobFoxReport;
.super Ljava/lang/Object;
.source "MobFoxReport.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;
    }
.end annotation


# static fields
.field public static final DOMAIN:Ljava/lang/String; = "http://sdk-logs.matomy.com"

.field public static final PATHNAME:Ljava/lang/String; = "gelf"

.field public static final PORT:I = 0x2fa9

.field protected static isRegistered:Z


# instance fields
.field context:Landroid/content/Context;

.field defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field ua:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mobfox/sdk/logging/MobFoxReport;->isRegistered:Z

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/logging/MobFoxReport;->ua:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lcom/mobfox/sdk/logging/MobFoxReport;->context:Landroid/content/Context;

    .line 55
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 56
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mobfox/sdk/logging/MobFoxReport;->ua:Ljava/lang/String;

    .line 58
    :cond_0
    return-void
.end method

.method public static getCause(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 123
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 125
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v0

    .line 125
    .local v0, "err":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getCurrentThreadName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 115
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 117
    .local v0, "err":Ljava/lang/Exception;
    :goto_0
    return-object v1

    .line 116
    .end local v0    # "err":Ljava/lang/Exception;
    :catch_0
    move-exception v0

    .line 117
    .restart local v0    # "err":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;
    .locals 2
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 96
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 99
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "err":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getErrorStack(Ljava/lang/Exception;)Lorg/json/JSONArray;
    .locals 9
    .param p0, "e"    # Ljava/lang/Exception;

    .prologue
    .line 81
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 82
    .local v3, "stack":Lorg/json/JSONArray;
    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 83
    .local v0, "elements":[Ljava/lang/StackTraceElement;
    array-length v6, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v4, v0, v5

    .line 84
    .local v4, "ste":Ljava/lang/StackTraceElement;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " >> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 85
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "()"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "s":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 89
    .end local v0    # "elements":[Ljava/lang/StackTraceElement;
    .end local v2    # "s":Ljava/lang/String;
    .end local v3    # "stack":Lorg/json/JSONArray;
    .end local v4    # "ste":Ljava/lang/StackTraceElement;
    :catch_0
    move-exception v1

    .line 90
    .local v1, "err":Ljava/lang/Exception;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .end local v1    # "err":Ljava/lang/Exception;
    :cond_0
    return-object v3
.end method

.method public static getLogJson(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 138
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 140
    .local v1, "json":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "short_message"

    sget-object v3, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->ANDROID:Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    invoke-virtual {v3}, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v2, "current_thread"

    invoke-static {}, Lcom/mobfox/sdk/logging/MobFoxReport;->getCurrentThreadName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 142
    const-string v2, "ua"

    invoke-static {p0}, Lcom/mobfox/sdk/logging/MobFoxReport;->getUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    const-string v2, "publisher_package"

    invoke-static {p0}, Lcom/mobfox/sdk/logging/MobFoxReport;->getPublisherPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 144
    const-string v2, "host"

    const-string v3, "MobFox.Android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    const-string v2, "sdk_version"

    const-string v3, "Core_3.2.7"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :goto_0
    return-object v1

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static getPublisherPackage(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 131
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 133
    :goto_0
    return-object v1

    .line 132
    :catch_0
    move-exception v0

    .line 133
    .local v0, "err":Ljava/lang/Exception;
    const-string v1, ""

    goto :goto_0
.end method

.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    if-eq v2, v3, :cond_0

    const-string v1, ""

    .line 109
    :goto_0
    return-object v1

    .line 106
    :cond_0
    :try_start_0
    new-instance v2, Landroid/webkit/WebView;

    invoke-direct {v2, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 107
    .local v1, "ua":Ljava/lang/String;
    goto :goto_0

    .line 108
    .end local v1    # "ua":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 109
    .local v0, "err":Ljava/lang/Throwable;
    const-string v1, ""

    goto :goto_0
.end method

.method public static post(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "data"    # Lorg/json/JSONObject;
    .param p2, "cb"    # Lcom/mobfox/sdk/networking/AsyncCallback;

    .prologue
    .line 154
    :try_start_0
    new-instance v1, Lcom/mobfox/sdk/networking/MobFoxRequest;

    const-string v2, "http://sdk-logs.matomy.com:12201/gelf"

    invoke-direct {v1, p0, v2}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 155
    .local v1, "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    const-string v2, "Content-Type"

    const-string v3, "application/json"

    invoke-virtual {v1, v2, v3}, Lcom/mobfox/sdk/networking/MobFoxRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/mobfox/sdk/networking/MobFoxRequest;

    move-result-object v1

    .line 156
    invoke-virtual {v1, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest;->setData(Lorg/json/JSONObject;)Lcom/mobfox/sdk/networking/MobFoxRequest;

    .line 157
    invoke-virtual {v1, p2}, Lcom/mobfox/sdk/networking/MobFoxRequest;->post(Lcom/mobfox/sdk/networking/AsyncCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    :goto_0
    return-void

    .line 158
    :catch_0
    move-exception v0

    .line 159
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "MobFoxGraylog"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static postCrash(Landroid/content/Context;Ljava/lang/Throwable;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "cb"    # Lcom/mobfox/sdk/networking/AsyncCallback;

    .prologue
    .line 181
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 183
    .local v0, "e":Ljava/lang/Exception;
    :try_start_0
    invoke-static {p0}, Lcom/mobfox/sdk/logging/MobFoxReport;->getLogJson(Landroid/content/Context;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 185
    .local v2, "log":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "cause"

    invoke-static {v0}, Lcom/mobfox/sdk/logging/MobFoxReport;->getCause(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v3, "stack"

    invoke-static {v0}, Lcom/mobfox/sdk/logging/MobFoxReport;->getErrorStack(Ljava/lang/Exception;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v3, "error_message"

    invoke-static {v0}, Lcom/mobfox/sdk/logging/MobFoxReport;->getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    const-string v3, "short_message"

    sget-object v4, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->CRASH:Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    invoke-virtual {v4}, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    const-string v3, "facility"

    const-string v4, "crash"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    :goto_0
    :try_start_2
    invoke-static {p0, v2, p2}, Lcom/mobfox/sdk/logging/MobFoxReport;->post(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 195
    .end local v2    # "log":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 192
    :catch_0
    move-exception v1

    .line 193
    .local v1, "err":Ljava/lang/Exception;
    const-string v3, "MobFoxGraylog"

    const-string v4, "incomplete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 190
    .end local v1    # "err":Ljava/lang/Exception;
    .restart local v2    # "log":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static postException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "t"    # Ljava/lang/Throwable;
    .param p2, "cb"    # Lcom/mobfox/sdk/networking/AsyncCallback;

    .prologue
    .line 164
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/Throwable;)V

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    :try_start_0
    invoke-static {p0}, Lcom/mobfox/sdk/logging/MobFoxReport;->getLogJson(Landroid/content/Context;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 168
    .local v2, "log":Lorg/json/JSONObject;
    :try_start_1
    const-string v3, "cause"

    invoke-static {v0}, Lcom/mobfox/sdk/logging/MobFoxReport;->getCause(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
    const-string v3, "stack"

    invoke-static {v0}, Lcom/mobfox/sdk/logging/MobFoxReport;->getErrorStack(Ljava/lang/Exception;)Lorg/json/JSONArray;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 170
    const-string v3, "error_message"

    invoke-static {v0}, Lcom/mobfox/sdk/logging/MobFoxReport;->getErrorMessage(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v3, "short_message"

    sget-object v4, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->ANDROID:Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;

    invoke-virtual {v4}, Lcom/mobfox/sdk/logging/MobFoxReport$SHORT_MESSAGE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v3, "facility"

    const-string v4, "exception"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 174
    :goto_0
    :try_start_2
    invoke-static {p0, v2, p2}, Lcom/mobfox/sdk/logging/MobFoxReport;->post(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    .end local v2    # "log":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 175
    :catch_0
    move-exception v1

    .line 176
    .local v1, "err":Ljava/lang/Exception;
    const-string v3, "MobFoxGraylog"

    const-string v4, "incomplete"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 173
    .end local v1    # "err":Ljava/lang/Exception;
    .restart local v2    # "log":Lorg/json/JSONObject;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public static declared-synchronized register(Landroid/content/Context;)V
    .locals 4
    .param p0, "c"    # Landroid/content/Context;

    .prologue
    .line 41
    const-class v3, Lcom/mobfox/sdk/logging/MobFoxReport;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/mobfox/sdk/logging/MobFoxReport;->isRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    .line 51
    :goto_0
    monitor-exit v3

    return-void

    .line 43
    :cond_0
    :try_start_1
    new-instance v0, Lcom/mobfox/sdk/logging/MobFoxReport;

    invoke-direct {v0, p0}, Lcom/mobfox/sdk/logging/MobFoxReport;-><init>(Landroid/content/Context;)V

    .line 44
    .local v0, "crashCatcher":Lcom/mobfox/sdk/logging/MobFoxReport;
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 45
    .local v1, "defaultHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    if-eqz v1, :cond_1

    .line 46
    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/logging/MobFoxReport;->setDefaultHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 48
    :cond_1
    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 50
    const/4 v2, 0x1

    sput-boolean v2, Lcom/mobfox/sdk/logging/MobFoxReport;->isRegistered:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 41
    .end local v0    # "crashCatcher":Lcom/mobfox/sdk/logging/MobFoxReport;
    .end local v1    # "defaultHandler":Ljava/lang/Thread$UncaughtExceptionHandler;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method protected setDefaultHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0
    .param p1, "defaultHandler"    # Ljava/lang/Thread$UncaughtExceptionHandler;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/mobfox/sdk/logging/MobFoxReport;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 38
    return-void
.end method

.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Thread;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mobfox/sdk/logging/MobFoxReport;->context:Landroid/content/Context;

    new-instance v1, Lcom/mobfox/sdk/logging/MobFoxReport$1;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/logging/MobFoxReport$1;-><init>(Lcom/mobfox/sdk/logging/MobFoxReport;)V

    invoke-static {v0, p2, v1}, Lcom/mobfox/sdk/logging/MobFoxReport;->postCrash(Landroid/content/Context;Ljava/lang/Throwable;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 74
    iget-object v0, p0, Lcom/mobfox/sdk/logging/MobFoxReport;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_0

    .line 75
    iget-object v0, p0, Lcom/mobfox/sdk/logging/MobFoxReport;->defaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 77
    :cond_0
    return-void
.end method
