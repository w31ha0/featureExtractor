.class Lcom/biznessapps/layout/adapters/TwitterTagsAdapter$1;
.super Ljava/lang/Object;
.source "TwitterTagsAdapter.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;

.field final synthetic val$item:Lcom/biznessapps/model/CommonListEntity;


# direct methods
.method constructor <init>(Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;Lcom/biznessapps/model/CommonListEntity;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter$1;->this$0:Lcom/biznessapps/layout/adapters/TwitterTagsAdapter;

    iput-object p2, p0, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter$1;->val$item:Lcom/biznessapps/model/CommonListEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .param p1, "arg0"    # Landroid/widget/CompoundButton;
    .param p2, "arg1"    # Z

    .prologue
    .line 38
    iget-object v0, p0, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter$1;->val$item:Lcom/biznessapps/model/CommonListEntity;

    invoke-virtual {v0, p2}, Lcom/biznessapps/model/CommonListEntity;->setSelected(Z)V

    .line 39
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!!!!!!!!!!!!!! changed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/biznessapps/layout/adapters/TwitterTagsAdapter$1;->val$item:Lcom/biznessapps/model/CommonListEntity;

    invoke-virtual {v2}, Lcom/biznessapps/model/CommonListEntity;->isSelected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 40
    return-void
.end method
