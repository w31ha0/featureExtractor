.class Lcom/amazon/device/ads/ModalAdActivityAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;


# direct methods
.method constructor <init>(Lcom/amazon/device/ads/ModalAdActivityAdapter;)V
    .locals 0

    .prologue
    .line 143
    iput-object p1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 147
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$200(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/ViewUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v1}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$100(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/amazon/device/ads/ViewUtils;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Z

    .line 150
    iget-object v0, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$300(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/Position;

    move-result-object v0

    .line 151
    if-nez v0, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-virtual {v0}, Lcom/amazon/device/ads/Position;->getSize()Lcom/amazon/device/ads/Size;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v1}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$400(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/Size;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v1, v0}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$402(Lcom/amazon/device/ads/ModalAdActivityAdapter;Lcom/amazon/device/ads/Size;)Lcom/amazon/device/ads/Size;

    .line 159
    iget-object v1, p0, Lcom/amazon/device/ads/ModalAdActivityAdapter$1;->this$0:Lcom/amazon/device/ads/ModalAdActivityAdapter;

    invoke-static {v1}, Lcom/amazon/device/ads/ModalAdActivityAdapter;->access$300(Lcom/amazon/device/ads/ModalAdActivityAdapter;)Lcom/amazon/device/ads/AdControlAccessor;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraidBridge.sizeChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/device/ads/Size;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    goto :goto_0
.end method
