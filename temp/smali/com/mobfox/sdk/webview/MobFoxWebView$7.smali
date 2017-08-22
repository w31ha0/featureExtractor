.class Lcom/mobfox/sdk/webview/MobFoxWebView$7;
.super Ljava/lang/Object;
.source "MobFoxWebView.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/BridgeHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/webview/MobFoxWebView;-><init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebViewLoadAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/webview/MobFoxWebView;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/webview/MobFoxWebView;

    .prologue
    .line 195
    iput-object p1, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iput-object p2, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V
    .locals 26
    .param p1, "data"    # Ljava/lang/String;
    .param p2, "function"    # Lcom/github/lzyzsd/jsbridge/CallBackFunction;

    .prologue
    .line 199
    const-string v1, "MobFoxWebView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data >>> :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 207
    .local v6, "respObj":Lorg/json/JSONObject;
    const-string v1, "customEvents"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "vasts"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v7, v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/webview/MobFoxWebView$7$1;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const-string v5, "loadAdListener"

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/mobfox/sdk/webview/MobFoxWebView$7$1;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView$7;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 253
    .end local v6    # "respObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 217
    .restart local v6    # "respObj":Lorg/json/JSONObject;
    :cond_1
    const-string v1, "error"

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    .line 218
    .local v12, "error":Ljava/lang/Object;
    if-eqz v12, :cond_2

    instance-of v1, v12, Lorg/json/JSONObject;

    if-eqz v1, :cond_2

    .line 219
    move-object v0, v12

    check-cast v0, Lorg/json/JSONObject;

    move-object/from16 v25, v0

    .line 220
    .local v25, "errObj":Lorg/json/JSONObject;
    const-string v1, "noAd"

    move-object/from16 v0, v25

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 221
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v2, Lcom/mobfox/sdk/webview/MobFoxWebView$7$2;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const-string v5, "loadAdListener"

    move-object/from16 v0, p0

    invoke-direct {v2, v0, v3, v4, v5}, Lcom/mobfox/sdk/webview/MobFoxWebView$7$2;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView$7;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 238
    .end local v6    # "respObj":Lorg/json/JSONObject;
    .end local v12    # "error":Ljava/lang/Object;
    .end local v25    # "errObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v18

    .line 239
    .local v18, "e":Lorg/json/JSONException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v13, Lcom/mobfox/sdk/webview/MobFoxWebView$7$4;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    move-object/from16 v16, v0

    const-string v17, "loadAdListener"

    move-object/from16 v14, p0

    invoke-direct/range {v13 .. v18}, Lcom/mobfox/sdk/webview/MobFoxWebView$7$4;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView$7;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Lorg/json/JSONException;)V

    invoke-virtual {v1, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 231
    .end local v18    # "e":Lorg/json/JSONException;
    .restart local v6    # "respObj":Lorg/json/JSONObject;
    .restart local v12    # "error":Ljava/lang/Object;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v7, Lcom/mobfox/sdk/webview/MobFoxWebView$7$3;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    const-string v11, "loadAdListener"

    move-object/from16 v8, p0

    invoke-direct/range {v7 .. v12}, Lcom/mobfox/sdk/webview/MobFoxWebView$7$3;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView$7;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 245
    .end local v6    # "respObj":Lorg/json/JSONObject;
    .end local v12    # "error":Ljava/lang/Object;
    :catch_1
    move-exception v24

    .line 246
    .local v24, "t":Ljava/lang/Throwable;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->this$0:Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v1, v1, Lcom/mobfox/sdk/webview/MobFoxWebView;->mainHandler:Landroid/os/Handler;

    new-instance v19, Lcom/mobfox/sdk/webview/MobFoxWebView$7$5;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$context:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/mobfox/sdk/webview/MobFoxWebView$7;->val$self:Lcom/mobfox/sdk/webview/MobFoxWebView;

    move-object/from16 v22, v0

    const-string v23, "loadAdListener"

    move-object/from16 v20, p0

    invoke-direct/range {v19 .. v24}, Lcom/mobfox/sdk/webview/MobFoxWebView$7$5;-><init>(Lcom/mobfox/sdk/webview/MobFoxWebView$7;Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v0, v19

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0
.end method
