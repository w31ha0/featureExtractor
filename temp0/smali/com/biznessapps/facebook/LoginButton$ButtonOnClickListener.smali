.class final Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/facebook/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ButtonOnClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/facebook/LoginButton;


# direct methods
.method private constructor <init>(Lcom/biznessapps/facebook/LoginButton;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/facebook/LoginButton;Lcom/biznessapps/facebook/LoginButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/facebook/LoginButton;
    .param p2, "x1"    # Lcom/biznessapps/facebook/LoginButton$1;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;-><init>(Lcom/biznessapps/facebook/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    .line 77
    iget-object v1, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-static {v1}, Lcom/biznessapps/facebook/LoginButton;->access$200(Lcom/biznessapps/facebook/LoginButton;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-static {v1}, Lcom/biznessapps/facebook/LoginButton;->access$300(Lcom/biznessapps/facebook/LoginButton;)Lcom/facebook/android/Facebook;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/android/Facebook;->isSessionValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 78
    :cond_0
    iget-object v1, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/biznessapps/facebook/LoginButton;->access$202(Lcom/biznessapps/facebook/LoginButton;Z)Z

    .line 79
    iget-object v1, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-static {v1}, Lcom/biznessapps/facebook/LoginButton;->access$300(Lcom/biznessapps/facebook/LoginButton;)Lcom/facebook/android/Facebook;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-virtual {v2}, Lcom/biznessapps/facebook/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "191190320930582"

    iget-object v4, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-static {v4}, Lcom/biznessapps/facebook/LoginButton;->access$400(Lcom/biznessapps/facebook/LoginButton;)[Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/biznessapps/facebook/LoginButton$LoginDialogListener;

    iget-object v6, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-direct {v5, v6, v7}, Lcom/biznessapps/facebook/LoginButton$LoginDialogListener;-><init>(Lcom/biznessapps/facebook/LoginButton;Lcom/biznessapps/facebook/LoginButton$1;)V

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/facebook/android/Facebook;->authorize(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;Lcom/facebook/android/Facebook$DialogListener;)V

    .line 86
    :goto_0
    return-void

    .line 82
    :cond_1
    invoke-static {}, Lcom/biznessapps/facebook/SessionEvents;->onLogoutBegin()V

    .line 83
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-static {v1}, Lcom/biznessapps/facebook/LoginButton;->access$300(Lcom/biznessapps/facebook/LoginButton;)Lcom/facebook/android/Facebook;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    .line 84
    .local v0, "asyncRunner":Lcom/facebook/android/AsyncFacebookRunner;
    iget-object v1, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-virtual {v1}, Lcom/biznessapps/facebook/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;

    iget-object v3, p0, Lcom/biznessapps/facebook/LoginButton$ButtonOnClickListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-direct {v2, v3, v7}, Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;-><init>(Lcom/biznessapps/facebook/LoginButton;Lcom/biznessapps/facebook/LoginButton$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    goto :goto_0
.end method
