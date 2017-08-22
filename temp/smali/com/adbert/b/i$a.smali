.class final Lcom/adbert/b/i$a;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/adbert/b/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/adbert/b/i;


# direct methods
.method private constructor <init>(Lcom/adbert/b/i;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/adbert/b/i$a;->a:Lcom/adbert/b/i;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/adbert/b/i;Lcom/adbert/b/i$1;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/adbert/b/i$a;-><init>(Lcom/adbert/b/i;)V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 45
    iget-object v0, p0, Lcom/adbert/b/i$a;->a:Lcom/adbert/b/i;

    invoke-virtual {v0}, Lcom/adbert/b/i;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p1}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 48
    :cond_0
    return-void
.end method
