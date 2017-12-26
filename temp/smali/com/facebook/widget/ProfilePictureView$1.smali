.class Lcom/facebook/widget/ProfilePictureView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/internal/ImageRequest$Callback;


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/ProfilePictureView;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ProfilePictureView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView$1;->this$0:Lcom/facebook/widget/ProfilePictureView;

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/internal/ImageResponse;)V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView$1;->this$0:Lcom/facebook/widget/ProfilePictureView;

    invoke-static {v0, p1}, Lcom/facebook/widget/ProfilePictureView;->access$0(Lcom/facebook/widget/ProfilePictureView;Lcom/facebook/internal/ImageResponse;)V

    .line 439
    return-void
.end method
