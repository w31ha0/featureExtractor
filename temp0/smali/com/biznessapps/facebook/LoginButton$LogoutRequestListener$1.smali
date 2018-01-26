.class Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener$1;
.super Ljava/lang/Object;
.source "LoginButton.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;->onComplete(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;


# direct methods
.method constructor <init>(Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;)V
    .locals 0

    .prologue
    .line 116
    iput-object p1, p0, Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener$1;->this$1:Lcom/biznessapps/facebook/LoginButton$LogoutRequestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .prologue
    .line 119
    invoke-static {}, Lcom/biznessapps/facebook/SessionEvents;->onLogoutFinish()V

    .line 120
    return-void
.end method
