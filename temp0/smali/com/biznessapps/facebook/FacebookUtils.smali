.class public Lcom/biznessapps/facebook/FacebookUtils;
.super Ljava/lang/Object;
.source "FacebookUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogInOutButton(Landroid/content/Context;)Lcom/biznessapps/facebook/LoginButton;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    new-instance v0, Lcom/biznessapps/facebook/LoginButton;

    invoke-direct {v0, p0}, Lcom/biznessapps/facebook/LoginButton;-><init>(Landroid/content/Context;)V

    .line 21
    .local v0, "facebookLogInOutButton":Lcom/biznessapps/facebook/LoginButton;
    new-instance v1, Lcom/facebook/android/Facebook;

    invoke-direct {v1}, Lcom/facebook/android/Facebook;-><init>()V

    .line 23
    .local v1, "mFacebook":Lcom/facebook/android/Facebook;
    invoke-static {v1, p0}, Lcom/biznessapps/facebook/SessionStore;->restore(Lcom/facebook/android/Facebook;Landroid/content/Context;)Z

    .line 24
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/biznessapps/facebook/LoginButton;->init(Lcom/facebook/android/Facebook;[Ljava/lang/String;)V

    .line 26
    return-object v0
.end method
