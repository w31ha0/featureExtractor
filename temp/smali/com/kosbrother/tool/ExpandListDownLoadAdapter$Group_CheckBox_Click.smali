.class Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;
.super Ljava/lang/Object;
.source "ExpandListDownLoadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/tool/ExpandListDownLoadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Group_CheckBox_Click"
.end annotation


# instance fields
.field private final groupPosition:I

.field final synthetic this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;


# direct methods
.method constructor <init>(Lcom/kosbrother/tool/ExpandListDownLoadAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/tool/ExpandListDownLoadAdapter;
    .param p2, "groupPosition"    # I

    .prologue
    .line 166
    iput-object p1, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput p2, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->groupPosition:I

    .line 168
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3}, Lcom/kosbrother/tool/Group;->toggle()V

    .line 174
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v0

    .line 175
    .local v0, "childrenCount":I
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3}, Lcom/kosbrother/tool/Group;->getChecked()Z

    move-result v1

    .line 176
    .local v1, "groupIsChecked":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 177
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3, v2}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kosbrother/tool/ChildArticle;->setChecked(Z)V

    .line 176
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    :cond_0
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    invoke-virtual {v3}, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->notifyDataSetChanged()V

    .line 181
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    invoke-static {v3}, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->access$000(Lcom/kosbrother/tool/ExpandListDownLoadAdapter;)V

    .line 182
    return-void
.end method
