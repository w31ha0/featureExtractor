.class public interface abstract Lcom/mobfox/sdk/webview/MobFoxWebViewClient$Listener;
.super Ljava/lang/Object;
.source "MobFoxWebViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobfox/sdk/webview/MobFoxWebViewClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAutoRedirect(Landroid/webkit/WebView;Ljava/lang/String;)V
.end method

.method public abstract onClick(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method
