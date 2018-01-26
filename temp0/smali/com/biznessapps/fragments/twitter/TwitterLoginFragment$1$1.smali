.class Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$1;
.super Ljava/lang/Object;
.source "TwitterLoginFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;)V
    .locals 0

    .prologue
    .line 59
    iput-object p1, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$1;->this$1:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$1;->this$1:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;

    iget-object v0, v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$300(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/utils/ViewUtils;->plubWebView(Landroid/webkit/WebView;)V

    .line 64
    iget-object v0, p0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1$1;->this$1:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;

    iget-object v0, v0, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment$1;->this$0:Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$300(Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;)Landroid/webkit/WebView;

    move-result-object v0

    invoke-static {}, Lcom/biznessapps/fragments/twitter/TwitterLoginFragment;->access$100()Ltwitter4j/http/RequestToken;

    move-result-object v1

    invoke-virtual {v1}, Ltwitter4j/http/RequestToken;->getAuthorizationURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 65
    return-void
.end method
