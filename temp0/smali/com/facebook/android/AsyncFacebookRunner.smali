.class public Lcom/facebook/android/AsyncFacebookRunner;
.super Ljava/lang/Object;
.source "AsyncFacebookRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/android/AsyncFacebookRunner$RequestListener;
    }
.end annotation


# instance fields
.field fb:Lcom/facebook/android/Facebook;


# direct methods
.method public constructor <init>(Lcom/facebook/android/Facebook;)V
    .locals 0
    .param p1, "fb"    # Lcom/facebook/android/Facebook;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/facebook/android/AsyncFacebookRunner;->fb:Lcom/facebook/android/Facebook;

    .line 52
    return-void
.end method


# virtual methods
.method public logout(Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

    .prologue
    .line 73
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/android/AsyncFacebookRunner$1;-><init>(Lcom/facebook/android/AsyncFacebookRunner;Landroid/content/Context;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    invoke-virtual {v0}, Lcom/facebook/android/AsyncFacebookRunner$1;->start()V

    .line 92
    return-void
.end method

.method public request(Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 2
    .param p1, "parameters"    # Landroid/os/Bundle;
    .param p2, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

    .prologue
    .line 122
    const/4 v0, 0x0

    const-string v1, "GET"

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 123
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 1
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

    .prologue
    .line 173
    const-string v0, "GET"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 174
    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 6
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "parameters"    # Landroid/os/Bundle;
    .param p3, "httpMethod"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

    .prologue
    .line 206
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner$2;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/android/AsyncFacebookRunner$2;-><init>(Lcom/facebook/android/AsyncFacebookRunner;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    invoke-virtual {v0}, Lcom/facebook/android/AsyncFacebookRunner$2;->start()V

    .line 220
    return-void
.end method

.method public request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V
    .locals 2
    .param p1, "graphPath"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/facebook/android/AsyncFacebookRunner$RequestListener;

    .prologue
    .line 144
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "GET"

    invoke-virtual {p0, p1, v0, v1, p2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 145
    return-void
.end method
