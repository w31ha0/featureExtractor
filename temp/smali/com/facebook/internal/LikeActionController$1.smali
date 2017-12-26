.class Lcom/facebook/internal/LikeActionController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/LikeActionController$CreationCallback;


# instance fields
.field private final synthetic val$callId:Ljava/util/UUID;

.field private final synthetic val$data:Landroid/content/Intent;

.field private final synthetic val$requestCode:I

.field private final synthetic val$resultCode:I


# direct methods
.method constructor <init>(IILandroid/content/Intent;Ljava/util/UUID;)V
    .locals 0

    .prologue
    .line 1
    iput p1, p0, Lcom/facebook/internal/LikeActionController$1;->val$requestCode:I

    iput p2, p0, Lcom/facebook/internal/LikeActionController$1;->val$resultCode:I

    iput-object p3, p0, Lcom/facebook/internal/LikeActionController$1;->val$data:Landroid/content/Intent;

    iput-object p4, p0, Lcom/facebook/internal/LikeActionController$1;->val$callId:Ljava/util/UUID;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/facebook/internal/LikeActionController;)V
    .locals 4

    .prologue
    .line 159
    iget v0, p0, Lcom/facebook/internal/LikeActionController$1;->val$requestCode:I

    iget v1, p0, Lcom/facebook/internal/LikeActionController$1;->val$resultCode:I

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$1;->val$data:Landroid/content/Intent;

    iget-object v3, p0, Lcom/facebook/internal/LikeActionController$1;->val$callId:Ljava/util/UUID;

    invoke-static {p1, v0, v1, v2, v3}, Lcom/facebook/internal/LikeActionController;->access$11(Lcom/facebook/internal/LikeActionController;IILandroid/content/Intent;Ljava/util/UUID;)Z

    .line 160
    return-void
.end method
