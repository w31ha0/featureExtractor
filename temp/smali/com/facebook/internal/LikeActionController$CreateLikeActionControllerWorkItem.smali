.class Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private callback:Lcom/facebook/internal/LikeActionController$CreationCallback;

.field private context:Landroid/content/Context;

.field private objectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V
    .locals 0

    .prologue
    .line 1454
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1455
    iput-object p1, p0, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;->context:Landroid/content/Context;

    .line 1456
    iput-object p2, p0, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectId:Ljava/lang/String;

    .line 1457
    iput-object p3, p0, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;->callback:Lcom/facebook/internal/LikeActionController$CreationCallback;

    .line 1458
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1462
    iget-object v0, p0, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;->objectId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/internal/LikeActionController$CreateLikeActionControllerWorkItem;->callback:Lcom/facebook/internal/LikeActionController$CreationCallback;

    invoke-static {v0, v1, v2}, Lcom/facebook/internal/LikeActionController;->access$10(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/internal/LikeActionController$CreationCallback;)V

    .line 1463
    return-void
.end method
