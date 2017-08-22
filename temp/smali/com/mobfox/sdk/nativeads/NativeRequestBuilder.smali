.class public Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;
.super Ljava/lang/Object;
.source "NativeRequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;
    }
.end annotation


# instance fields
.field context:Landroid/content/Context;

.field listener:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

.field params:Lcom/mobfox/sdk/networking/RequestParams;

.field private protocol:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mobfox/sdk/networking/RequestParams;ZLcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "rp"    # Lcom/mobfox/sdk/networking/RequestParams;
    .param p3, "secure"    # Z
    .param p4, "listener"    # Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->listener:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

    .line 25
    const-string v0, "http"

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->protocol:Ljava/lang/String;

    .line 30
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->context:Landroid/content/Context;

    .line 31
    iput-object p4, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->listener:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

    .line 33
    if-eqz p3, :cond_0

    .line 34
    const-string v0, "https"

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->protocol:Ljava/lang/String;

    .line 37
    :cond_0
    new-instance v0, Lcom/mobfox/sdk/networking/RequestParams;

    invoke-direct {v0, p2}, Lcom/mobfox/sdk/networking/RequestParams;-><init>(Lcom/mobfox/sdk/networking/RequestParams;)V

    iput-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->params:Lcom/mobfox/sdk/networking/RequestParams;

    .line 38
    return-void
.end method


# virtual methods
.method public build()V
    .locals 3

    .prologue
    .line 46
    new-instance v0, Lcom/mobfox/sdk/services/MobFoxAdIdService;

    new-instance v1, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$1;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$1;-><init>(Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;)V

    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/mobfox/sdk/services/MobFoxAdIdService;-><init>(Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;Landroid/content/Context;)V

    .line 55
    .local v0, "advIdService":Lcom/mobfox/sdk/services/MobFoxAdIdService;
    invoke-virtual {v0}, Lcom/mobfox/sdk/services/MobFoxAdIdService;->execute()V

    .line 56
    return-void
.end method

.method public getParams()Lcom/mobfox/sdk/networking/RequestParams;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->params:Lcom/mobfox/sdk/networking/RequestParams;

    return-object v0
.end method

.method ready()V
    .locals 5

    .prologue
    .line 59
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    iget-object v4, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->protocol:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "my.mobfox.com"

    .line 61
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "request.php"

    .line 62
    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 64
    .local v2, "uri":Landroid/net/Uri$Builder;
    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->params:Lcom/mobfox/sdk/networking/RequestParams;

    invoke-virtual {v3}, Lcom/mobfox/sdk/networking/RequestParams;->getNames()Ljava/util/Iterator;

    move-result-object v1

    .line 65
    .local v1, "names":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 67
    .local v0, "n":Ljava/lang/String;
    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->params:Lcom/mobfox/sdk/networking/RequestParams;

    invoke-virtual {v3, v0}, Lcom/mobfox/sdk/networking/RequestParams;->getParam(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 70
    .end local v0    # "n":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder;->listener:Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;->onReady(Ljava/lang/String;)V

    .line 71
    return-void
.end method
