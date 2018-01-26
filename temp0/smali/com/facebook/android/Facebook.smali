.class public Lcom/facebook/android/Facebook;
.super Ljava/lang/Object;
.source "Facebook.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/Facebook$DialogListener;
    }
.end annotation


# static fields
.field public static final CANCEL_URI:Ljava/lang/String; = "fbconnect:cancel"

.field public static final EXPIRES:Ljava/lang/String; = "expires_in"

.field protected static GRAPH_BASE_URL:Ljava/lang/String; = null

.field private static final LOGIN:Ljava/lang/String; = "login"

.field protected static OAUTH_ENDPOINT:Ljava/lang/String; = null

.field public static final REDIRECT_URI:Ljava/lang/String; = "fbconnect://success"

.field protected static RESTSERVER_URL:Ljava/lang/String; = null

.field public static final TOKEN:Ljava/lang/String; = "access_token"

.field protected static UI_SERVER:Ljava/lang/String;


# instance fields
.field private mAccessExpires:J

.field private mAccessToken:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-string v0, "https://graph.facebook.com/oauth/authorize"

    sput-object v0, Lcom/facebook/android/Facebook;->OAUTH_ENDPOINT:Ljava/lang/String;

    .line 52
    const-string v0, "https://www.facebook.com/connect/uiserver.php"

    sput-object v0, Lcom/facebook/android/Facebook;->UI_SERVER:Ljava/lang/String;

    .line 54
    const-string v0, "https://graph.facebook.com/"

    sput-object v0, Lcom/facebook/android/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    .line 56
    const-string v0, "https://api.facebook.com/restserver.php"

    sput-object v0, Lcom/facebook/android/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/android/Facebook;->mAccessToken:Ljava/lang/String;

    .line 60
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/android/Facebook;->mAccessExpires:J

    .line 430
    return-void
.end method


# virtual methods
.method public authorize(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "applicationId"    # Ljava/lang/String;
    .param p3, "permissions"    # [Ljava/lang/String;
    .param p4, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 106
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "client_id"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    array-length v1, p3

    if-lez v1, :cond_0

    .line 108
    const-string v1, "scope"

    const-string v2, ","

    invoke-static {v2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :cond_0
    invoke-static {p1}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    .line 111
    const-string v1, "login"

    new-instance v2, Lcom/facebook/android/Facebook$1;

    invoke-direct {v2, p0, p4}, Lcom/facebook/android/Facebook$1;-><init>(Lcom/facebook/android/Facebook;Lcom/facebook/android/Facebook$DialogListener;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 143
    return-void
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "parameters"    # Landroid/os/Bundle;
    .param p4, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 343
    const-string v2, "login"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 344
    sget-object v0, Lcom/facebook/android/Facebook;->OAUTH_ENDPOINT:Ljava/lang/String;

    .line 345
    .local v0, "endpoint":Ljava/lang/String;
    const-string v2, "type"

    const-string v3, "user_agent"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v2, "redirect_uri"

    const-string v3, "fbconnect://success"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_0
    const-string v2, "display"

    const-string v3, "touch"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 354
    const-string v2, "access_token"

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p3}, Lcom/facebook/android/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 357
    .local v1, "url":Ljava/lang/String;
    const-string v2, "android.permission.INTERNET"

    invoke-virtual {p1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    .line 359
    const-string v2, "Error"

    const-string v3, "Application requires permission to access the Internet"

    invoke-static {p1, v2, v3}, Lcom/facebook/android/Util;->showAlert(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :goto_1
    return-void

    .line 348
    .end local v0    # "endpoint":Ljava/lang/String;
    .end local v1    # "url":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/facebook/android/Facebook;->UI_SERVER:Ljava/lang/String;

    .line 349
    .restart local v0    # "endpoint":Ljava/lang/String;
    const-string v2, "method"

    invoke-virtual {p3, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v2, "next"

    const-string v3, "fbconnect://success"

    invoke-virtual {p3, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 362
    .restart local v1    # "url":Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/facebook/android/FbDialog;

    invoke-direct {v2, p1, v1, p4}, Lcom/facebook/android/FbDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    invoke-virtual {v2}, Lcom/facebook/android/FbDialog;->show()V

    goto :goto_1
.end method

.method public dialog(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/facebook/android/Facebook$DialogListener;

    .prologue
    .line 317
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/android/Facebook;->dialog(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 318
    return-void
.end method

.method public getAccessExpires()J
    .locals 2

    .prologue
    .line 391
    iget-wide v0, p0, Lcom/facebook/android/Facebook;->mAccessExpires:J

    return-wide v0
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/facebook/android/Facebook;->mAccessToken:Ljava/lang/String;

    return-object v0
.end method

.method public isSessionValid()Z
    .locals 4

    .prologue
    .line 370
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessExpires()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public logout(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-static {p1}, Lcom/facebook/android/Util;->clearCookies(Landroid/content/Context;)V

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v0, "b":Landroid/os/Bundle;
    const-string v2, "method"

    const-string v3, "auth.expireSession"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0, v0}, Lcom/facebook/android/Facebook;->request(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 168
    .local v1, "response":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/facebook/android/Facebook;->setAccessToken(Ljava/lang/String;)V

    .line 169
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 170
    return-object v1
.end method

.method public request(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2
    .param p1, "parameters"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 203
    const-string v0, "method"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 204
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "API method must be specified. (parameters must contain key \"method\" and value). See http://developers.facebook.com/docs/reference/rest/"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_0
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "graphPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 229
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 256
    const-string v0, "GET"

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/android/Facebook;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 288
    const-string v1, "format"

    const-string v2, "json"

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    const-string v1, "access_token"

    invoke-virtual {p0}, Lcom/facebook/android/Facebook;->getAccessToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    :cond_0
    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/facebook/android/Facebook;->GRAPH_BASE_URL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 295
    .local v0, "url":Ljava/lang/String;
    :goto_0
    invoke-static {v0, p3, p2}, Lcom/facebook/android/Util;->openUrl(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 292
    .end local v0    # "url":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/facebook/android/Facebook;->RESTSERVER_URL:Ljava/lang/String;

    goto :goto_0
.end method

.method public setAccessExpires(J)V
    .locals 0
    .param p1, "time"    # J

    .prologue
    .line 410
    iput-wide p1, p0, Lcom/facebook/android/Facebook;->mAccessExpires:J

    .line 411
    return-void
.end method

.method public setAccessExpiresIn(Ljava/lang/String;)V
    .locals 4
    .param p1, "expiresIn"    # Ljava/lang/String;

    .prologue
    .line 419
    if-eqz p1, :cond_0

    const-string v0, "0"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 420
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/android/Facebook;->setAccessExpires(J)V

    .line 423
    :cond_0
    return-void
.end method

.method public setAccessToken(Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 400
    iput-object p1, p0, Lcom/facebook/android/Facebook;->mAccessToken:Ljava/lang/String;

    .line 401
    return-void
.end method
