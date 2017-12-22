.class Lcom/netflix/android/widgetry/buffet/BuffetBar$2;
.super Ljava/lang/Object;
.source "BuffetBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/buffet/BuffetBar;Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 335
    iput-object p1, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$2;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    iput-object p2, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$2;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 340
    iget-object v0, p0, Lcom/netflix/android/widgetry/buffet/BuffetBar$2;->this$0:Lcom/netflix/android/widgetry/buffet/BuffetBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/netflix/android/widgetry/buffet/BuffetBar;->dispatchDismiss(I)V

    .line 341
    return-void
.end method
