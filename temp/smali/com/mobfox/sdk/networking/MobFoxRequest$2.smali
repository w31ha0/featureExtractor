.class Lcom/mobfox/sdk/networking/MobFoxRequest$2;
.super Ljava/lang/Object;
.source "MobFoxRequest.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/AsyncCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/networking/MobFoxRequest;->getJSON(Lcom/mobfox/sdk/networking/AsyncCallbackJSON;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/networking/MobFoxRequest;

.field final synthetic val$cb:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/networking/MobFoxRequest;Lcom/mobfox/sdk/networking/AsyncCallbackJSON;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/networking/MobFoxRequest;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$2;->this$0:Lcom/mobfox/sdk/networking/MobFoxRequest;

    iput-object p2, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$2;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILjava/lang/Object;Ljava/util/Map;)V
    .locals 7
    .param p1, "code"    # I
    .param p2, "response"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Object;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 232
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    .line 233
    .local v3, "jsonStr":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 234
    :cond_0
    iget-object v4, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$2;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    new-instance v5, Ljava/lang/Exception;

    const-string v6, "empty json response."

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v4, v5}, Lcom/mobfox/sdk/networking/AsyncCallbackJSON;->onError(Ljava/lang/Exception;)V

    .line 245
    :goto_0
    return-void

    .line 239
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 240
    .local v2, "json":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$2;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    invoke-interface {v4, p1, v2, p3}, Lcom/mobfox/sdk/networking/AsyncCallbackJSON;->onComplete(ILorg/json/JSONObject;Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 241
    .end local v2    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 242
    .local v1, "e":Lorg/json/JSONException;
    const-string v4, "MobFoxNative"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "error parsing JSON response: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    iget-object v4, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$2;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    invoke-interface {v4, v1}, Lcom/mobfox/sdk/networking/AsyncCallbackJSON;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/mobfox/sdk/networking/MobFoxRequest$2;->val$cb:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/networking/AsyncCallbackJSON;->onError(Ljava/lang/Exception;)V

    .line 250
    return-void
.end method
