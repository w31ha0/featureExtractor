.class Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;
.super Ljava/lang/Object;
.source "WebViewAccountActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    const v1, 0x7f0901a8

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 227
    new-instance v1, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    const v3, 0x7f090156

    invoke-virtual {v2, v3}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v4, v0, v2, v4}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 228
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    invoke-static {v2}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->access$100(Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/netflix/mediaclient/android/widget/AlertDialogFactory;->createDialog(Landroid/content/Context;Landroid/os/Handler;Lcom/netflix/mediaclient/android/widget/AlertDialogFactory$AlertDialogDescriptor;)Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;

    move-result-object v0

    .line 229
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity$4;->this$0:Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/ui/signup/WebViewAccountActivity;->displayDialog(Lcom/netflix/mediaclient/android/widget/UpdateDialog$Builder;)Landroid/app/Dialog;

    .line 230
    return-void
.end method
