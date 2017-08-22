.class Lcom/mobfox/sdk/nativeads/Native$2;
.super Ljava/lang/Object;
.source "Native.java"

# interfaces
.implements Lcom/mobfox/sdk/networking/AsyncCallbackJSON;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/nativeads/Native;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/nativeads/Native;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/nativeads/Native;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/nativeads/Native;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Native$2;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(ILorg/json/JSONObject;Ljava/util/Map;)V
    .locals 4
    .param p1, "code"    # I
    .param p2, "response"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
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
    .line 108
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const-string v1, "error"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 110
    :try_start_0
    const-string v1, "error"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "No Ad Available"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 111
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "no ad"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 112
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/Native$2;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v1, v1, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    if-nez v1, :cond_1

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void

    .line 113
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/Native$2;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v1, v1, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    invoke-interface {v1, v0}, Lcom/mobfox/sdk/nativeads/NativeListener;->onNativeError(Ljava/lang/Exception;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_0
    move-exception v1

    .line 123
    :cond_2
    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/Native$2;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/Native$2;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, v2, Lcom/mobfox/sdk/nativeads/Native;->context:Landroid/content/Context;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, p2, p3, v3}, Lcom/mobfox/sdk/nativeads/Native;->iterate(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/Map;Ljava/util/HashMap;)V

    goto :goto_0

    .line 116
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "error"

    invoke-virtual {p2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 117
    .restart local v0    # "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/Native$2;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v1, v1, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/mobfox/sdk/nativeads/Native$2;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v1, v1, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    invoke-interface {v1, v0}, Lcom/mobfox/sdk/nativeads/NativeListener;->onNativeError(Ljava/lang/Exception;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "empty json response."

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    new-instance p1, Ljava/lang/Exception;

    .end local p1    # "e":Ljava/lang/Exception;
    const-string v0, "no ad"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 130
    .restart local p1    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native$2;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    if-nez v0, :cond_1

    .line 132
    :goto_0
    return-void

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/Native$2;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v0, v0, Lcom/mobfox/sdk/nativeads/Native;->listener:Lcom/mobfox/sdk/nativeads/NativeListener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/nativeads/NativeListener;->onNativeError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
