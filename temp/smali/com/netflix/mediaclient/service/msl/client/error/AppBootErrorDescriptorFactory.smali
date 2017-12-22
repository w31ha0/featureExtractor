.class public Lcom/netflix/mediaclient/service/msl/client/error/AppBootErrorDescriptorFactory;
.super Ljava/lang/Object;
.source "AppBootErrorDescriptorFactory.java"


# static fields
.field public static final ERROR_ACTION_ID:Ljava/lang/String; = "actionid"

.field private static final ERROR_BCP47:Ljava/lang/String; = "bcp47"

.field private static final ERROR_TEXT:Ljava/lang/String; = "text"

.field private static final ERROR_USER_TEXT:Ljava/lang/String; = "usertextgroup"

.field protected static final TAG:Ljava/lang/String; = "AppBootErrorManager"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public static getHandlerForActionIdError(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Lcom/netflix/android/org/json/JSONObject;)Lcom/netflix/mediaclient/service/error/ErrorDescriptor;
    .locals 10

    .prologue
    const/4 v0, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 30
    const-string/jumbo v1, "actionid"

    invoke-virtual {p3, v1}, Lcom/netflix/android/org/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 31
    const-string/jumbo v1, "AppBootErrorManager"

    const-string/jumbo v2, "Error found, but not actionid. Not expected!"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :goto_0
    return-object v0

    .line 35
    :cond_0
    const-string/jumbo v1, "actionid"

    invoke-virtual {p3, v1}, Lcom/netflix/android/org/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 37
    const-string/jumbo v2, "usertextgroup"

    invoke-virtual {p3, v2}, Lcom/netflix/android/org/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lcom/netflix/android/org/json/JSONObject;

    move-result-object v2

    .line 38
    if-nez v2, :cond_1

    .line 39
    const-string/jumbo v2, "AppBootErrorManager"

    const-string/jumbo v3, "Action ID %d, but missing error text, use default..."

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 47
    :goto_1
    const-string/jumbo v2, "AppBootErrorManager"

    const-string/jumbo v3, "ActionID %d "

    new-array v4, v9, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-static {v2, v3, v4}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 49
    packed-switch v1, :pswitch_data_0

    .line 55
    const-string/jumbo v1, "AppBootErrorManager"

    const-string/jumbo v2, "default, Not supported actionid"

    invoke-static {v1, v2}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 41
    :cond_1
    const-string/jumbo v3, "bcp47"

    invoke-virtual {v2, v3}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 42
    const-string/jumbo v4, "text"

    invoke-virtual {v2, v4}, Lcom/netflix/android/org/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 43
    const-string/jumbo v4, "AppBootErrorManager"

    const-string/jumbo v5, "Action ID %d found message \'%s\' for language %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    aput-object v2, v6, v9

    const/4 v2, 0x2

    aput-object v3, v6, v2

    invoke-static {v4, v5, v6}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_1

    .line 51
    :pswitch_0
    invoke-static {p0, p1, p2, v0}, Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;->build(Landroid/content/Context;Lcom/netflix/mediaclient/servicemgr/IMSLClient;Lcom/netflix/mediaclient/service/ServiceAgent$UserAgentInterface;Ljava/lang/String;)Lcom/netflix/mediaclient/service/msl/client/error/ActionId13ErrorDescriptor;

    move-result-object v0

    goto :goto_0

    .line 49
    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method
