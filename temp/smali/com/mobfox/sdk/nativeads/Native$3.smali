.class Lcom/mobfox/sdk/nativeads/Native$3;
.super Ljava/lang/Object;
.source "Native.java"

# interfaces
.implements Lcom/mobfox/sdk/nativeads/NativeRequestBuilder$ReadyListener;


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
    .line 135
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/Native$3;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReady(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 138
    const-string v2, "MobFoxNative"

    const-string v3, "url"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/Native$3;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, v2, Lcom/mobfox/sdk/nativeads/Native;->location:Landroid/location/Location;

    if-eqz v2, :cond_0

    .line 140
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 141
    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "latitude"

    iget-object v4, p0, Lcom/mobfox/sdk/nativeads/Native$3;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v4, v4, Lcom/mobfox/sdk/nativeads/Native;->location:Landroid/location/Location;

    .line 142
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "longitude"

    iget-object v4, p0, Lcom/mobfox/sdk/nativeads/Native$3;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v4, v4, Lcom/mobfox/sdk/nativeads/Native;->location:Landroid/location/Location;

    .line 143
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 145
    .local v0, "builtUri":Landroid/net/Uri;
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 147
    new-instance v1, Lcom/mobfox/sdk/networking/MobFoxRequest;

    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/Native$3;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, v2, Lcom/mobfox/sdk/nativeads/Native;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 148
    .local v1, "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/Native$3;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, v2, Lcom/mobfox/sdk/nativeads/Native;->respHandler:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/networking/MobFoxRequest;->getJSON(Lcom/mobfox/sdk/networking/AsyncCallbackJSON;)V

    .line 153
    .end local v0    # "builtUri":Landroid/net/Uri;
    :goto_0
    return-void

    .line 151
    .end local v1    # "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    :cond_0
    new-instance v1, Lcom/mobfox/sdk/networking/MobFoxRequest;

    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/Native$3;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, v2, Lcom/mobfox/sdk/nativeads/Native;->context:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 152
    .restart local v1    # "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    iget-object v2, p0, Lcom/mobfox/sdk/nativeads/Native$3;->this$0:Lcom/mobfox/sdk/nativeads/Native;

    iget-object v2, v2, Lcom/mobfox/sdk/nativeads/Native;->respHandler:Lcom/mobfox/sdk/networking/AsyncCallbackJSON;

    invoke-virtual {v1, v2}, Lcom/mobfox/sdk/networking/MobFoxRequest;->getJSON(Lcom/mobfox/sdk/networking/AsyncCallbackJSON;)V

    goto :goto_0
.end method
