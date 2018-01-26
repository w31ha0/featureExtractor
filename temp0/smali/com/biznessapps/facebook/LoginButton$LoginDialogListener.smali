.class final Lcom/biznessapps/facebook/LoginButton$LoginDialogListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Lcom/facebook/android/Facebook$DialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/facebook/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LoginDialogListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/facebook/LoginButton;


# direct methods
.method private constructor <init>(Lcom/biznessapps/facebook/LoginButton;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/biznessapps/facebook/LoginButton$LoginDialogListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/facebook/LoginButton;Lcom/biznessapps/facebook/LoginButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/facebook/LoginButton;
    .param p2, "x1"    # Lcom/biznessapps/facebook/LoginButton$1;

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcom/biznessapps/facebook/LoginButton$LoginDialogListener;-><init>(Lcom/biznessapps/facebook/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .prologue
    .line 107
    const-string v0, "Action Canceled"

    invoke-static {v0}, Lcom/biznessapps/facebook/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public onComplete(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "values"    # Landroid/os/Bundle;

    .prologue
    .line 92
    invoke-static {}, Lcom/biznessapps/facebook/SessionEvents;->onLoginSuccess()V

    .line 93
    return-void
.end method

.method public onError(Lcom/facebook/android/DialogError;)V
    .locals 1
    .param p1, "error"    # Lcom/facebook/android/DialogError;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/facebook/android/DialogError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/facebook/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public onFacebookError(Lcom/facebook/android/FacebookError;)V
    .locals 1
    .param p1, "error"    # Lcom/facebook/android/FacebookError;

    .prologue
    .line 97
    invoke-virtual {p1}, Lcom/facebook/android/FacebookError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/facebook/SessionEvents;->onLoginError(Ljava/lang/String;)V

    .line 98
    return-void
.end method
