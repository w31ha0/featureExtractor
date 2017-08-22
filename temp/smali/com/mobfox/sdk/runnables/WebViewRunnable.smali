.class public abstract Lcom/mobfox/sdk/runnables/WebViewRunnable;
.super Lcom/mobfox/sdk/runnables/MobFoxRunnable;
.source "WebViewRunnable.java"


# static fields
.field public static CONNECTION_EXCEPTION:Ljava/lang/String;


# instance fields
.field memberName:Ljava/lang/String;

.field wv:Lcom/mobfox/sdk/webview/MobFoxWebView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "Unable to connect to: //my.mobfox.com/request.php"

    sput-object v0, Lcom/mobfox/sdk/runnables/WebViewRunnable;->CONNECTION_EXCEPTION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/mobfox/sdk/webview/MobFoxWebView;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wv"    # Lcom/mobfox/sdk/webview/MobFoxWebView;
    .param p3, "memberName"    # Ljava/lang/String;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/mobfox/sdk/runnables/MobFoxRunnable;-><init>(Landroid/content/Context;)V

    .line 22
    iput-object p2, p0, Lcom/mobfox/sdk/runnables/WebViewRunnable;->wv:Lcom/mobfox/sdk/webview/MobFoxWebView;

    .line 23
    iput-object p3, p0, Lcom/mobfox/sdk/runnables/WebViewRunnable;->memberName:Ljava/lang/String;

    .line 24
    return-void
.end method


# virtual methods
.method protected condition()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 29
    :try_start_0
    const-class v2, Lcom/mobfox/sdk/webview/MobFoxWebView;

    iget-object v3, p0, Lcom/mobfox/sdk/runnables/WebViewRunnable;->memberName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 30
    .local v0, "member":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 32
    .end local v0    # "member":Ljava/lang/reflect/Field;
    :cond_0
    :goto_0
    return v1

    .line 31
    :catch_0
    move-exception v2

    goto :goto_0
.end method
