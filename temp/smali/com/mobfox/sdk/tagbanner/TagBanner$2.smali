.class Lcom/mobfox/sdk/tagbanner/TagBanner$2;
.super Landroid/webkit/WebChromeClient;
.source "TagBanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/tagbanner/TagBanner;->setWebViewSettings(Lcom/mobfox/sdk/tagbanner/TagBanner;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/tagbanner/TagBanner;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/tagbanner/TagBanner;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/mobfox/sdk/tagbanner/TagBanner$2;->this$0:Lcom/mobfox/sdk/tagbanner/TagBanner;

    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onJsAlert(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 131
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 132
    const/4 v0, 0x1

    return v0
.end method

.method public onJsConfirm(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/webkit/JsResult;

    .prologue
    .line 137
    invoke-virtual {p4}, Landroid/webkit/JsResult;->cancel()V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public onJsPrompt(Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/webkit/JsPromptResult;)Z
    .locals 1
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;
    .param p5, "result"    # Landroid/webkit/JsPromptResult;

    .prologue
    .line 143
    invoke-virtual {p5}, Landroid/webkit/JsPromptResult;->cancel()V

    .line 144
    const/4 v0, 0x1

    return v0
.end method
