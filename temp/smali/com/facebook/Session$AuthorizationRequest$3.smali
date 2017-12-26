.class Lcom/facebook/Session$AuthorizationRequest$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/Session$StartActivityDelegate;


# instance fields
.field final synthetic this$1:Lcom/facebook/Session$AuthorizationRequest;


# direct methods
.method constructor <init>(Lcom/facebook/Session$AuthorizationRequest;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/Session$AuthorizationRequest$3;->this$1:Lcom/facebook/Session$AuthorizationRequest;

    .line 1886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityContext()Landroid/app/Activity;
    .locals 2

    .prologue
    .line 1895
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1896
    const-string v1, "Cannot create an AuthorizationRequest without a valid Activity or Fragment"

    .line 1895
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 2

    .prologue
    .line 1889
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 1890
    const-string v1, "Cannot create an AuthorizationRequest without a valid Activity or Fragment"

    .line 1889
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
