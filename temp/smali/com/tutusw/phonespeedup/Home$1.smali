.class Lcom/tutusw/phonespeedup/Home$1;
.super Ljava/lang/Object;
.source "Home.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tutusw/phonespeedup/Home;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tutusw/phonespeedup/Home;


# direct methods
.method constructor <init>(Lcom/tutusw/phonespeedup/Home;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tutusw/phonespeedup/Home$1;->this$0:Lcom/tutusw/phonespeedup/Home;

    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "selectedItemView"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "parentView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$1;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$1;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->governors:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/Home;->access$9(Lcom/tutusw/phonespeedup/Home;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$1;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, p0, Lcom/tutusw/phonespeedup/Home$1;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v1, v1, Lcom/tutusw/phonespeedup/Home;->governors:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-static {v0, v1}, Lcom/tutusw/phonespeedup/Home;->access$10(Lcom/tutusw/phonespeedup/Home;Ljava/lang/String;)V

    .line 273
    iget-object v0, p0, Lcom/tutusw/phonespeedup/Home$1;->this$0:Lcom/tutusw/phonespeedup/Home;

    iget-object v0, v0, Lcom/tutusw/phonespeedup/Home;->note:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u9891\u7387\u8c03\u8282\u65b9\u5f0f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/tutusw/phonespeedup/Home$1;->this$0:Lcom/tutusw/phonespeedup/Home;

    invoke-static {v2}, Lcom/tutusw/phonespeedup/Home;->access$2(Lcom/tutusw/phonespeedup/Home;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 279
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method
