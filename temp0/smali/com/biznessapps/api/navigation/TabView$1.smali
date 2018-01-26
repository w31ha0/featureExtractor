.class Lcom/biznessapps/api/navigation/TabView$1;
.super Ljava/lang/Object;
.source "TabView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/api/navigation/TabView;->getTabOnClickListener()Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/api/navigation/TabView;


# direct methods
.method constructor <init>(Lcom/biznessapps/api/navigation/TabView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/biznessapps/api/navigation/TabView$1;->this$0:Lcom/biznessapps/api/navigation/TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView$1;->this$0:Lcom/biznessapps/api/navigation/TabView;

    invoke-static {v0}, Lcom/biznessapps/api/navigation/TabView;->access$000(Lcom/biznessapps/api/navigation/TabView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView$1;->this$0:Lcom/biznessapps/api/navigation/TabView;

    invoke-static {v0}, Lcom/biznessapps/api/navigation/TabView;->access$000(Lcom/biznessapps/api/navigation/TabView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 120
    iget-object v0, p0, Lcom/biznessapps/api/navigation/TabView$1;->this$0:Lcom/biznessapps/api/navigation/TabView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/biznessapps/api/navigation/TabView;->setSelected(Z)V

    .line 122
    :cond_0
    return-void
.end method
