.class Lcom/biznessapps/facebook/LoginButton$SessionListener;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Lcom/biznessapps/facebook/SessionEvents$AuthListener;
.implements Lcom/biznessapps/facebook/SessionEvents$LogoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/facebook/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/facebook/LoginButton;


# direct methods
.method private constructor <init>(Lcom/biznessapps/facebook/LoginButton;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/biznessapps/facebook/LoginButton$SessionListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/facebook/LoginButton;Lcom/biznessapps/facebook/LoginButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/facebook/LoginButton;
    .param p2, "x1"    # Lcom/biznessapps/facebook/LoginButton$1;

    .prologue
    .line 125
    invoke-direct {p0, p1}, Lcom/biznessapps/facebook/LoginButton$SessionListener;-><init>(Lcom/biznessapps/facebook/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onAuthFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 135
    return-void
.end method

.method public onAuthSucceed()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/biznessapps/facebook/LoginButton$SessionListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    sget v1, Lcom/biznessapps/layout/R$drawable;->logout_button:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/facebook/LoginButton;->setImageResource(I)V

    .line 130
    iget-object v0, p0, Lcom/biznessapps/facebook/LoginButton$SessionListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-static {v0}, Lcom/biznessapps/facebook/LoginButton;->access$300(Lcom/biznessapps/facebook/LoginButton;)Lcom/facebook/android/Facebook;

    move-result-object v0

    iget-object v1, p0, Lcom/biznessapps/facebook/LoginButton$SessionListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-virtual {v1}, Lcom/biznessapps/facebook/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/biznessapps/facebook/SessionStore;->save(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 131
    return-void
.end method

.method public onLogoutBegin()V
    .locals 0

    .prologue
    .line 139
    return-void
.end method

.method public onLogoutFinish()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/biznessapps/facebook/LoginButton$SessionListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-virtual {v0}, Lcom/biznessapps/facebook/LoginButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/biznessapps/facebook/SessionStore;->clear(Landroid/content/Context;)V

    .line 144
    iget-object v0, p0, Lcom/biznessapps/facebook/LoginButton$SessionListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    sget v1, Lcom/biznessapps/layout/R$drawable;->login_button:I

    invoke-virtual {v0, v1}, Lcom/biznessapps/facebook/LoginButton;->setImageResource(I)V

    .line 145
    return-void
.end method
