.class Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;
.super Ljava/lang/Object;
.source "BridgeWebView.java"

# interfaces
.implements Lcom/github/lzyzsd/jsbridge/CallBackFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/github/lzyzsd/jsbridge/BridgeWebView;->flushMessageQueue()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/github/lzyzsd/jsbridge/BridgeWebView;


# direct methods
.method constructor <init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallBack(Ljava/lang/String;)V
    .locals 12
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v5, 0x0

    .line 155
    .local v5, "list":Ljava/util/List;, "Ljava/util/List<Lcom/github/lzyzsd/jsbridge/Message;>;"
    :try_start_0
    invoke-static {p1}, Lcom/github/lzyzsd/jsbridge/Message;->toArrayList(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 160
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_1

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v4, v10, :cond_0

    .line 164
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/lzyzsd/jsbridge/Message;

    .line 165
    .local v6, "m":Lcom/github/lzyzsd/jsbridge/Message;
    invoke-virtual {v6}, Lcom/github/lzyzsd/jsbridge/Message;->getResponseId()Ljava/lang/String;

    move-result-object v9

    .line 167
    .local v9, "responseId":Ljava/lang/String;
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 168
    iget-object v10, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iget-object v10, v10, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/lzyzsd/jsbridge/CallBackFunction;

    .line 169
    .local v2, "function":Lcom/github/lzyzsd/jsbridge/CallBackFunction;
    invoke-virtual {v6}, Lcom/github/lzyzsd/jsbridge/Message;->getResponseData()Ljava/lang/String;

    move-result-object v7

    .line 170
    .local v7, "responseData":Ljava/lang/String;
    invoke-interface {v2, v7}, Lcom/github/lzyzsd/jsbridge/CallBackFunction;->onCallBack(Ljava/lang/String;)V

    .line 171
    iget-object v10, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iget-object v10, v10, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->responseCallbacks:Ljava/util/Map;

    invoke-interface {v10, v9}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .end local v2    # "function":Lcom/github/lzyzsd/jsbridge/CallBackFunction;
    .end local v7    # "responseData":Ljava/lang/String;
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 173
    :cond_3
    const/4 v8, 0x0

    .line 175
    .local v8, "responseFunction":Lcom/github/lzyzsd/jsbridge/CallBackFunction;
    invoke-virtual {v6}, Lcom/github/lzyzsd/jsbridge/Message;->getCallbackId()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, "callbackId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 177
    new-instance v8, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$1;

    .end local v8    # "responseFunction":Lcom/github/lzyzsd/jsbridge/CallBackFunction;
    invoke-direct {v8, p0, v0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$1;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;Ljava/lang/String;)V

    .line 195
    .restart local v8    # "responseFunction":Lcom/github/lzyzsd/jsbridge/CallBackFunction;
    :goto_3
    invoke-virtual {v6}, Lcom/github/lzyzsd/jsbridge/Message;->getHandlerName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 196
    iget-object v10, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iget-object v10, v10, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->messageHandlers:Ljava/util/Map;

    invoke-virtual {v6}, Lcom/github/lzyzsd/jsbridge/Message;->getHandlerName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/lzyzsd/jsbridge/BridgeHandler;

    .line 200
    .local v3, "handler":Lcom/github/lzyzsd/jsbridge/BridgeHandler;
    :goto_4
    if-eqz v3, :cond_2

    .line 201
    invoke-virtual {v6}, Lcom/github/lzyzsd/jsbridge/Message;->getData()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v3, v10, v8}, Lcom/github/lzyzsd/jsbridge/BridgeHandler;->handler(Ljava/lang/String;Lcom/github/lzyzsd/jsbridge/CallBackFunction;)V

    goto :goto_2

    .line 187
    .end local v3    # "handler":Lcom/github/lzyzsd/jsbridge/BridgeHandler;
    :cond_4
    new-instance v8, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$2;

    .end local v8    # "responseFunction":Lcom/github/lzyzsd/jsbridge/CallBackFunction;
    invoke-direct {v8, p0}, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1$2;-><init>(Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;)V

    .restart local v8    # "responseFunction":Lcom/github/lzyzsd/jsbridge/CallBackFunction;
    goto :goto_3

    .line 198
    :cond_5
    iget-object v10, p0, Lcom/github/lzyzsd/jsbridge/BridgeWebView$1;->this$0:Lcom/github/lzyzsd/jsbridge/BridgeWebView;

    iget-object v3, v10, Lcom/github/lzyzsd/jsbridge/BridgeWebView;->defaultHandler:Lcom/github/lzyzsd/jsbridge/BridgeHandler;

    .restart local v3    # "handler":Lcom/github/lzyzsd/jsbridge/BridgeHandler;
    goto :goto_4
.end method
