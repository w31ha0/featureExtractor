.class Lcom/biznessapps/fragments/single/TipCalculatorFragment$2;
.super Ljava/lang/Object;
.source "TipCalculatorFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/fragments/single/TipCalculatorFragment;->initListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/fragments/single/TipCalculatorFragment;


# direct methods
.method constructor <init>(Lcom/biznessapps/fragments/single/TipCalculatorFragment;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment$2;->this$0:Lcom/biznessapps/fragments/single/TipCalculatorFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/biznessapps/fragments/single/TipCalculatorFragment$2;->this$0:Lcom/biznessapps/fragments/single/TipCalculatorFragment;

    invoke-static {v0}, Lcom/biznessapps/fragments/single/TipCalculatorFragment;->access$100(Lcom/biznessapps/fragments/single/TipCalculatorFragment;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    .line 109
    return-void
.end method
