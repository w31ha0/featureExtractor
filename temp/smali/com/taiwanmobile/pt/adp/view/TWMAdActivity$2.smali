.class Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$2;
.super Ljava/lang/Object;
.source "TWMAdActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;


# direct methods
.method constructor <init>(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    .line 793
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 797
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity$2;->a:Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;

    invoke-static {v0}, Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;->m(Lcom/taiwanmobile/pt/adp/view/TWMAdActivity;)Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/taiwanmobile/pt/adp/view/webview/JSWebView;->pauseVideo()V

    .line 798
    return-void
.end method
