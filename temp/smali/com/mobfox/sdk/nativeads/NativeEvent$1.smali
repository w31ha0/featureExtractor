.class Lcom/mobfox/sdk/nativeads/NativeEvent$1;
.super Ljava/lang/Object;
.source "NativeEvent.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/nativeads/NativeEvent;->registerViewForInteraction(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/nativeads/NativeEvent;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/nativeads/NativeEvent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/nativeads/NativeEvent;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/mobfox/sdk/nativeads/NativeEvent$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    :try_start_0
    iget-object v4, p0, Lcom/mobfox/sdk/nativeads/NativeEvent$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeEvent;

    iget-object v4, v4, Lcom/mobfox/sdk/nativeads/NativeEvent;->ad:Lcom/mobfox/sdk/nativeads/NativeAd;

    invoke-virtual {v4}, Lcom/mobfox/sdk/nativeads/NativeAd;->getLink()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "click_url":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 52
    .local v3, "uri":Landroid/net/Uri;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 53
    .local v2, "launchBrowser":Landroid/content/Intent;
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 54
    iget-object v4, p0, Lcom/mobfox/sdk/nativeads/NativeEvent$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeEvent;

    iget-object v4, v4, Lcom/mobfox/sdk/nativeads/NativeEvent;->c:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 60
    .end local v0    # "click_url":Ljava/lang/String;
    .end local v2    # "launchBrowser":Landroid/content/Intent;
    .end local v3    # "uri":Landroid/net/Uri;
    :goto_0
    iget-object v4, p0, Lcom/mobfox/sdk/nativeads/NativeEvent$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeEvent;

    iget-object v4, v4, Lcom/mobfox/sdk/nativeads/NativeEvent;->listener:Lcom/mobfox/sdk/customevents/CustomEventNativeListener;

    iget-object v5, p0, Lcom/mobfox/sdk/nativeads/NativeEvent$1;->this$0:Lcom/mobfox/sdk/nativeads/NativeEvent;

    invoke-interface {v4, v5}, Lcom/mobfox/sdk/customevents/CustomEventNativeListener;->onNativeClicked(Lcom/mobfox/sdk/customevents/CustomEventNative;)V

    .line 61
    return-void

    .line 55
    :catch_0
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "MobFoxNative"

    const-string v5, "browser activity failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 57
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "MobFoxNative"

    const-string v5, "browser activity failed"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
