.class Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;
.super Ljava/lang/Object;
.source "ExpandListDownLoadReadAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Group_CheckBox_Click"
.end annotation


# instance fields
.field private final groupPosition:I

.field final synthetic this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;


# direct methods
.method constructor <init>(Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;
    .param p2, "groupPosition"    # I

    .prologue
    .line 204
    iput-object p1, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 205
    iput p2, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->groupPosition:I

    .line 206
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 209
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3}, Lcom/kosbrother/tool/Group;->toggle()V

    .line 211
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3}, Lcom/kosbrother/tool/Group;->getChildrenCount()I

    move-result v0

    .line 212
    .local v0, "childrenCount":I
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3}, Lcom/kosbrother/tool/Group;->getChecked()Z

    move-result v1

    .line 213
    .local v1, "groupIsChecked":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 214
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    iget-object v3, v3, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->theGroups:Ljava/util/ArrayList;

    iget v4, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->groupPosition:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/kosbrother/tool/Group;

    invoke-virtual {v3, v2}, Lcom/kosbrother/tool/Group;->getChildItem(I)Lcom/kosbrother/tool/ChildArticle;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/kosbrother/tool/ChildArticle;->setChecked(Z)V

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    :cond_0
    invoke-static {}, Lcom/novel/reader/MyDownloadArticleActivity;->showCallBackAction()V

    .line 219
    iget-object v3, p0, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter$Group_CheckBox_Click;->this$0:Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;

    invoke-virtual {v3}, Lcom/kosbrother/tool/ExpandListDownLoadReadAdapter;->notifyDataSetChanged()V

    .line 221
    return-void
.end method
