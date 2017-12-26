.class Lcom/facebook/widget/ToolTipPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/ToolTipPopup;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ToolTipPopup;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup$2;->this$0:Lcom/facebook/widget/ToolTipPopup;

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$2;->this$0:Lcom/facebook/widget/ToolTipPopup;

    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup;->dismiss()V

    .line 143
    return-void
.end method
