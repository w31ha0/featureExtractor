.class public Lcom/mobfox/sdk/networking/MobFoxRequest;
.super Ljava/lang/Object;
.source "MobFoxRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/networking/MobFoxRequest$DefaultResponseFormatter;,
        Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;
    }
.end annotation


# instance fields
.field data:Lorg/json/JSONObject;

.field headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field parameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field testMode:Z

.field timeout:I

.field url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->testMode:Z

    .line 76
    iput v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->timeout:I

    .line 79
    iput-object p2, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->url:Ljava/lang/String;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->parameters:Ljava/util/Map;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->headers:Ljava/util/Map;

    .line 85
    return-void
.end method

.method private static _call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;IZLcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;Lcom/mobfox/sdk/networking/AsyncCallback;)V
    .locals 14
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/Object;
    .param p4, "timeout"    # I
    .param p5, "testMode"    # Z
    .param p6, "formatter"    # Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;
    .param p7, "cb"    # Lcom/mobfox/sdk/networking/AsyncCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;",
            "Lcom/mobfox/sdk/networking/AsyncCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    .local p3, "reqHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .local v13, "query":Ljava/lang/StringBuilder;
    const-string v3, "GET"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object/from16 v12, p2

    .line 112
    check-cast v12, Ljava/util/Map;

    .line 113
    .local v12, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v12}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 115
    .local v11, "k":Ljava/lang/String;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v6, "utf-8"

    invoke-static {v3, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 116
    :catch_0
    move-exception v3

    goto :goto_0

    .line 121
    .end local v11    # "k":Ljava/lang/String;
    .end local v12    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    move-object v10, p0

    .line 123
    .local v10, "fullURL":Ljava/lang/String;
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 124
    const-string v3, "?"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_2

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 129
    :cond_1
    :goto_1
    move-object v2, v10

    .line 131
    .local v2, "finalURL":Ljava/lang/String;
    new-instance v1, Lcom/mobfox/sdk/networking/MobFoxRequest$1;

    move-object/from16 v3, p3

    move-object v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v1 .. v8}, Lcom/mobfox/sdk/networking/MobFoxRequest$1;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;ILjava/lang/Object;Lcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 206
    .local v1, "t":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;>;"
    if-eqz p5, :cond_3

    .line 207
    const/4 v3, 0x0

    :try_start_1
    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    :goto_2
    return-void

    .line 126
    .end local v1    # "t":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;>;"
    .end local v2    # "finalURL":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_1

    .line 209
    .restart local v1    # "t":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;>;"
    .restart local v2    # "finalURL":Ljava/lang/String;
    :cond_3
    :try_start_2
    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 212
    :catch_1
    move-exception v9

    .line 213
    .local v9, "err":Ljava/lang/Throwable;
    const-string v3, "MobFoxNetwork"

    const-string v4, "Unable to complete request!"

    invoke-static {v3, v4, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    new-instance v3, Ljava/lang/Exception;

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p7

    invoke-interface {v0, v3}, Lcom/mobfox/sdk/networking/AsyncCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_2

    .line 117
    .end local v1    # "t":Landroid/os/AsyncTask;, "Landroid/os/AsyncTask<Ljava/lang/String;Ljava/lang/Void;Ljava/lang/String;>;"
    .end local v2    # "finalURL":Ljava/lang/String;
    .end local v9    # "err":Ljava/lang/Throwable;
    .end local v10    # "fullURL":Ljava/lang/String;
    .restart local v11    # "k":Ljava/lang/String;
    .restart local v12    # "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_2
    move-exception v3

    goto/16 :goto_0
.end method


# virtual methods
.method public get(Lcom/mobfox/sdk/networking/AsyncCallback;)V
    .locals 8
    .param p1, "cb"    # Lcom/mobfox/sdk/networking/AsyncCallback;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->url:Ljava/lang/String;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->parameters:Ljava/util/Map;

    iget-object v3, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->headers:Ljava/util/Map;

    iget v4, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->timeout:I

    iget-boolean v5, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->testMode:Z

    new-instance v6, Lcom/mobfox/sdk/networking/MobFoxRequest$DefaultResponseFormatter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/mobfox/sdk/networking/MobFoxRequest$DefaultResponseFormatter;-><init>(Lcom/mobfox/sdk/networking/MobFoxRequest;Lcom/mobfox/sdk/networking/MobFoxRequest$1;)V

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/mobfox/sdk/networking/MobFoxRequest;->_call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;IZLcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 220
    return-void
.end method

.method public getBitmap(Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;)V
    .locals 8
    .param p1, "cb"    # Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;

    .prologue
    .line 256
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->url:Ljava/lang/String;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->parameters:Ljava/util/Map;

    iget-object v3, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->headers:Ljava/util/Map;

    iget v4, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->timeout:I

    iget-boolean v5, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->testMode:Z

    new-instance v6, Lcom/mobfox/sdk/networking/MobFoxRequest$3;

    invoke-direct {v6, p0}, Lcom/mobfox/sdk/networking/MobFoxRequest$3;-><init>(Lcom/mobfox/sdk/networking/MobFoxRequest;)V

    new-instance v7, Lcom/mobfox/sdk/networking/MobFoxRequest$4;

    invoke-direct {v7, p0, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest$4;-><init>(Lcom/mobfox/sdk/networking/MobFoxRequest;Lcom/mobfox/sdk/networking/AsyncCallbackBitmap;)V

    invoke-static/range {v0 .. v7}, Lcom/mobfox/sdk/networking/MobFoxRequest;->_call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;IZLcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 272
    return-void
.end method

.method public getDrawable(Lcom/mobfox/sdk/networking/AsyncCallbackDrawable;)V
    .locals 8
    .param p1, "cb"    # Lcom/mobfox/sdk/networking/AsyncCallbackDrawable;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->url:Ljava/lang/String;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->parameters:Ljava/util/Map;

    iget-object v3, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->headers:Ljava/util/Map;

    iget v4, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->timeout:I

    iget-boolean v5, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->testMode:Z

    new-instance v6, Lcom/mobfox/sdk/networking/MobFoxRequest$5;

    invoke-direct {v6, p0}, Lcom/mobfox/sdk/networking/MobFoxRequest$5;-><init>(Lcom/mobfox/sdk/networking/MobFoxRequest;)V

    new-instance v7, Lcom/mobfox/sdk/networking/MobFoxRequest$6;

    invoke-direct {v7, p0, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest$6;-><init>(Lcom/mobfox/sdk/networking/MobFoxRequest;Lcom/mobfox/sdk/networking/AsyncCallbackDrawable;)V

    invoke-static/range {v0 .. v7}, Lcom/mobfox/sdk/networking/MobFoxRequest;->_call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;IZLcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 292
    return-void
.end method

.method public getJSON(Lcom/mobfox/sdk/networking/AsyncCallbackJSON;)V
    .locals 1
    .param p1, "cb"    # Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    .prologue
    .line 228
    new-instance v0, Lcom/mobfox/sdk/networking/MobFoxRequest$2;

    invoke-direct {v0, p0, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest$2;-><init>(Lcom/mobfox/sdk/networking/MobFoxRequest;Lcom/mobfox/sdk/networking/AsyncCallbackJSON;)V

    invoke-virtual {p0, v0}, Lcom/mobfox/sdk/networking/MobFoxRequest;->get(Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 252
    return-void
.end method

.method public post(Lcom/mobfox/sdk/networking/AsyncCallback;)V
    .locals 8
    .param p1, "cb"    # Lcom/mobfox/sdk/networking/AsyncCallback;

    .prologue
    .line 223
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->url:Ljava/lang/String;

    const-string v1, "POST"

    iget-object v2, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->data:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->headers:Ljava/util/Map;

    iget v4, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->timeout:I

    iget-boolean v5, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->testMode:Z

    new-instance v6, Lcom/mobfox/sdk/networking/MobFoxRequest$DefaultResponseFormatter;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/mobfox/sdk/networking/MobFoxRequest$DefaultResponseFormatter;-><init>(Lcom/mobfox/sdk/networking/MobFoxRequest;Lcom/mobfox/sdk/networking/MobFoxRequest$1;)V

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/mobfox/sdk/networking/MobFoxRequest;->_call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/util/Map;IZLcom/mobfox/sdk/networking/MobFoxRequest$ResponseFormatter;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    .line 224
    return-void
.end method

.method public setData(Lorg/json/JSONObject;)Lcom/mobfox/sdk/networking/MobFoxRequest;
    .locals 0
    .param p1, "data"    # Lorg/json/JSONObject;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->data:Lorg/json/JSONObject;

    .line 98
    return-object p0
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/mobfox/sdk/networking/MobFoxRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    return-object p0
.end method

.method public setParam(Ljava/lang/String;Ljava/lang/String;)Lcom/mobfox/sdk/networking/MobFoxRequest;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->parameters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    return-object p0
.end method

.method public setTestMode(Z)V
    .locals 0
    .param p1, "testMode"    # Z

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->testMode:Z

    .line 43
    return-void
.end method

.method public setTimeout(I)Lcom/mobfox/sdk/networking/MobFoxRequest;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/mobfox/sdk/networking/MobFoxRequest;->timeout:I

    .line 89
    return-object p0
.end method
