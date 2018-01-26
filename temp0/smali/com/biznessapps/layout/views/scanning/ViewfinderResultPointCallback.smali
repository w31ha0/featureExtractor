.class final Lcom/biznessapps/layout/views/scanning/ViewfinderResultPointCallback;
.super Ljava/lang/Object;
.source "ViewfinderResultPointCallback.java"

# interfaces
.implements Lcom/google/zxing/ResultPointCallback;


# instance fields
.field private final viewfinderView:Lcom/biznessapps/layout/views/scanning/ViewfinderView;


# direct methods
.method constructor <init>(Lcom/biznessapps/layout/views/scanning/ViewfinderView;)V
    .locals 0
    .param p1, "viewfinderView"    # Lcom/biznessapps/layout/views/scanning/ViewfinderView;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderResultPointCallback;->viewfinderView:Lcom/biznessapps/layout/views/scanning/ViewfinderView;

    .line 24
    return-void
.end method


# virtual methods
.method public foundPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
    .locals 1
    .param p1, "point"    # Lcom/google/zxing/ResultPoint;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/biznessapps/layout/views/scanning/ViewfinderResultPointCallback;->viewfinderView:Lcom/biznessapps/layout/views/scanning/ViewfinderView;

    invoke-virtual {v0, p1}, Lcom/biznessapps/layout/views/scanning/ViewfinderView;->addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V

    .line 32
    return-void
.end method
