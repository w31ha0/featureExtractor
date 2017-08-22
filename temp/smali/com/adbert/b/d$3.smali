.class Lcom/adbert/b/d$3;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adbert/b/d;-><init>(Landroid/content/Context;Lcom/adbert/a/c/a;Lcom/adbert/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/a/c/a;

.field final synthetic b:Lcom/adbert/b/d;


# direct methods
.method constructor <init>(Lcom/adbert/b/d;Lcom/adbert/a/c/a;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/adbert/b/d$3;->b:Lcom/adbert/b/d;

    iput-object p2, p0, Lcom/adbert/b/d$3;->a:Lcom/adbert/a/c/a;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/adbert/b/d$3;->b:Lcom/adbert/b/d;

    iget-object v0, v0, Lcom/adbert/b/d;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 54
    iget-object v0, p0, Lcom/adbert/b/d$3;->a:Lcom/adbert/a/c/a;

    invoke-virtual {v0}, Lcom/adbert/a/c/a;->onPageFinished()V

    .line 55
    return-void
.end method
