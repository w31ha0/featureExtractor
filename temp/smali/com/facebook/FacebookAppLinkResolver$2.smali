.class Lcom/facebook/FacebookAppLinkResolver$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Request$Callback;


# instance fields
.field final synthetic this$0:Lcom/facebook/FacebookAppLinkResolver;

.field private final synthetic val$appLinkResults:Ljava/util/Map;

.field private final synthetic val$taskCompletionSource:La/s;

.field private final synthetic val$urisToRequest:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/facebook/FacebookAppLinkResolver;La/s;Ljava/util/Map;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    iput-object p2, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:La/s;

    iput-object p3, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    iput-object p4, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 9

    .prologue
    .line 124
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:La/s;

    invoke-virtual {v0}, Lcom/facebook/FacebookRequestError;->getException()Lcom/facebook/FacebookException;

    move-result-object v0

    invoke-virtual {v1, v0}, La/s;->b(Ljava/lang/Exception;)V

    .line 174
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    move-object v2, v0

    .line 132
    :goto_1
    if-nez v2, :cond_2

    .line 133
    iget-object v0, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:La/s;

    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-virtual {v0, v1}, La/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 131
    :cond_1
    const/4 v0, 0x0

    move-object v2, v0

    goto :goto_1

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$urisToRequest:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 173
    iget-object v0, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$taskCompletionSource:La/s;

    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-virtual {v0, v1}, La/s;->b(Ljava/lang/Object;)V

    goto :goto_0

    .line 137
    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 138
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 145
    :try_start_0
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 146
    const-string v4, "app_links"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 148
    const-string v1, "android"

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 150
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    .line 151
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 153
    const/4 v1, 0x0

    :goto_3
    if-lt v1, v6, :cond_5

    .line 160
    invoke-static {v0, v4}, Lcom/facebook/FacebookAppLinkResolver;->access$1(Landroid/net/Uri;Lorg/json/JSONObject;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    new-instance v4, La/d;

    invoke-direct {v4, v0, v7, v1}, La/d;-><init>(Landroid/net/Uri;Ljava/util/List;Landroid/net/Uri;)V

    .line 163
    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->val$appLinkResults:Ljava/util/Map;

    invoke-interface {v1, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    iget-object v1, p0, Lcom/facebook/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    invoke-static {v1}, Lcom/facebook/FacebookAppLinkResolver;->access$2(Lcom/facebook/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :try_start_1
    iget-object v5, p0, Lcom/facebook/FacebookAppLinkResolver$2;->this$0:Lcom/facebook/FacebookAppLinkResolver;

    invoke-static {v5}, Lcom/facebook/FacebookAppLinkResolver;->access$2(Lcom/facebook/FacebookAppLinkResolver;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    monitor-exit v1

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    .line 167
    :catch_0
    move-exception v0

    goto :goto_2

    .line 154
    :cond_5
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    invoke-static {v8}, Lcom/facebook/FacebookAppLinkResolver;->access$0(Lorg/json/JSONObject;)La/e;

    move-result-object v8

    .line 155
    if-eqz v8, :cond_6

    .line 156
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 153
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3
.end method
