.class Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;
.super Lcom/biznessapps/facebook/BaseRequestListener;
.source "LoginButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/facebook/LoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LogoutRequestListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/facebook/LoginButton;


# direct methods
.method private constructor <init>(Lcom/biznessapps/facebook/LoginButton;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-direct {p0}, Lcom/biznessapps/facebook/BaseRequestListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/biznessapps/facebook/LoginButton;Lcom/biznessapps/facebook/LoginButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/biznessapps/facebook/LoginButton;
    .param p2, "x1"    # Lcom/biznessapps/facebook/LoginButton$1;

    .prologue
    .line 111
    invoke-direct {p0, p1}, Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;-><init>(Lcom/biznessapps/facebook/LoginButton;)V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;->this$0:Lcom/biznessapps/facebook/LoginButton;

    invoke-static {v0}, Lcom/biznessapps/facebook/LoginButton;->access$700(Lcom/biznessapps/facebook/LoginButton;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener$1;

    invoke-direct {v1, p0}, Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener$1;-><init>(Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    return-void
.end method
