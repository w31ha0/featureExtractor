.class public Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;
.super Ljava/lang/Object;
.source "FanWallFragment.java"

# interfaces
.implements Lcom/biznessapps/facebook/SessionEvents$AuthListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/biznessapps/fragments/fanwall/FanWallFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CustomAuthListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;


# direct methods
.method protected constructor <init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthFail(Ljava/lang/String;)V
    .locals 0
    .param p1, "error"    # Ljava/lang/String;

    .prologue
    .line 324
    return-void
.end method

.method public onAuthSucceed()V
    .locals 3

    .prologue
    .line 281
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    iget-object v1, v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    const-string v1, "/me"

    new-instance v2, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener$1;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener$1;-><init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 301
    new-instance v0, Lcom/facebook/android/AsyncFacebookRunner;

    iget-object v1, p0, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;->this$0:Lcom/biznessapps/fragments/fanwall/FanWallFragment;

    iget-object v1, v1, Lcom/biznessapps/fragments/fanwall/FanWallFragment;->mFacebook:Lcom/facebook/android/Facebook;

    invoke-direct {v0, v1}, Lcom/facebook/android/AsyncFacebookRunner;-><init>(Lcom/facebook/android/Facebook;)V

    const-string v1, "/4294967295/picture"

    new-instance v2, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener$2;

    invoke-direct {v2, p0}, Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener$2;-><init>(Lcom/biznessapps/fragments/fanwall/FanWallFragment$CustomAuthListener;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/android/AsyncFacebookRunner;->request(Ljava/lang/String;Lcom/facebook/android/AsyncFacebookRunner$RequestListener;)V

    .line 320
    return-void
.end method
