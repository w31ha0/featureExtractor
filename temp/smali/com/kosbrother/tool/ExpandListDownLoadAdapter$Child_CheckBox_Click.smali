.class Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;
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
    name = "Child_CheckBox_Click"
.end annotation


# instance fields
.field private final childPosition:I

.field private final groupPosition:I

.field final synthetic this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;


# direct methods
.method constructor <init>(Lcom/kosbrother/tool/ExpandListDownLoadAdapter;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/tool/ExpandListDownLoadAdapter;
    .param p2, "groupPosition"    # I
    .param p3, "childPosition"    # I

    .prologue
    .line 189
    iput-object p1, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 190
    iput p2, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->groupPosition:I

    .line 191
    iput p3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->childPosition:I

    .line 192
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 195
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->childPosition:I

    invoke-virtual {v3, v4}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kosbrother/tool/ChildArticle;->toggle()V

    .line 198
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v1

    .line 199
    .local v1, "childrenCount":I
    const/4 v0, 0x1

    .line 200
    .local v0, "childrenAllIsChecked":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 201
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3, v2}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/kosbrother/tool/ChildArticle;->getChecked()Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    const/4 v0, 0x0

    .line 200
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 205
    :cond_1
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3, v0}, Lcom/kosbrother/tool/Group;->setChecked(Z)V

    .line 208
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    invoke-virtual {v3}, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->notifyDataSetChanged()V

    .line 209
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadAdapter$Child_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadAdapter;

    invoke-static {v3}, Lcom/kosbrother/tool/ExpandListDownLoadAdapter;->access$000(Lcom/kosbrother/tool/ExpandListDownLoadAdapter;)V

    .line 210
    return-void
.end method
